-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 07, 2023 at 03:41 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.0.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `idxesdsd_cal_v2`
--
CREATE DATABASE IF NOT EXISTS `idxesdsd_cal_v2` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `idxesdsd_cal_v2`;

-- --------------------------------------------------------

--
-- Table structure for table `login_master`
--

CREATE TABLE `login_master` (
  `id` int(11) NOT NULL,
  `employee_code` int(10) NOT NULL,
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `username` varchar(20) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `department` varchar(10) NOT NULL,
  `designation` varchar(50) NOT NULL,
  `manager_code` int(10) NOT NULL,
  `user_role` int(11) NOT NULL,
  `crm_user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `login_master`
--

INSERT INTO `login_master` (`id`, `employee_code`, `first_name`, `last_name`, `username`, `email`, `password`, `department`, `designation`, `manager_code`, `user_role`, `crm_user_id`) VALUES
(1, 9999, 'ADMIN', '', 'admin', 'admin@esds.co.in', '4de93544234adffbb681ed60ffcfb941', 'Admin', 'ADMIN', 0, 1, 1),
(2, 2950, 'Akash', 'Shewale', 'Akash.shewale', 'Akash.Shewale@esds.co.in', '4533dcab532406ee2a900b80ea8da8b4', 'Pre-Sales', 'Jr. Solution Architect', 794, 2, 412),
(3, 3086, 'Akshay', 'Dayma', 'Akshay.Dayma', 'Akshay.Dayma@esds.co.in', '', 'Pre-Sales', 'Jr. Solution Architect', 2334, 2, 452),
(4, 1402, 'Akshay', 'Karandikar', 'Akshay.karandikar', 'akshay.karandikar@esds.co.in', '', 'Pre-Sales', 'Solution Archcitect', 794, 2, 0),
(5, 2176, 'Akshay', 'More', 'akshay.more', 'akshay.more@esds.co.in', '', 'Pre-Sales', 'Solution Archcitect', 794, 2, 282),
(6, 3055, 'Alok', 'Kumar', 'Alok.kumar', 'Alok.Kumar@esds.co.in', '', 'Pre-Sales', 'Jr. Solution Architect', 2941, 2, 413),
(7, 2158, 'Amit', 'Katewa', 'amit.katewa', 'amit.katewa@esds.co.in', '', 'Pre-Sales', 'Solution Archcitect', 821, 2, 274),
(8, 2677, 'Ayushi', 'Malviya', 'Ayushi.Malviya', 'ayushi.malviya@esds.co.in', '', 'Pre-Sales', 'Senior Solution Architect', 2334, 2, 365),
(9, 2175, 'Dhanashri', 'Vispute', 'dhanashri.vispute', 'dhanashri.vispute@esds.co.in', '25f9e794323b453885f5181f1b624d0b', 'Pre-Sales', 'Solution Archcitect', 821, 2, 288),
(10, 2941, 'Dhermender', 'Singh', 'Dhermender.singh', 'Dhermender.Singh@esds.co.in', '', 'Pre-Sales', 'Lead Solution Architect', 211, 2, 411),
(11, 2838, 'Ganesh', 'Aher', 'ganesh.aher', 'Ganesh.A@esds.co.in', '00861f3097d40f276cd7083a83bb78b9', 'Pre-Sales', 'Jr. Solution Architect', 675, 2, 287),
(12, 821, 'Gaurav', 'Godse', 'gaurav.godse', 'gaurav.godse@esds.co.in', 'b95c15297bf2dadeedd66c4222d53f63', 'Pre-Sales', 'Lead Solution Architect', 211, 2, 175),
(13, 2948, 'Harshal', 'Vispute', 'Harshal.vispute', 'Harshal.Vispute@esds.co.in', '', 'Pre-Sales', 'Jr. Solution Architect', 794, 2, 414),
(14, 794, 'Hemant', 'Bhagwat', 'hemant.bhagwat', 'Hemant.Bhagwat@esds.co.in', '', 'Pre-Sales', 'Lead Solution Architect', 211, 2, 168),
(15, 1382, 'Kanchan', 'Kulkarni', 'kanchan.kulkarni', 'kanchan.kulkarni@esds.co.in', '', 'Pre-Sales', 'Senior Executive - Bid Desk', 1868, 2, 178),
(16, 2665, 'Kavish', 'Singh', 'kavish.singh', 'kavish.singh@esds.co.in', '', 'Pre-Sales', 'Bid Coordinator', 1868, 2, 370),
(17, 2820, 'Kavya', 'Jatteppanavar', 'Kavya.jatteppanavar', 'Kavya.Jatteppanavar@esds.co.in', '', 'Pre-Sales', 'Jr. Solution Architect', 2334, 2, 415),
(18, 3044, 'Kunal', 'Godse', 'Kunal.godse', 'Kunal.Godse@esds.co.in', '', 'Pre-Sales', 'Jr. Solution Architect', 211, 2, 416),
(19, 3111, 'Milind', 'Barhate', 'milind.barhate', 'Milind.Barhate@esds.co.in', '2b1b60a735685696bb2ae8b77165bfa1', 'Pre-Sales', 'Senior Executive - Bid Management', 1868, 2, 446),
(20, 1868, 'Neelesh', 'Kumar', 'neelesh.kumar', 'neelesh.kumar@esds.co.in', '', 'Pre-Sales', 'Senior Bid Manager', 211, 2, 183),
(21, 2236, 'Niketan', 'Borse', 'niketan.borse', 'niketan.borse@esds.co.in', '', 'Pre-Sales', 'Executive - Bid Desk', 1868, 2, 273),
(22, 5430, 'Nilesh', 'Kaklij', 'Nilesh.kaklij', 'Nilesh.Kaklij@esds.co.in', 'b5fa8472248a66e937cc4cf2806e01a2', 'Pre-Sales', 'Trainee', 675, 2, 395),
(23, 2964, 'Pooja', 'Kale', 'Pooja.kale', 'Pooja.Kale@esds.co.in', '', 'Pre-Sales', 'Jr. Solution Architect', 675, 2, 417),
(24, 3043, 'Prajakta', 'More', 'Prajakta.more', 'Prajakta.More@esds.co.in', '562cee9da868d406f7dc17b54dc1a610', 'Pre-Sales', 'Jr. Solution Architect', 211, 2, 418),
(25, 3063, 'Prajakta', 'Padwal', 'Prajakta.padwal', 'Prajakta.Padwal@esds.co.in', '', 'Pre-Sales', 'Jr. Solution Architect', 2334, 2, 419),
(26, 2199, 'Prashant', 'Nimbekar', 'prashant.nimbekar', 'prashant.nimbekar@esds.co.in', '7fe4396c785b83cb84d1cd78b7a00434', 'Pre-Sales', 'Solution Archcitect', 821, 2, 285),
(27, 3094, 'Prathamesh', 'Chavan', 'Prathamesh.chavan', 'Prathamesh.Chavan@esds.co.in', '2c9341ca4cf3d87b9e4eb905d6a3ec45', 'Pre-Sales', 'Jr. Solution Architect', 675, 2, 420),
(28, 2968, 'Pratiksha', 'Paithankar', 'Pratiksha.paithankar', 'Pratiksha.Paithankar@esds.co.in', 'a01ebe5b4d8e70ee69447b3a13ffd904', 'Pre-Sales', 'Jr. Solution Architect', 675, 2, 421),
(29, 1558, 'Priyanka', 'Kshirsagar', 'Priyanka.kshirsagar', 'Priyanka.kshirsagar@esds.co.in', '', 'Pre-Sales', 'Senior Executive - Bid Management', 1868, 2, 186),
(30, 2195, 'Priyanka', 'Malunjkar', 'priyanka.malunjkar', 'priyanka.malunjkar@esds.co.in', '', 'Pre-Sales', 'Solution Archcitect', 2334, 2, 289),
(31, 2863, 'Ravikiran', 'Bharadwaj', 'Ravikiran.bharadwaj', 'Ravikiran.Bharadwaj@esds.co.in', '', 'Pre-Sales', 'Solution Archcitect', 675, 2, 422),
(32, 2739, 'Ritika', 'Taneja', 'Ritika.Taneja', 'Ritika.Taneja@esds.co.in', '', 'Pre-Sales', 'Senior Executive - Bid Management', 1868, 2, 375),
(33, 2987, 'Rishan', 'Shaikh', 'Rishan.shaikh', 'Rishan.Shaikh@esds.co.in', '4ef4d3b296aab9434da77e423cff3b8f', 'Pre-Sales', 'Solution Archcitect', 211, 2, 423),
(34, 2821, 'Sagar', 'Kirale', 'Sagar.kirale', 'Sagar.Kirale@esds.co.in', '', 'Pre-Sales', 'Jr. Solution Architect', 2334, 2, 425),
(35, 2822, 'Sai', 'Dhanush', 'Sai.dhanush', 'S.Dhanush@esds.co.in', '', 'Pre-Sales', 'Jr. Solution Architect', 675, 2, 424),
(36, 3121, 'Sairaj', 'Magar', 'sairaj.magar', 'Sairaj.Magar@esds.co.in', '', 'Pre-Sales', 'Solution Archcitect', 211, 2, 426),
(37, 2398, 'Sameer', 'Redij', 'Sameer.Redij', 'sameer@esds.co.in', '', 'Pre-Sales', 'Chief Business Officer', 9999, 1, 314),
(38, 2334, 'Sandeep', 'Mathure', 'sandeep.mathure', 'sandeep.mathure@esds.co.in', '', 'Pre-Sales', 'Lead Solution Architect', 211, 2, 311),
(39, 1167, 'Shahrukh', 'Shaikh', 'shahrukh.shaikh', 'Shahrukh@esds.co.in', 'd8578edf8458ce06fbc5bb76a58c5ca4', 'Pre-Sales', 'Solution Archcitect', 675, 2, 193),
(40, 2979, 'Shubham', 'Nagare', 'Shubham.nagare', 'Shubham.Nagare@esds.co.in', '', 'Pre-Sales', 'Jr. Solution Architect', 675, 2, 427),
(41, 2823, 'Suhas', 'Gowda', 'Suhas.gowda', 'Suhas.Gowda@esds.co.in', '', 'Pre-Sales', 'Jr. Solution Architect', 2334, 2, 431),
(42, 2194, 'Tushar', 'Shinde', 'tushar.shinde', 'tushar.shinde@esds.co.in', '', 'Pre-Sales', 'Solution Archcitect', 2334, 2, 270),
(43, 2985, 'Vishal', 'Pawale', 'Vishal.pawale', 'Vishal.Pawale@esds.co.in', '4d1ede6356c1d9d00bccb82aab515b64', 'Pre-Sales', 'Jr. Solution Architect', 675, 2, 430),
(44, 3093, 'Vishal V', 'Patra', 'VishalV.Patra', 'Vishal.Patra@esds.co.in', 'aa9bc13a883166b390dba7aa01300c51', 'Pre-Sales', 'Jr. Solution Architect', 675, 2, 440),
(45, 211, 'Vivek', 'Kharpude', 'vivek.kharpude', 'vivek.k@esds.co.in', '', 'Pre-Sales', 'AVP', 2398, 1, 165),
(46, 675, 'Yogesh', 'Dusane', 'yogesh.dusane', 'yogesh.dusane@esds.co.in', 'd00f5d5217896fb7fd601412cb890830', 'Pre-Sales', 'Lead Solution Architect', 211, 2, 202),
(47, 1238, 'Aditya', 'Alok', 'Aditya.Alok', 'Aditya.Alok@esds.co.in', '', 'Sales', 'Senior Business Manager', 2819, 3, 113),
(48, 2075, 'Aftab', 'Shah', 'Aftab.Shah', 'Aftab.Shah@esds.co.in', '', 'Sales', 'Senior Executive - Digital Business', 2069, 3, 206),
(49, 1459, 'Aftab', 'Memon', 'Aftab.Memon', 'Aftab.Memon@esds.co.in', '', 'Sales', 'Senior Business Manager', 679, 3, 142),
(50, 3159, 'Aman', 'Thakkar', 'Aman.Thakkar', 'Aman.Thakkar@esds.co.in', '', 'Sales', 'Senior Executive - Digital Business', 2308, 3, 451),
(51, 882, 'Amandeep', 'Sidhu', 'Amandeep.Sidhu', 'Amandeep.Sidhu@esds.co.in', '', 'Sales', 'Business Manager', 295, 3, 122),
(52, 2050, 'Amit', 'Sisodiya', 'Amit.Sisodiya', 'Amit.Sisodiya@esds.co.in', '', 'Sales', 'Head-Digital,Business', 2398, 3, 157),
(53, 3215, 'Amit', 'Relkar', '', 'Amit.Relkar@esds.co.in', '', 'Sales', 'Business Development Executive', 424, 3, 0),
(54, 2883, 'Amod', 'Bidnurkar', 'amod.bidnurkar', 'amod.bidnurkar@esds.co.in', '', 'Sales', 'Business Development Manager', 424, 3, 0),
(55, 2660, 'Aniket', 'Deore', 'Aniket.Deore', 'Aniket.Deore@esds.co.in', '', 'Sales', 'Business Coordinator', 70, 3, 364),
(56, 2143, 'Anowarul', 'Islam', 'Anowarul.Islam', 'Anowarul.Islam@esds.co.in', '', 'Sales', 'Regional Director-North East Government & PSU Busi', 1634, 3, 237),
(57, 3001, 'Ashmeet', 'Aurora', '', 'Ashmeet.Aurora@esds.co.in', '', 'Sales', 'Digital Business Executive', 2076, 3, 0),
(58, 2055, 'Bhushan', 'Ahirrao', 'Bhushan.Ahirrao', 'Bhushan.Ahirrao@esds.co.in', '', 'Sales', 'Business Coordinator', 424, 3, 258),
(59, 70, 'Chetan', 'Chandole', 'Chetan.Chandole', 'Chetan.Chandole@esds.co.in', '', 'Sales', 'Regional Director-West Government & PSU Business', 1634, 3, 99),
(60, 1634, 'Deepak', 'Anand', 'Deepak.Anand', 'Deepak.Anand@esds.co.in', '', 'Sales', 'Vice President- Government & PSU Business', 2398, 3, 85),
(61, 2719, 'Dhanaswini', 'Jadhavrao', '', 'Dhanaswini.Jadhavrao@esds.co.in', '', 'Sales', 'Business Coordinator', 424, 3, 0),
(62, 490, 'Husain', 'Telwala', 'Husain.Telwala', 'Husain.Telwala@esds.co.in', '', 'Sales', 'Regional Director-West Government & PSU Business', 1634, 3, 110),
(63, 2069, 'Ishaque', 'Shaikh', 'Ishaque.Shaikh', 'Ishaque.Shaikh@esds.co.in', '', 'Sales', 'Busines Manager - Campaign & Database', 2050, 3, 262),
(64, 2826, 'Jitendra', 'Razdan', 'Jitendra.Razdan', 'Jitendra.Razdan@esds.co.in', '', 'Sales', 'Senior Business Manager', 424, 3, 394),
(65, 3233, 'Kanika', 'Aggarwal', '', 'Kanika.Aggarwal@esds.co.in', '', 'Sales', 'Business Development Executive', 295, 3, 0),
(66, 3100, 'Karan', 'Jobanputra', 'Karan.Jobanputra', 'Karan.Jobanputra@esds.co.in', '', 'Sales', 'Sales Executive', 679, 3, 437),
(67, 2905, 'Karan', 'Thakur', 'Karan.Thakur', 'Karan.Thakur@esds.co.in', '', 'Sales', 'Business Development Executive', 424, 3, 449),
(68, 2727, 'Kedar', 'Kumbhar', 'Kedar.kumbhar', 'Kedar.kumbhar@esds.co.in', '', 'Sales', 'Senior Executive - Digital Business', 2076, 3, 0),
(69, 2637, 'Komal', 'Bramhane', 'Komal.Bramhane', 'Komal.Bramhane@esds.co.in', '', 'Sales', 'Executive - Digital Business', 2076, 3, 357),
(70, 679, 'Lokesh', 'Sharma', 'Lokesh.Sharma', 'Lokesh.Sharma@esds.co.in', '', 'Sales', 'Regional Director-West Government & PSU Business', 1634, 3, 100),
(71, 379, 'Mahavir', 'Goel', 'Mahavir.Goel', 'Mahavir.Goel@esds.co.in', '', 'Sales', 'Regional Director-North Enterprise Business', 2819, 3, 96),
(72, 2270, 'Misha', 'Maikhuri', 'Misha.Maikhuri', 'Misha.Maikhuri@esds.co.in', '', 'Sales', 'Assistant Manager - Digital Business', 2308, 3, 251),
(73, 2453, 'Mitesh', 'Bharadwaj', 'Mitesh.Bharadwaj', 'Mitesh.Bharadwaj@esds.co.in', '', 'Sales', 'Business Manager', 424, 3, 327),
(74, 3247, 'Naman', 'Garg', '', 'Naman.Garg@esds.co.in', '', 'Sales', 'Business Development Executive', 295, 3, 0),
(75, 3084, 'Nehal', 'Gandhi', 'Nehal.Gandhi', 'Nehal.Gandhi@esds.co.in', '', 'Sales', 'Regional Director- West Enterprise Business', 2819, 3, 436),
(76, 2433, 'Netaji', 'Bhople', 'Netaji.Bhople', 'Netaji.Bhople@esds.co.in', '', 'Sales', 'Senior Executive - MIS', 2069, 3, 324),
(77, 3171, 'Nikita', 'D\'sa', '', 'Nikita.more@esds.co.in', '', 'Sales', 'Senior Executive - Digital Business', 2076, 3, 0),
(78, 2568, 'Nisha', 'Wadale', 'Nisha.Wadale', 'Nisha.Wadale@esds.co.in', '', 'Sales', 'Business Analyst -Business Data', 2398, 3, 378),
(79, 754, 'Nitin', 'Kubitkar', 'Nitin.Kubitkar', 'Nitin.Kubitkar@esds.co.in', '', 'Sales', 'Relationship Manager', 70, 3, 132),
(80, 2068, 'Noorulla', 'Haq', 'Noorulla.Haq', 'Noorulla.Haq@esds.co.in', '', 'Sales', 'Business Manager - Digital Business', 2050, 3, 213),
(81, 2308, 'Pallavi', 'Mishra', 'Pallavi.Mishra', 'Pallavi.Mishra@esds.co.in', '', 'Sales', 'Business Manager - Digital Business', 2050, 3, 292),
(82, 2542, 'Pankaj', 'Beniwal', 'Pankaj.Beniwal', 'Pankaj.Beniwal@esds.co.in', '', 'Sales', 'Executive - Digital Business', 2069, 3, 342),
(83, 2848, 'Pooja', 'Bhogekar', 'Pooja.Bhogekar', 'Pooja.Bhogekar@esds.co.in', '', 'Sales', 'Digital Business Executive', 2308, 3, 405),
(84, 1427, 'Pooja', 'Singh', 'Pooja.Singh', 'Pooja.Singh@esds.co.in', '', 'Sales', 'Business Development Executive', 490, 3, 254),
(85, 3072, 'Pooja', 'Tiwari', 'Pooja.Tiwari', 'Pooja.Tiwari@esds.co.in', '', 'Sales', 'Business Coordinator', 424, 3, 447),
(86, 1694, 'Pramit', 'Gandhi', 'Pramit.Gandhi', 'Pramit.Gandhi@esds.co.in', '', 'Sales', 'Senior Business Manager', 679, 3, 140),
(87, 3221, 'Pravin', 'Deshpande', '', 'Pravin.Deshpande@esds.co.in', '', 'Sales', 'Senior Sales Manager', 424, 3, 0),
(88, 2889, 'Rajat', 'Basu', 'Rajat.Basu', 'Rajat.Basu@esds.co.in', '', 'Sales', 'Regional Business Manager-East Enterprise', 2819, 3, 404),
(89, 2427, 'Rakesh', 'Chandgude', '', 'Rakesh.Chandgude@esds.co.in', '', 'Sales', 'Business Manager', 490, 3, 0),
(90, 707, 'Ravi', 'Shandilya', 'Ravi.Shandilya', 'Ravi.Shandilya@esds.co.in', '', 'Sales', 'Business Manager', 295, 3, 135),
(91, 2543, 'Rishi', 'Vijan', 'Rishi.Vijan', 'Rishi.Vijan@esds.co.in', '', 'Sales', 'Senior Executive - Digital Business', 2308, 3, 343),
(92, 1941, 'Ritu', 'Gupta', 'Ritu.Gupta', 'Ritu.Gupta@esds.co.in', '', 'Sales', 'Business Manager - Digital Business', 2050, 3, 261),
(93, 2586, 'Roshni', 'Maind', 'Roshni.Maind', 'Roshni.Maind@esds.co.in', '', 'Sales', 'Junior Business Coordinator', 424, 3, 448),
(94, 3170, 'S.N', 'Sharma', '', 'snsharma@esds.co.in', '', 'Sales', 'Assistant General Manager', 424, 3, 0),
(95, 295, 'Sanchit', 'Taraiya', 'sanchit.t', 'sanchit@esds.co.in', '', 'Sales', 'Regional Director-North Government & PSU Business', 1634, 3, 0),
(96, 5471, 'Sanchita', 'Chalke', '', 'Sanchita.Chalke@esds.co.in', '', 'Sales', 'Trainee', 2069, 3, 0),
(97, 2819, 'Sandeep', 'Khanna', 'Sandeep.Khanna', 'Sandeep.Khanna@esds.co.in', '', 'Sales', 'Vice President- Enterprise Business', 2398, 3, 434),
(98, 424, 'Sandesh', 'Sonar', 'Sandesh.Sonar', 'Sandesh.Sonar@esds.co.in', '', 'Sales', 'Head-Coopeeratives Agriculture&Healthcare', 2398, 3, 89),
(99, 3234, 'Sangeet', 'Kadiyan', '', 'Sangeet.Kadiyan@esds.co.in', '', 'Sales', 'General Manager', 2819, 3, 0),
(100, 1939, 'Satrujeet', 'Mohanty', 'Satrujeet.Mohanty', 'Satrujeet.Mohanty@esds.co.in', '', 'Sales', 'Business Manager', 295, 3, 115),
(101, 3205, 'Saurav', 'Chakravorty', 'Saurav.Chakravorty', 'Saurav.Chakravorty@esds.co.in', '', 'Sales', 'Senior Business Manager', 2398, 3, 233),
(102, 1281, 'Sayali', 'Jadhav', 'Sayli.Jadhav', 'Sayli.Jadhav@esds.co.in', '', 'Sales', 'Senior Analyst-Business Data', 2398, 3, 0),
(103, 2210, 'Shoaib', 'Shaikh', 'Shoaib.Shaikh', 'Shoaib.Shaikh@esds.co.in', '', 'Sales', 'Assistant Manager - Digital Business', 2076, 3, 240),
(104, 2420, 'Shreyas', 'Shetye', 'Shreyas.Shetye', 'Shreyas.Shetye@esds.co.in', '', 'Sales', 'Business Manager', 490, 3, 326),
(105, 3216, 'Shruti', 'Sharma', '', 'Shruti.Sharma@esds.co.in', '', 'Sales', 'Sr. Business Development Executive', 490, 3, 0),
(106, 2394, 'Simran', 'Sawant', 'Simran.Sawant', 'Simran.Sawant@esds.co.in', '', 'Sales', 'Executive - Digital Business', 2076, 3, 317),
(107, 777, 'Simran', 'Kaur', 'Simran.Kaur', 'Simran.Kaur@esds.co.in', '', 'Sales', 'Digital Business Manager', 295, 3, 207),
(108, 2452, 'Sonali', 'Khelukar', 'Sonali.Khelukar', 'Sonali.Khelukar@esds.co.in', '', 'Sales', 'Business Coordinator', 679, 3, 329),
(109, 3238, 'Sudesh', 'Saxena', '', 'Sudesh.Saxena@esds.co.in', '', 'Sales', 'Assistant General Manager', 1634, 3, 0),
(110, 3149, 'Sujay', 'Sen', 'Sujay.Sen', 'Sujay.Sen@esds.co.in', '', 'Sales', 'Deputy General Manager', 2819, 3, 450),
(111, 2688, 'Sybil', 'Farnandes', 'Sybil.Fernandes', 'Sybil.Fernandes@esds.co.in', '', 'Sales', 'Executive - Digital Business', 2069, 3, 0),
(112, 1922, 'Tejas', 'Joshi', 'Tejas.Joshi', 'Tejas.Joshi@esds.co.in', '', 'Sales', 'Sales Manager', 70, 3, 117),
(113, 2038, 'Utpal', 'Saha', 'Utpal.Saha', 'Utpal.Saha@esds.co.in', '', 'Sales', 'Regional Director-East Government & PSU Business', 1634, 3, 119),
(114, 20026, 'Virender', 'Verma', '', 'Virender.Verma@esds.co.in', '', 'Sales', 'Assistant General Manager', 2819, 3, 0),
(115, 2076, 'Yashwant', 'Malkar', 'Yashwant.Malkar', 'Yashwant.Malkar@esds.co.in', '', 'Sales', 'Business Manager - Digital Business', 2050, 3, 162),
(116, 11, 'Demo', 'Sales1', 'demo.sales1', 'demo@esds.co.in', 'e0ed18dc67b295f9518eaead0edcbfff', 'sales', 'sales', 9999, 3, 454),
(117, 12, 'Demo', 'Sales2', 'demo.sales2', 'demo@esds.co.in', 'de34ca02307b653e146eb3798e4d5713', 'sales', 'sales', 9999, 3, 454),
(118, 13, 'Demo', 'Sales3', 'demo.sales3', 'demo@esds.co.in', '6bbbd8ef0467357886c90bd4c8020f5e', 'sales', 'sales', 9999, 3, 454),
(119, 14, 'Demo', 'Sales4', 'demo.sales4', 'demo@esds.co.in', 'e34f80ca469ea6fec995f3cd8f5650fa', 'sales', 'sales', 9999, 3, 454);

-- --------------------------------------------------------

--
-- Table structure for table `permission_master`
--

CREATE TABLE `permission_master` (
  `id` int(11) NOT NULL,
  `permission` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `permission_master`
--

INSERT INTO `permission_master` (`id`, `permission`) VALUES
(1, 'Export To Excel'),
(2, 'Push To CRM'),
(3, 'Discounting'),
(4, 'Create Quot'),
(5, 'Edit quot'),
(6, 'Forget Password'),
(7, 'Create Rate Card'),
(8, 'Edit Rate Card'),
(9, 'View Rate Card');

-- --------------------------------------------------------

--
-- Table structure for table `price_list`
--

CREATE TABLE `price_list` (
  `id` int(11) NOT NULL,
  `sku_code` varchar(16) CHARACTER SET utf8 DEFAULT NULL,
  `primary_category` varchar(8) CHARACTER SET utf8 DEFAULT NULL,
  `sec_category` varchar(11) CHARACTER SET utf8 DEFAULT NULL,
  `prod_int` varchar(12) CHARACTER SET utf8 DEFAULT NULL,
  `product` text CHARACTER SET utf8 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `price_list`
--

INSERT INTO `price_list` (`id`, `sku_code`, `primary_category`, `sec_category`, `prod_int`, `product`) VALUES
(0, 'ICFWVFIFFN000000', 'sec', 'ifw', 'ifw_fortinet', 'Fortinet- Internal vFirewall : 1GBPS'),
(2, 'STBS000000000000', 'storage', 'backup', 'backup_gb', 'Backup Storage GB'),
(3, 'NULL', 'software', 'backup_soft', 'veeam', 'Veeam'),
(4, 'EKCB000000000000', 'software', 'backup_soft', 'carbonite', 'Carbonite'),
(5, 'NULL', 'software', 'backup_soft', 'commvault', 'Commvault'),
(6, 'SOMQEE0000000000', 'software', 'db', 'ms_ent', 'MS SQL Enterprise'),
(7, 'SOMQWD0000000000', 'software', 'db', 'ms_web', 'MS SQL WEB'),
(8, 'SOMQSE0000000000', 'software', 'db', 'ms_std', 'MS SQL Standard'),
(9, 'SOMYCE0000000000', 'software', 'db', 'my_com', 'MY SQL Community'),
(10, 'SOMYSE0000000000', 'software', 'db', 'my_std', 'MY SQL Standard'),
(11, 'SOMYEE0000000000', 'software', 'db', 'my_ent', 'MY SQL Enterprise'),
(12, 'SOPSEE0000000000', 'software', 'db', 'post_ent', 'Postgre SQL Enterprise'),
(13, 'SOPSCE0000000000', 'software', 'db', 'post_com', 'Postgre SQL Community'),
(14, 'SOOASE0000000000', 'software', 'db', 'orc_std', 'Oracle Database Standard'),
(15, 'SOOAEE0000000000', 'software', 'db', 'orc_ent', 'Oracle Database Enterprise'),
(16, 'SOMGCE0000000000', 'software', 'db', 'mong_com', 'Mongo DB Community'),
(19, 'SOMB000000000000', 'software', 'db', 'mar_com', 'Maria DB Community'),
(20, 'ESDIIDAI00000000', 'sec', 'ddos', 'ddos_1gbps', 'DDoS Mitigation - 1Gbps'),
(21, 'ESDIIDAI00000000', 'sec', 'ddos', 'ddos_512mbp', 'DDoS Mitigation - 512Mbps'),
(22, 'ICFWVFEFFN000000', 'sec', 'efw', 'efw_fortinet', 'Fortinet- External vFirewall : 1GBPS'),
(31, 'INLBVLHP00000000', 'net', 'lb', 'lb_proxy', 'Load Balancer : HA Proxy'),
(32, 'NULL', 'net', 'link', 'mpls_link', 'MPLS Link'),
(33, 'CNPP000000000000', 'net', 'link', 'p2p_link', 'P2P Link'),
(34, 'MSOYLISU00000000', 'mng', 'os_mng', 'suse_os_mg', 'SUSE - OSMng- Managed Services'),
(35, 'MSOYLIRE00000000', 'mng', 'os_mng', 'rhel_os_mg', 'RHEL - OSMng- Managed Services'),
(36, 'MSOYLIUB00000000', 'mng', 'os_mng', 'ubuntu_os_mg', 'UBUNUTU- OSMng - Managed Services'),
(37, 'MSOYLINU00000000', 'mng', 'os_mng', 'centos_os_mg', 'CENTOS - OSMng - Managed Services'),
(38, 'MSOYWI0000000000', 'mng', 'os_mng', 'win_os_mg', 'Windows - OSMng - Managed Services'),
(39, 'MSDMMB0000000000', 'mng', 'db_mng', 'mar_db_mg', 'MariaDB Database Managed Services (Up to 100GB )'),
(40, 'MSDMSD0000000000', 'mng', 'db_mng', 'syb_db_mg', 'Sybase Database Managed Services (Up to 100 GB)'),
(41, 'MSDMMG0000000000', 'mng', 'db_mng', 'mong_db_mg', 'MongoDB Database Managed Services (Up to 100 GB)'),
(42, 'MSDMPS0000000000', 'mng', 'db_mng', 'pg_db_mg', 'PostgresSQL Database Managed Services (Up to 100 GB)'),
(43, 'MSDMOA0000000000', 'mng', 'db_mng', 'orc_db_mg', 'Oracle Database Managed Services (Up to 100 GB)'),
(44, 'MSDMMY0000000000', 'mng', 'db_mng', 'my_db_mg', 'MYSQL Database Managed Services (Up to 100 GB)'),
(45, 'MSDMMQ0000000000', 'mng', 'db_mng', 'ms_db_mg', 'MSSQL Database Managed Services (Up to 100 GB)'),
(46, 'MSTN000000000000', 'mng', 'str_mng', 'st_mg', 'Storage Management'),
(47, 'MSBM000000000000', 'mng', 'str_mng', 'back_mg', 'Backup Management'),
(48, 'MSNMLMVI00000000', 'mng', 'net_mng', 'lb_mg', 'Load Balancer Management'),
(49, 'MSEGFWVN00000000', 'mng', 'sec_mng', 'fv_mg', 'Firewall Management'),
(50, 'MSEGEVWB00000000', 'mng', 'sec_mng', 'waf_mg', 'Web Application Firewall Management'),
(51, 'SOCMEO0000000000', 'mng', 'mng', 'emagic', 'eMagic'),
(52, 'MSOGDD0000000000', 'mng', 'dr_mng', 'dr_drill', 'DR Drill'),
(53, 'MSOGRA0000000000', 'mng', 'dr_mng', 'rep_mgmt', 'Replication Link Management'),
(54, 'INIPPII600000000', 'net', 'net', 'ip', 'IP Address'),
(55, 'CNIBSB0000000000', 'net', 'band', 'speed_band', 'Internet Bandwidth : Speed Based'),
(56, 'CNNR000000000000', 'net', 'net', 'ccpt', 'Cross Connect and Port Temination'),
(57, 'STTL000000000000', 'storage', 'off_back', 'tl', 'Tape Library'),
(58, 'NULL', 'storage', 'off_back', 'tc', 'Tape Cartridge'),
(59, 'STFV000000000000', 'storage', 'off_back', 'fc', 'Fireproof Cabinate'),
(60, 'SOWSDE0000000000', 'software', 'os', 'win_dc', 'Windows Datacenter Edition'),
(61, 'SOWSSE0000000000', 'software', 'os', 'win_se', 'Windows Standard Edition'),
(62, 'SOLORE0000000000', 'software', 'os', 'rhel', 'Linux : RHEL'),
(63, 'SOLOUB0000000000', 'software', 'os', 'ubuntu', 'Linux : UBUNTU'),
(64, 'SOLONC0000000000', 'software', 'os', 'centos', 'Linux : CENTOS'),
(65, 'SOLOSU0000000000', 'software', 'os', 'suse', 'Linux : SUSE'),
(66, 'ESAVAHSM00000000', 'sec', 'av', 'sym_av', 'Symentech : AntiVirus + HIPS'),
(67, 'ESAVAHMA00000000', 'sec', 'av', 'mc_av', 'McAfee : AntiVirus + HIPS'),
(68, 'ESAVAHTM00000000', 'sec', 'av', 'tm_av', 'Trend Micro : AntiVirus + HIPS'),
(69, 'ICWAVWEV00000000', 'sec', 'waf', 'enlight_waf', 'eNlight : Web App Firewall'),
(70, 'NULL', 'sec', 'sec', 'tfa', 'Two Factor Authentication'),
(71, 'ICSIOSKA00000000', 'sec', 'siem', 'khika_siem', 'KHIKA SIEM'),
(72, 'ICSIOSLR00000000', 'sec', 'siem', 'log_siem', 'LogRythm SIEM'),
(73, 'ICSICS0000000000', 'sec', 'siem', 'seceon_siem', 'SECEON SIEM'),
(74, 'ESPDMEIR00000000', 'sec', 'sec', 'pim', 'iRaje : PIM'),
(75, 'ESPDMEAR00000000', 'sec', 'sec', 'pim', 'ARCON : PIM'),
(76, 'ESVACVSQ00000000', 'sec', 'vapt', 'cert_vapt', 'CERTIN- VAPT Audit'),
(77, 'NULL', 'sec', 'hsm', 'dedicate_hsm', 'Dedicated HSM'),
(78, 'NULL', 'sec', 'sec', 'iam', 'IAM'),
(79, 'SODRCR0000000000', 'software', 'soft', 'drm_tool', 'DRM Tool'),
(80, 'SOGSAL0000000000', 'sec', 'ssl_cert', 'alpha_ssl', 'Alpha SSL Certificate'),
(81, 'SOGSDS0000000000', 'sec', 'ssl_cert', 'domain_ssl', 'Domain SSL Certificate'),
(82, 'SOGSOS0000000000', 'sec', 'ssl_cert', 'org_ssl', 'Organisational SSL Certificate'),
(83, 'SOGSAW0000000000', 'sec', 'ssl_cert', 'alpha_wild', 'Alpha WildCard SSL Certificate'),
(84, 'SOGSDW0000000000', 'sec', 'ssl_cert', 'domain_wild', 'Domain WildCard SSL Certificate'),
(85, 'SOGSOW0000000000', 'sec', 'ssl_cert', 'org_wild', 'Organisational Wildcard SSL Certificate'),
(86, 'SOGSES0000000000', 'sec', 'ssl_cert', 'ev_ssl', 'Extended Validation SSL Certificate'),
(87, 'STBT1P0000000000', 'storage', 'str', 'iops_1', 'IOPS : 1'),
(88, 'STBT3P0000000000', 'storage', 'str', 'iops_3', 'IOPS : 3'),
(89, 'STBT5I0000000000', 'storage', 'str', 'iops_5', 'IOPS : 5'),
(90, 'STBT8I0000000000', 'storage', 'str', 'iops_8', 'IOPS : 8'),
(91, 'STBT10I000000000', 'storage', 'str', 'iops_10', 'IOPS : 10'),
(97, 'STAS000000000000', 'storage', 'str', 'arc_strg_gb', 'Archival Storage GB'),
(99, 'SOBA000000000000', 'software', 'sw', 'backup_age', 'Backup Agent'),
(100, 'CNVPIV0000000000', 'net', 'vpn', 'ipsec', 'IPSEC VPN'),
(101, 'CNVPSV0000000000', 'net', 'vpn', 'ssl_vpn', 'SSL VPN'),
(102, 'ICTS6S0000000000', 'sec', 'vtm_scan', 'vtm_scan_60', '60 scans per month'),
(103, 'ICTS3S0000000000', 'sec', 'vtm_scan', 'vtm_scan_30', '30 scans per month'),
(104, 'ICTS4S0000000000', 'sec', 'vtm_scan', 'vtm_scan_4', '4 scans per month'),
(105, 'ICTS1S0000000000', 'sec', 'vtm_scan', 'vtm_scan_1', '1 scans per month'),
(107, 'ICWAVWOWFN000000', 'sec', 'waf', 'forti_waf', 'Fortinet : Web App Firewall'),
(108, 'ESVANV0000000000', 'sec', 'vapt', 'non-cert_vap', 'NON CERTIN- VAPT Audit'),
(111, 'NULL', 'sec', 'hsm', 'shared_hsm', 'Shared HSM'),
(112, 'CCVCVS0000000000', 'compute', 'compute', 'cpu', 'CPU'),
(113, 'CCVRAT0000000000', 'compute', 'compute', 'ram', 'RAM'),
(114, 'NULL', 'sec', 'sec', 'dlp', 'Data Loss Prevention'),
(115, 'NULL', 'sec', 'sec', 'edr', 'Endpoint Detection and Response'),
(116, 'NULL', 'sec', 'sec', 'dam', 'Database activity monitoring'),
(117, 'NULL', 'sec', 'sec', 'sor', 'security orchestration automation respo'),
(118, 'STBT2P0000000000', 'storage', 'str', 'iops_03', 'IOPS : 0.3'),
(119, 'CNIBVB0000000000', 'net', 'band', 'volume_band', 'Internet Bandwidth : Volume Based'),
(120, 'MSEGFWUM00000000', 'mng', 'sec_mng', 'utm_fv_mg', 'vUTM Firewall Management'),
(121, 'ICFWVFEFPO000000', 'sec', 'efw', 'efw_fortinet', 'PALO ALTO- External vFirewall : 1GBPS');

-- --------------------------------------------------------

--
-- Table structure for table `rate_card_prices`
--

CREATE TABLE `rate_card_prices` (
  `id` int(11) NOT NULL,
  `rate_card_id` int(11) NOT NULL,
  `prod_id` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `input_price` int(11) NOT NULL,
  `discountable_price` int(11) NOT NULL,
  `date_created` datetime NOT NULL,
  `is_active` enum('True','False') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `rate_card_prices`
--

INSERT INTO `rate_card_prices` (`id`, `rate_card_id`, `prod_id`, `price`, `input_price`, `discountable_price`, `date_created`, `is_active`) VALUES
(1, 1, 0, 16675, 12000, 1340, '2023-09-07 01:16:50', 'True'),
(2, 1, 2, 4, 2, 1, '2023-09-07 01:16:50', 'True'),
(3, 1, 3, 500, 300, 100, '2023-09-07 01:16:50', 'True'),
(4, 1, 4, 417, 300, 34, '2023-09-07 01:16:50', 'True'),
(5, 1, 5, 800, 600, 40, '2023-09-07 01:16:50', 'True'),
(6, 1, 6, 62400, 48000, 1920, '2023-09-07 01:16:50', 'True'),
(7, 1, 7, 1040, 900, 0, '2023-09-07 01:16:50', 'True'),
(8, 1, 8, 16900, 13000, 520, '2023-09-07 01:16:50', 'True'),
(9, 1, 9, 0, 0, 0, '2023-09-07 01:16:50', 'True'),
(10, 1, 10, 14574, 10000, 1659, '2023-09-07 01:16:50', 'True'),
(11, 1, 11, 36449, 29159, 0, '2023-09-07 01:16:50', 'True'),
(12, 1, 12, 36391, 20000, 9113, '2023-09-07 01:16:50', 'True'),
(13, 1, 13, 0, 0, 0, '2023-09-07 01:16:50', 'True'),
(14, 1, 14, 38306, 30000, 645, '2023-09-07 01:16:50', 'True'),
(15, 1, 15, 180952, 170000, 0, '2023-09-07 01:16:50', 'True'),
(16, 1, 16, 0, 0, 0, '2023-09-07 01:16:50', 'True'),
(17, 1, 19, 0, 0, 0, '2023-09-07 01:16:50', 'True'),
(18, 1, 20, 14583, 14000, 0, '2023-09-07 01:16:50', 'True'),
(19, 1, 21, 14583, 10000, 1666, '2023-09-07 01:16:50', 'True'),
(20, 1, 22, 16675, 12000, 1340, '2023-09-07 01:16:50', 'True'),
(21, 1, 31, 4800, 3000, 840, '2023-09-07 01:16:50', 'True'),
(22, 1, 32, 0, 0, 0, '2023-09-07 01:16:50', 'True'),
(23, 1, 33, 5000, 2000, 2000, '2023-09-07 01:16:50', 'True'),
(24, 1, 34, 1500, 1220, 0, '2023-09-07 01:16:50', 'True'),
(25, 1, 35, 1500, 1100, 100, '2023-09-07 01:16:50', 'True'),
(26, 1, 36, 1500, 1001, 199, '2023-09-07 01:16:50', 'True'),
(27, 1, 37, 1500, 1100, 100, '2023-09-07 01:16:50', 'True'),
(28, 1, 38, 1500, 1100, 100, '2023-09-07 01:16:50', 'True'),
(29, 1, 39, 7500, 5000, 1000, '2023-09-07 01:16:50', 'True'),
(30, 1, 40, 12500, 10000, 0, '2023-09-07 01:16:50', 'True'),
(31, 1, 41, 7500, 5000, 1000, '2023-09-07 01:16:50', 'True'),
(32, 1, 42, 7500, 5000, 1000, '2023-09-07 01:16:50', 'True'),
(33, 1, 43, 7500, 5000, 1000, '2023-09-07 01:16:50', 'True'),
(34, 1, 44, 7500, 5000, 1000, '2023-09-07 01:16:50', 'True'),
(35, 1, 45, 5500, 2000, 2400, '2023-09-07 01:16:50', 'True'),
(36, 1, 46, 1500, 500, 700, '2023-09-07 01:16:50', 'True'),
(37, 1, 47, 300, 100, 140, '2023-09-07 01:16:50', 'True'),
(38, 1, 48, 1500, 800, 400, '2023-09-07 01:16:50', 'True'),
(39, 1, 49, 1500, 800, 400, '2023-09-07 01:16:50', 'True'),
(40, 1, 50, 1500, 800, 400, '2023-09-07 01:16:50', 'True'),
(41, 1, 51, 300, 100, 140, '2023-09-07 01:16:50', 'True'),
(42, 1, 52, 5500, 5000, 0, '2023-09-07 01:16:50', 'True'),
(43, 1, 53, 1500, 500, 700, '2023-09-07 01:16:50', 'True'),
(44, 1, 54, 1000, 1000, 0, '2023-09-07 01:16:50', 'True'),
(45, 1, 55, 500, 300, 100, '2023-09-07 01:16:50', 'True'),
(46, 1, 56, 2100, 2000, 0, '2023-09-07 01:16:50', 'True'),
(47, 1, 57, 17500, 15000, 0, '2023-09-07 01:16:50', 'True'),
(48, 1, 58, 0, 0, 0, '2023-09-07 01:16:50', 'True'),
(49, 1, 59, 0, 0, 0, '2023-09-07 01:16:50', 'True'),
(50, 1, 60, 3510, 2800, 8, '2023-09-07 01:16:50', 'True'),
(51, 1, 61, 520, 410, 6, '2023-09-07 01:16:50', 'True'),
(52, 1, 62, 4500, 4000, 0, '2023-09-07 01:16:50', 'True'),
(53, 1, 63, 0, 0, 0, '2023-09-07 01:16:50', 'True'),
(54, 1, 64, 0, 0, 0, '2023-09-07 01:16:50', 'True'),
(55, 1, 65, 2305, 2000, 0, '2023-09-07 01:16:50', 'True'),
(56, 1, 66, 1200, 600, 360, '2023-09-07 01:16:50', 'True'),
(57, 1, 67, 1200, 600, 360, '2023-09-07 01:16:50', 'True'),
(58, 1, 68, 1200, 600, 360, '2023-09-07 01:16:50', 'True'),
(59, 1, 69, 10500, 8000, 400, '2023-09-07 01:16:50', 'True'),
(60, 1, 70, 100, 500, 0, '2023-09-07 01:16:50', 'True'),
(61, 1, 71, 0, 0, 0, '2023-09-07 01:16:50', 'True'),
(62, 1, 72, 0, 0, 0, '2023-09-07 01:16:50', 'True'),
(63, 1, 73, 1200, 1200, 0, '2023-09-07 01:16:50', 'True'),
(64, 1, 74, 90, 90, 0, '2023-09-07 01:16:50', 'True'),
(65, 1, 75, 2000, 1500, 100, '2023-09-07 01:16:50', 'True'),
(66, 1, 76, 1200, 800, 160, '2023-09-07 01:16:50', 'True'),
(67, 1, 77, 0, 0, 0, '2023-09-07 01:16:50', 'True'),
(68, 1, 78, 50000, 33550, 6450, '2023-09-07 01:16:50', 'True'),
(69, 1, 79, 5000, 2000, 2000, '2023-09-07 01:16:50', 'True'),
(70, 1, 80, 208, 100, 66, '2023-09-07 01:16:50', 'True'),
(71, 1, 81, 749, 500, 99, '2023-09-07 01:16:50', 'True'),
(72, 1, 82, 1083, 800, 66, '2023-09-07 01:16:50', 'True'),
(73, 1, 83, 749, 500, 99, '2023-09-07 01:16:50', 'True'),
(74, 1, 84, 2249, 1500, 299, '2023-09-07 01:16:50', 'True'),
(75, 1, 85, 2499, 2000, 0, '2023-09-07 01:16:50', 'True'),
(76, 1, 86, 1666, 1000, 333, '2023-09-07 01:16:50', 'True'),
(77, 1, 87, 3, 2, 0, '2023-09-07 01:16:50', 'True'),
(78, 1, 88, 4, 2, 1, '2023-09-07 01:16:50', 'True'),
(79, 1, 89, 6, 3, 2, '2023-09-07 01:16:50', 'True'),
(80, 1, 90, 10, 5, 3, '2023-09-07 01:16:50', 'True'),
(81, 1, 91, 12, 5, 5, '2023-09-07 01:16:50', 'True'),
(82, 1, 97, 2, 2, 0, '2023-09-07 01:16:50', 'True'),
(83, 1, 99, 500, 200, 200, '2023-09-07 01:16:50', 'True'),
(84, 1, 100, 500, 200, 200, '2023-09-07 01:16:50', 'True'),
(85, 1, 101, 300, 200, 40, '2023-09-07 01:16:50', 'True'),
(86, 1, 102, 1500, 800, 400, '2023-09-07 01:16:50', 'True'),
(87, 1, 103, 1000, 800, 0, '2023-09-07 01:16:50', 'True'),
(88, 1, 104, 800, 500, 140, '2023-09-07 01:16:50', 'True'),
(89, 1, 105, 500, 500, 0, '2023-09-07 01:16:50', 'True'),
(90, 1, 107, 16500, 1600, 11600, '2023-09-07 01:16:50', 'True'),
(91, 1, 108, 500, 400, 0, '2023-09-07 01:16:50', 'True'),
(92, 1, 111, 0, 0, 0, '2023-09-07 01:16:50', 'True'),
(93, 1, 112, 75, 50, 10, '2023-09-07 01:16:50', 'True'),
(94, 1, 113, 75, 50, 10, '2023-09-07 01:16:50', 'True'),
(95, 1, 114, 0, 0, 0, '2023-09-07 01:16:50', 'True'),
(96, 1, 115, 0, 0, 0, '2023-09-07 01:16:50', 'True'),
(97, 1, 116, 0, 0, 0, '2023-09-07 01:16:50', 'True'),
(98, 1, 117, 0, 0, 0, '2023-09-07 01:16:50', 'True'),
(99, 1, 118, 2, 2, 0, '2023-09-07 01:16:50', 'True'),
(100, 1, 119, 6, 6, 0, '2023-09-07 01:16:50', 'True'),
(101, 1, 120, 2000, 500, 1100, '2023-09-07 01:16:50', 'True'),
(102, 1, 121, 8357, 5000, 1686, '2023-09-07 01:16:50', 'True');

-- --------------------------------------------------------

--
-- Table structure for table `role_master`
--

CREATE TABLE `role_master` (
  `id` int(11) NOT NULL,
  `role_name` varchar(15) NOT NULL,
  `prefix` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `role_master`
--

INSERT INTO `role_master` (`id`, `role_name`, `prefix`) VALUES
(1, 'Super Admin', 'SA'),
(2, 'Admin', 'AD'),
(3, 'User', 'UR');

-- --------------------------------------------------------

--
-- Table structure for table `role_permissions`
--

CREATE TABLE `role_permissions` (
  `id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  `permission_id` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `role_permissions`
--

INSERT INTO `role_permissions` (`id`, `role_id`, `permission_id`) VALUES
(1, 1, '1,2,3'),
(2, 2, '1,2'),
(3, 3, '1');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_pack`
--

CREATE TABLE `tbl_pack` (
  `id` int(11) NOT NULL,
  `region` varchar(9) CHARACTER SET utf8 DEFAULT NULL,
  `pack_series` varchar(7) CHARACTER SET utf8 DEFAULT NULL,
  `sr_no` varchar(4) CHARACTER SET utf8 DEFAULT NULL,
  `pack` varchar(77) CHARACTER SET utf8 DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `vCores` int(11) DEFAULT NULL,
  `ram` int(11) DEFAULT NULL,
  `disk` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_pack`
--

INSERT INTO `tbl_pack` (`id`, `region`, `pack_series`, `sr_no`, `pack`, `price`, `vCores`, `ram`, `disk`) VALUES
(1, 'Nashik', 'Small', 'S1', 'S1 : vCores 2 | RAM  4 GB | Disk - 1000 IOPS -  100 GB | ₹  7.7 / hr', 5508, 2, 4, 100),
(2, 'Nashik', 'Small', 'S2', 'S2 : vCores 2 | RAM  8 GB | Disk - 1000 IOPS -  100 GB | ₹  8.1 / hr', 5808, 2, 8, 100),
(3, 'Nashik', 'Small', 'S3', 'S3 : vCores 4 | RAM  8 GB | Disk - 1000 IOPS -  100 GB | ₹  8.3 / hr', 5908, 4, 8, 100),
(4, 'Nashik', 'Small', 'S4', 'S4 : vCores 4 | RAM  16 GB | Disk - 1000 IOPS -  100 GB | ₹  9.1 / hr', 6508, 4, 16, 100),
(5, 'Nashik', 'Small', 'S5', 'S5 : vCores 4 | RAM  24 GB | Disk - 1000 IOPS -  100 GB | ₹  9.9 / hr', 7108, 4, 24, 100),
(6, 'Nashik', 'Small', 'S6', 'S6 : vCores 4 | RAM  32 GB | Disk - 1000 IOPS -  100 GB | ₹  10.8 / hr', 7708, 4, 32, 100),
(7, 'Nashik', 'Small', 'S7', 'S7 : vCores 6 | RAM  12 GB | Disk - 1000 IOPS -  100 GB | ₹  8.8 / hr', 6308, 6, 12, 100),
(8, 'Nashik', 'Small', 'S8', 'S8 : vCores 6 | RAM  24 GB | Disk - 1000 IOPS -  100 GB | ₹  10.1 / hr', 7208, 6, 24, 100),
(9, 'Nashik', 'Small', 'S9', 'S9 : vCores 6 | RAM  32 GB | Disk - 1000 IOPS -  100 GB | ₹  10.9 / hr', 7808, 6, 32, 100),
(10, 'Nashik', 'Small', 'S10', 'S10 : vCores 8 | RAM  16 GB | Disk - 1000 IOPS -  100 GB | ₹  9.4 / hr', 6708, 8, 16, 100),
(11, 'Nashik', 'Small', 'S11', 'S11 : vCores 8 | RAM  32 GB | Disk - 1000 IOPS -  100 GB | ₹  11 / hr', 7908, 8, 32, 100),
(12, 'Nashik', 'Small', 'S12', 'S12 : vCores 8 | RAM  56 GB | Disk - 1000 IOPS -  100 GB | ₹  13.5 / hr', 9708, 8, 56, 100),
(13, 'Nashik', 'Small', 'S13', 'S13 : vCores 8 | RAM  64 GB | Disk - 1000 IOPS -  100 GB | ₹  14.4 / hr', 10308, 8, 64, 100),
(14, 'Nashik', 'Medium', 'M1', 'M1 : vCores 8 | RAM  128 GB | Disk - 1000 IOPS -  100 GB | ₹  21.3 / hr', 15308, 8, 128, 100),
(15, 'Nashik', 'Medium', 'M2', 'M2 : vCores 8 | RAM  256 GB | Disk - 1000 IOPS -  100 GB | ₹  34.6 / hr', 24908, 8, 256, 100),
(16, 'Nashik', 'Medium', 'M3', 'M3 : vCores 10 | RAM  24 GB | Disk - 1000 IOPS -  100 GB | ₹  10.7 / hr', 7658, 10, 24, 100),
(17, 'Nashik', 'Medium', 'M4', 'M4 : vCores 10 | RAM  32 GB | Disk - 1000 IOPS -  100 GB | ₹  11.5 / hr', 8258, 10, 32, 100),
(18, 'Nashik', 'Medium', 'M5', 'M5 : vCores 12 | RAM  12 GB | Disk - 1000 IOPS -  100 GB | ₹  9.6 / hr', 6908, 12, 12, 100),
(19, 'Nashik', 'Medium', 'M6', 'M6 : vCores 12 | RAM  16 GB | Disk - 1000 IOPS -  100 GB | ₹  10.1 / hr', 7208, 12, 16, 100),
(20, 'Nashik', 'Medium', 'M7', 'M7 : vCores 12 | RAM  32 GB | Disk - 1000 IOPS -  100 GB | ₹  11.7 / hr', 8408, 12, 32, 100),
(21, 'Nashik', 'Medium', 'M8', 'M8 : vCores 12 | RAM  48 GB | Disk - 1000 IOPS -  100 GB | ₹  13.4 / hr', 9608, 12, 48, 100),
(22, 'Nashik', 'Medium', 'M9', 'M9 : vCores 12 | RAM  64 GB | Disk - 1000 IOPS -  100 GB | ₹  15.1 / hr', 10808, 12, 64, 100),
(23, 'Nashik', 'Medium', 'M10', 'M10 : vCores 12 | RAM  128 GB | Disk - 1000 IOPS -  100 GB | ₹  21.7 / hr', 15608, 12, 128, 100),
(24, 'Nashik', 'Medium', 'M11', 'M11 : vCores 14 | RAM  28 GB | Disk - 1000 IOPS -  100 GB | ₹  11.5 / hr', 8258, 14, 28, 100),
(25, 'Nashik', 'Medium', 'M12', 'M12 : vCores 14 | RAM  32 GB | Disk - 1000 IOPS -  100 GB | ₹  11.9 / hr', 8558, 14, 32, 100),
(26, 'Nashik', 'Medium', 'M13', 'M13 : vCores 14 | RAM  64 GB | Disk - 1000 IOPS -  100 GB | ₹  15.3 / hr', 10958, 14, 64, 100),
(27, 'Nashik', 'Medium', 'M14', 'M14 : vCores 14 | RAM  128 GB | Disk - 1000 IOPS -  100 GB | ₹  21.9 / hr', 15758, 14, 128, 100),
(28, 'Nashik', 'Large', 'L1', 'L1 : vCores 16 | RAM  16 GB | Disk - 1000 IOPS -  100 GB | ₹  10.5 / hr', 7508, 16, 16, 100),
(29, 'Nashik', 'Large', 'L2', 'L2 : vCores 16 | RAM  32 GB | Disk - 1000 IOPS -  100 GB | ₹  12.1 / hr', 8708, 16, 32, 100),
(30, 'Nashik', 'Large', 'L3', 'L3 : vCores 16 | RAM  64 GB | Disk - 1000 IOPS -  100 GB | ₹  30.9 / hr', 15908, 16, 64, 100),
(31, 'Nashik', 'Large', 'L4', 'L4 : vCores 16 | RAM  128 GB | Disk - 1000 IOPS -  100 GB | ₹  22.1 / hr', 25508, 16, 128, 100),
(32, 'Nashik', 'Large', 'L5', 'L5 : vCores 16 | RAM  256 GB | Disk - 1000 IOPS -  100 GB | ₹  35.5 / hr', 9908, 32, 256, 100),
(33, 'Nashik', 'Large', 'L6', 'L6 : vCores 32 | RAM  32 GB | Disk - 1000 IOPS -  100 GB | ₹  13.8 / hr', 12308, 32, 32, 100),
(34, 'Nashik', 'Large', 'L7', 'L7 : vCores 32 | RAM  64 GB | Disk - 1000 IOPS -  100 GB | ₹  17.1 / hr', 17108, 32, 64, 100),
(35, 'Nashik', 'X-Large', 'XL1', 'XL1 : vCores 14 | RAM  128 GB | Disk - 1000 IOPS -  100 GB | ₹  21.9 / hr', 15758, 14, 14, 100),
(36, 'Nashik', 'X-Large', 'XL2', 'XL2 : vCores 16 | RAM  256 GB | Disk - 1000 IOPS -  100 GB | ₹  35.5 / hr', 25508, 16, 16, 100),
(37, 'Nashik', 'X-Large', 'XL3', 'XL3 : vCores 16 | RAM  512 GB | Disk - 1000 IOPS -  100 GB | ₹  62.1 / hr', 44708, 16, 16, 100),
(38, 'Nashik', 'X-Large', 'XL4', 'XL4 : vCores 32 | RAM  256 GB | Disk - 1000 IOPS -  100 GB | ₹  37.1 / hr', 26708, 32, 32, 100),
(39, 'Nashik', 'X-Large', 'XL5', 'XL5 : vCores 32 | RAM  512 GB | Disk - 1000 IOPS -  100 GB | ₹  63.8 / hr', 45908, 32, 32, 100),
(40, 'Nashik', 'X-Large', 'XL6', 'XL6 : vCores 64 | RAM  128 GB | Disk - 1000 IOPS -  100 GB | ₹  27.1 / hr', 19508, 64, 64, 100),
(41, 'Nashik', 'X-Large', 'XL7', 'XL7 : vCores 64 | RAM  256 GB | Disk - 1000 IOPS -  100 GB | ₹  40.5 / hr', 29108, 64, 64, 100),
(42, 'Nashik', 'X-Large', 'XL8', 'XL8 : vCores 64 | RAM  512 GB | Disk - 1000 IOPS -  100 GB | ₹  67.1 / hr', 48308, 64, 64, 100),
(43, 'Nashik', 'X-Large', 'XL9', 'XL9 : vCores 128 | RAM  256 GB | Disk - 1000 IOPS -  100 GB | ₹  47.1 / hr', 33908, 128, 128, 100),
(44, 'Nashik', 'X-Large', 'XL10', 'XL10 : vCores 256 | RAM  512 GB | Disk - 1000 IOPS -  100 GB | ₹  87.1 / hr', 62708, 256, 256, 100),
(45, 'Nashik', 'X-Large', 'XL11', 'XL11 : vCores 256 | RAM  1024 GB | Disk - 1000 IOPS -  100 GB | ₹  140.5 / hr', 101108, 256, 256, 100),
(46, 'Mumbai', 'Small', 'S1', 'S1 : vCores 2 | RAM  4 GB | Disk - 1000 IOPS -  100 GB | ₹  7.6 / hr', 5468, 2, 4, 100),
(47, 'Mumbai', 'Small', 'S2', 'S2 : vCores 2 | RAM  8 GB | Disk - 1000 IOPS -  100 GB | ₹  8 / hr', 5728, 2, 8, 100),
(48, 'Mumbai', 'Small', 'S3', 'S3 : vCores 4 | RAM  8 GB | Disk - 1000 IOPS -  100 GB | ₹  8.1 / hr', 5828, 4, 8, 100),
(49, 'Mumbai', 'Small', 'S4', 'S4 : vCores 4 | RAM  16 GB | Disk - 1000 IOPS -  100 GB | ₹  8.9 / hr', 6348, 4, 16, 100),
(50, 'Mumbai', 'Small', 'S5', 'S5 : vCores 4 | RAM  24 GB | Disk - 1000 IOPS -  100 GB | ₹  9.6 / hr', 6868, 4, 24, 100),
(51, 'Mumbai', 'Small', 'S6', 'S6 : vCores 4 | RAM  32 GB | Disk - 1000 IOPS -  100 GB | ₹  10.3 / hr', 7388, 4, 32, 100),
(52, 'Mumbai', 'Small', 'S7', 'S7 : vCores 6 | RAM  12 GB | Disk - 1000 IOPS -  100 GB | ₹  8.6 / hr', 6188, 6, 12, 100),
(53, 'Mumbai', 'Small', 'S8', 'S8 : vCores 6 | RAM  24 GB | Disk - 1000 IOPS -  100 GB | ₹  9.7 / hr', 6968, 6, 24, 100),
(54, 'Mumbai', 'Small', 'S9', 'S9 : vCores 6 | RAM  32 GB | Disk - 1000 IOPS -  100 GB | ₹  10.4 / hr', 7488, 6, 32, 100),
(55, 'Mumbai', 'Small', 'S10', 'S10 : vCores 8 | RAM  16 GB | Disk - 1000 IOPS -  100 GB | ₹  9.1 / hr', 6548, 8, 16, 100),
(56, 'Mumbai', 'Small', 'S11', 'S11 : vCores 8 | RAM  32 GB | Disk - 1000 IOPS -  100 GB | ₹  10.6 / hr', 7588, 8, 32, 100),
(57, 'Mumbai', 'Small', 'S12', 'S12 : vCores 8 | RAM  56 GB | Disk - 1000 IOPS -  100 GB | ₹  12.8 / hr', 9148, 8, 56, 100),
(58, 'Mumbai', 'Small', 'S13', 'S13 : vCores 8 | RAM  64 GB | Disk - 1000 IOPS -  100 GB | ₹  13.5 / hr', 9668, 8, 64, 100),
(59, 'Mumbai', 'Medium', 'M1', 'M1 : vCores 8 | RAM  128 GB | Disk - 1000 IOPS -  100 GB | ₹  19.5 / hr', 14028, 8, 128, 100),
(60, 'Mumbai', 'Medium', 'M2', 'M2 : vCores 8 | RAM  256 GB | Disk - 1000 IOPS -  100 GB | ₹  31.1 / hr', 22348, 8, 256, 100),
(61, 'Mumbai', 'Medium', 'M3', 'M3 : vCores 10 | RAM  24 GB | Disk - 1000 IOPS -  100 GB | ₹  10.4 / hr', 7418, 10, 24, 100),
(62, 'Mumbai', 'Medium', 'M4', 'M4 : vCores 10 | RAM  32 GB | Disk - 1000 IOPS -  100 GB | ₹  11.1 / hr', 7938, 10, 32, 100),
(63, 'Mumbai', 'Medium', 'M5', 'M5 : vCores 12 | RAM  12 GB | Disk - 1000 IOPS -  100 GB | ₹  9.5 / hr', 6788, 12, 12, 100),
(64, 'Mumbai', 'Medium', 'M6', 'M6 : vCores 12 | RAM  16 GB | Disk - 1000 IOPS -  100 GB | ₹  9.8 / hr', 7048, 12, 16, 100),
(65, 'Mumbai', 'Medium', 'M7', 'M7 : vCores 12 | RAM  32 GB | Disk - 1000 IOPS -  100 GB | ₹  11.3 / hr', 8088, 12, 32, 100),
(66, 'Mumbai', 'Medium', 'M8', 'M8 : vCores 12 | RAM  48 GB | Disk - 1000 IOPS -  100 GB | ₹  12.7 / hr', 9128, 12, 48, 100),
(67, 'Mumbai', 'Medium', 'M9', 'M9 : vCores 12 | RAM  64 GB | Disk - 1000 IOPS -  100 GB | ₹  14.2 / hr', 10168, 12, 64, 100),
(68, 'Mumbai', 'Medium', 'M10', 'M10 : vCores 12 | RAM  128 GB | Disk - 1000 IOPS -  100 GB | ₹  19.9 / hr', 14328, 12, 128, 100),
(69, 'Mumbai', 'Medium', 'M11', 'M11 : vCores 14 | RAM  28 GB | Disk - 1000 IOPS -  100 GB | ₹  11.1 / hr', 7978, 14, 28, 100),
(70, 'Mumbai', 'Medium', 'M12', 'M12 : vCores 14 | RAM  32 GB | Disk - 1000 IOPS -  100 GB | ₹  11.5 / hr', 8238, 14, 32, 100),
(71, 'Mumbai', 'Medium', 'M13', 'M13 : vCores 14 | RAM  64 GB | Disk - 1000 IOPS -  100 GB | ₹  14.4 / hr', 10318, 14, 64, 100),
(72, 'Mumbai', 'Medium', 'M14', 'M14 : vCores 14 | RAM  128 GB | Disk - 1000 IOPS -  100 GB | ₹  20.2 / hr', 14478, 14, 128, 100),
(73, 'Mumbai', 'Large', 'L1', 'L1 : vCores 16 | RAM  16 GB | Disk - 1000 IOPS -  100 GB | ₹  10.3 / hr', 7348, 16, 16, 100),
(74, 'Mumbai', 'Large', 'L2', 'L2 : vCores 16 | RAM  32 GB | Disk - 1000 IOPS -  100 GB | ₹  11.7 / hr', 8388, 16, 32, 100),
(75, 'Mumbai', 'Large', 'L3', 'L3 : vCores 16 | RAM  128 GB | Disk - 1000 IOPS -  100 GB | ₹  20.4 / hr', 14628, 16, 64, 100),
(76, 'Mumbai', 'Large', 'L4', 'L4 : vCores 16 | RAM  256 GB | Disk - 1000 IOPS -  100 GB | ₹  31.9 / hr', 22948, 16, 128, 100),
(77, 'Mumbai', 'Large', 'L5', 'L5 : vCores 32 | RAM  32 GB | Disk - 1000 IOPS -  100 GB | ₹  13.4 / hr', 9588, 32, 256, 100),
(78, 'Mumbai', 'Large', 'L6', 'L6 : vCores 32 | RAM  64 GB | Disk - 1000 IOPS -  100 GB | ₹  16.3 / hr', 11668, 32, 32, 100),
(79, 'Mumbai', 'Large', 'L7', 'L7 : vCores 32 | RAM  128 GB | Disk - 1000 IOPS -  100 GB | ₹  22 / hr', 15828, 32, 64, 100),
(80, 'Mumbai', 'X-Large', 'XL1', 'XL1 : vCores 14 | RAM  128 GB | Disk - 1000 IOPS -  100 GB | ₹  21.9 / hr', 15758, 14, 14, 100),
(81, 'Mumbai', 'X-Large', 'XL2', 'XL2 : vCores 16 | RAM  256 GB | Disk - 1000 IOPS -  100 GB | ₹  35.5 / hr', 25508, 16, 16, 100),
(82, 'Mumbai', 'X-Large', 'XL3', 'XL3 : vCores 16 | RAM  512 GB | Disk - 1000 IOPS -  100 GB | ₹  62.1 / hr', 44708, 16, 16, 100),
(83, 'Mumbai', 'X-Large', 'XL4', 'XL4 : vCores 32 | RAM  256 GB | Disk - 1000 IOPS -  100 GB | ₹  37.1 / hr', 26708, 32, 32, 100),
(84, 'Mumbai', 'X-Large', 'XL5', 'XL5 : vCores 32 | RAM  512 GB | Disk - 1000 IOPS -  100 GB | ₹  63.8 / hr', 45908, 32, 32, 100),
(85, 'Mumbai', 'X-Large', 'XL6', 'XL6 : vCores 64 | RAM  128 GB | Disk - 1000 IOPS -  100 GB | ₹  27.1 / hr', 19508, 64, 64, 100),
(86, 'Mumbai', 'X-Large', 'XL7', 'XL7 : vCores 64 | RAM  256 GB | Disk - 1000 IOPS -  100 GB | ₹  40.5 / hr', 29108, 64, 64, 100),
(87, 'Mumbai', 'X-Large', 'XL8', 'XL8 : vCores 64 | RAM  512 GB | Disk - 1000 IOPS -  100 GB | ₹  67.1 / hr', 48308, 64, 64, 100),
(88, 'Mumbai', 'X-Large', 'XL9', 'XL9 : vCores 128 | RAM  256 GB | Disk - 1000 IOPS -  100 GB | ₹  47.1 / hr', 33908, 128, 128, 100),
(89, 'Mumbai', 'X-Large', 'XL10', 'XL10 : vCores 256 | RAM  512 GB | Disk - 1000 IOPS -  100 GB | ₹  87.1 / hr', 62708, 256, 256, 100),
(90, 'Mumbai', 'X-Large', 'XL11', 'XL11 : vCores 256 | RAM  1024 GB | Disk - 1000 IOPS -  100 GB | ₹  140.5 / hr', 101108, 256, 256, 100),
(91, 'Bangalore', 'Small', 'S1', 'S1 : vCores 2 | RAM  4 GB | Disk - 1000 IOPS -  100 GB | ₹  7.8 / hr', 5558, 2, 4, 100),
(92, 'Bangalore', 'Small', 'S2', 'S2 : vCores 2 | RAM  8 GB | Disk - 1000 IOPS -  100 GB | ₹  8.2 / hr', 5858, 2, 8, 100),
(93, 'Bangalore', 'Small', 'S3', 'S3 : vCores 4 | RAM  8 GB | Disk - 1000 IOPS -  100 GB | ₹  8.4 / hr', 6008, 4, 8, 100),
(94, 'Bangalore', 'Small', 'S4', 'S4 : vCores 4 | RAM  16 GB | Disk - 1000 IOPS -  100 GB | ₹  9.2 / hr', 6608, 4, 16, 100),
(95, 'Bangalore', 'Small', 'S5', 'S5 : vCores 4 | RAM  24 GB | Disk - 1000 IOPS -  100 GB | ₹  10.1 / hr', 7208, 4, 24, 100),
(96, 'Bangalore', 'Small', 'S6', 'S6 : vCores 4 | RAM  32 GB | Disk - 1000 IOPS -  100 GB | ₹  10.9 / hr', 7808, 4, 32, 100),
(97, 'Bangalore', 'Small', 'S7', 'S7 : vCores 6 | RAM  12 GB | Disk - 1000 IOPS -  100 GB | ₹  9 / hr', 6458, 6, 12, 100),
(98, 'Bangalore', 'Small', 'S8', 'S8 : vCores 6 | RAM  24 GB | Disk - 1000 IOPS -  100 GB | ₹  10.3 / hr', 7358, 6, 24, 100),
(99, 'Bangalore', 'Small', 'S9', 'S9 : vCores 6 | RAM  32 GB | Disk - 1000 IOPS -  100 GB | ₹  11.1 / hr', 7958, 6, 32, 100),
(100, 'Bangalore', 'Small', 'S10', 'S10 : vCores 8 | RAM  16 GB | Disk - 1000 IOPS -  100 GB | ₹  9.6 / hr', 6908, 8, 16, 100),
(101, 'Bangalore', 'Small', 'S11', 'S11 : vCores 8 | RAM  32 GB | Disk - 1000 IOPS -  100 GB | ₹  11.3 / hr', 8108, 8, 32, 100),
(102, 'Bangalore', 'Small', 'S12', 'S12 : vCores 8 | RAM  56 GB | Disk - 1000 IOPS -  100 GB | ₹  13.8 / hr', 9908, 8, 56, 100),
(103, 'Bangalore', 'Small', 'S13', 'S13 : vCores 8 | RAM  64 GB | Disk - 1000 IOPS -  100 GB | ₹  14.6 / hr', 10508, 8, 64, 100),
(104, 'Bangalore', 'Medium', 'M1', 'M1 : vCores 8 | RAM  128 GB | Disk - 1000 IOPS -  100 GB | ₹  21.3 / hr', 15308, 8, 128, 100),
(105, 'Bangalore', 'Medium', 'M2', 'M2 : vCores 8 | RAM  256 GB | Disk - 1000 IOPS -  100 GB | ₹  34.6 / hr', 24908, 8, 256, 100),
(106, 'Bangalore', 'Medium', 'M3', 'M3 : vCores 10 | RAM  24 GB | Disk - 1000 IOPS -  100 GB | ₹  10.7 / hr', 7658, 10, 24, 100),
(107, 'Bangalore', 'Medium', 'M4', 'M4 : vCores 10 | RAM  32 GB | Disk - 1000 IOPS -  100 GB | ₹  11.5 / hr', 8258, 10, 32, 100),
(108, 'Bangalore', 'Medium', 'M5', 'M5 : vCores 12 | RAM  12 GB | Disk - 1000 IOPS -  100 GB | ₹  9.6 / hr', 6908, 12, 12, 100),
(109, 'Bangalore', 'Medium', 'M6', 'M6 : vCores 12 | RAM  16 GB | Disk - 1000 IOPS -  100 GB | ₹  10.1 / hr', 7208, 12, 16, 100),
(110, 'Bangalore', 'Medium', 'M7', 'M7 : vCores 12 | RAM  32 GB | Disk - 1000 IOPS -  100 GB | ₹  11.7 / hr', 8408, 12, 32, 100),
(111, 'Bangalore', 'Medium', 'M8', 'M8 : vCores 12 | RAM  48 GB | Disk - 1000 IOPS -  100 GB | ₹  13.4 / hr', 9608, 12, 48, 100),
(112, 'Bangalore', 'Medium', 'M9', 'M9 : vCores 12 | RAM  64 GB | Disk - 1000 IOPS -  100 GB | ₹  15.1 / hr', 10808, 12, 64, 100),
(113, 'Bangalore', 'Medium', 'M10', 'M10 : vCores 12 | RAM  128 GB | Disk - 1000 IOPS -  100 GB | ₹  21.7 / hr', 15608, 12, 128, 100),
(114, 'Bangalore', 'Medium', 'M11', 'M11 : vCores 14 | RAM  28 GB | Disk - 1000 IOPS -  100 GB | ₹  11.5 / hr', 8258, 14, 28, 100),
(115, 'Bangalore', 'Medium', 'M12', 'M12 : vCores 14 | RAM  32 GB | Disk - 1000 IOPS -  100 GB | ₹  11.9 / hr', 8558, 14, 32, 100),
(116, 'Bangalore', 'Medium', 'M13', 'M13 : vCores 14 | RAM  64 GB | Disk - 1000 IOPS -  100 GB | ₹  15.3 / hr', 10958, 14, 64, 100),
(117, 'Bangalore', 'Medium', 'M14', 'M14 : vCores 14 | RAM  128 GB | Disk - 1000 IOPS -  100 GB | ₹  21.9 / hr', 15758, 14, 128, 100),
(118, 'Bangalore', 'Large', 'L1', 'L1 : vCores 16 | RAM  16 GB | Disk - 1000 IOPS -  100 GB | ₹  10.5 / hr', 7508, 16, 16, 100),
(119, 'Bangalore', 'Large', 'L2', 'L2 : vCores 16 | RAM  32 GB | Disk - 1000 IOPS -  100 GB | ₹  12.1 / hr', 8708, 16, 32, 100),
(120, 'Bangalore', 'Large', 'L3', 'L3 : vCores 16 | RAM  128 GB | Disk - 1000 IOPS -  100 GB | ₹  22.1 / hr', 15908, 16, 64, 100),
(121, 'Bangalore', 'Large', 'L4', 'L4 : vCores 16 | RAM  256 GB | Disk - 1000 IOPS -  100 GB | ₹  35.5 / hr', 25508, 16, 128, 100),
(122, 'Bangalore', 'Large', 'L5', 'L5 : vCores 32 | RAM  32 GB | Disk - 1000 IOPS -  100 GB | ₹  13.8 / hr', 9908, 32, 256, 100),
(123, 'Bangalore', 'Large', 'L6', 'L6 : vCores 32 | RAM  64 GB | Disk - 1000 IOPS -  100 GB | ₹  17.1 / hr', 12308, 32, 32, 100),
(124, 'Bangalore', 'Large', 'L7', 'L7 : vCores 32 | RAM  128 GB | Disk - 1000 IOPS -  100 GB | ₹  23.8 / hr', 17108, 32, 64, 100),
(125, 'Bangalore', 'X-Large', 'XL1', 'XL1 : vCores 14 | RAM  128 GB | Disk - 1000 IOPS -  100 GB | ₹  21.9 / hr', 15758, 14, 14, 100),
(126, 'Bangalore', 'X-Large', 'XL2', 'XL2 : vCores 16 | RAM  256 GB | Disk - 1000 IOPS -  100 GB | ₹  35.5 / hr', 25508, 16, 16, 100),
(127, 'Bangalore', 'X-Large', 'XL3', 'XL3 : vCores 16 | RAM  512 GB | Disk - 1000 IOPS -  100 GB | ₹  62.1 / hr', 44708, 16, 16, 100),
(128, 'Bangalore', 'X-Large', 'XL4', 'XL4 : vCores 32 | RAM  256 GB | Disk - 1000 IOPS -  100 GB | ₹  37.1 / hr', 26708, 32, 32, 100),
(129, 'Bangalore', 'X-Large', 'XL5', 'XL5 : vCores 32 | RAM  512 GB | Disk - 1000 IOPS -  100 GB | ₹  63.8 / hr', 45908, 32, 32, 100),
(130, 'Bangalore', 'X-Large', 'XL6', 'XL6 : vCores 64 | RAM  128 GB | Disk - 1000 IOPS -  100 GB | ₹  27.1 / hr', 19508, 64, 64, 100),
(131, 'Bangalore', 'X-Large', 'XL7', 'XL7 : vCores 64 | RAM  256 GB | Disk - 1000 IOPS -  100 GB | ₹  40.5 / hr', 29108, 64, 64, 100),
(132, 'Bangalore', 'X-Large', 'XL8', 'XL8 : vCores 64 | RAM  512 GB | Disk - 1000 IOPS -  100 GB | ₹  67.1 / hr', 48308, 64, 64, 100),
(133, 'Bangalore', 'X-Large', 'XL9', 'XL9 : vCores 128 | RAM  256 GB | Disk - 1000 IOPS -  100 GB | ₹  47.1 / hr', 33908, 128, 128, 100),
(134, 'Bangalore', 'X-Large', 'XL10', 'XL10 : vCores 256 | RAM  512 GB | Disk - 1000 IOPS -  100 GB | ₹  87.1 / hr', 62708, 256, 256, 100),
(135, 'Bangalore', 'X-Large', 'XL11', 'XL11 : vCores 256 | RAM  1024 GB | Disk - 1000 IOPS -  100 GB | ₹  140.5 / hr', 101108, 256, 256, 100),
(136, 'Mohali', 'Small', 'S1', 'S1 : vCores 2 | RAM  4 GB | Disk - 1000 IOPS -  100 GB | ₹  7.8 / hr', 5558, 2, 4, 100),
(137, 'Mohali', 'Small', 'S2', 'S2 : vCores 2 | RAM  8 GB | Disk - 1000 IOPS -  100 GB | ₹  8.2 / hr', 5858, 2, 8, 100),
(138, 'Mohali', 'Small', 'S3', 'S3 : vCores 4 | RAM  8 GB | Disk - 1000 IOPS -  100 GB | ₹  8.4 / hr', 6008, 4, 8, 100),
(139, 'Mohali', 'Small', 'S4', 'S4 : vCores 4 | RAM  16 GB | Disk - 1000 IOPS -  100 GB | ₹  9.2 / hr', 6608, 4, 16, 100),
(140, 'Mohali', 'Small', 'S5', 'S5 : vCores 4 | RAM  24 GB | Disk - 1000 IOPS -  100 GB | ₹  10.1 / hr', 7208, 4, 24, 100),
(141, 'Mohali', 'Small', 'S6', 'S6 : vCores 4 | RAM  32 GB | Disk - 1000 IOPS -  100 GB | ₹  10.9 / hr', 7808, 4, 32, 100),
(142, 'Mohali', 'Small', 'S7', 'S7 : vCores 6 | RAM  12 GB | Disk - 1000 IOPS -  100 GB | ₹  9 / hr', 6458, 6, 12, 100),
(143, 'Mohali', 'Small', 'S8', 'S8 : vCores 6 | RAM  24 GB | Disk - 1000 IOPS -  100 GB | ₹  10.3 / hr', 7358, 6, 24, 100),
(144, 'Mohali', 'Small', 'S9', 'S9 : vCores 6 | RAM  32 GB | Disk - 1000 IOPS -  100 GB | ₹  11.1 / hr', 7958, 6, 32, 100),
(145, 'Mohali', 'Small', 'S10', 'S10 : vCores 8 | RAM  16 GB | Disk - 1000 IOPS -  100 GB | ₹  9.6 / hr', 6908, 8, 16, 100),
(146, 'Mohali', 'Small', 'S11', 'S11 : vCores 8 | RAM  32 GB | Disk - 1000 IOPS -  100 GB | ₹  11.3 / hr', 8108, 8, 32, 100),
(147, 'Mohali', 'Small', 'S12', 'S12 : vCores 8 | RAM  56 GB | Disk - 1000 IOPS -  100 GB | ₹  13.8 / hr', 9908, 8, 56, 100),
(148, 'Mohali', 'Small', 'S13', 'S13 : vCores 8 | RAM  64 GB | Disk - 1000 IOPS -  100 GB | ₹  14.6 / hr', 10508, 8, 64, 100),
(149, 'Mohali', 'Medium', 'M1', 'M1 : vCores 8 | RAM  128 GB | Disk - 1000 IOPS -  100 GB | ₹  21.3 / hr', 15308, 8, 128, 100),
(150, 'Mohali', 'Medium', 'M2', 'M2 : vCores 8 | RAM  256 GB | Disk - 1000 IOPS -  100 GB | ₹  34.6 / hr', 24908, 8, 256, 100),
(151, 'Mohali', 'Medium', 'M3', 'M3 : vCores 10 | RAM  24 GB | Disk - 1000 IOPS -  100 GB | ₹  10.7 / hr', 7658, 10, 24, 100),
(152, 'Mohali', 'Medium', 'M4', 'M4 : vCores 10 | RAM  32 GB | Disk - 1000 IOPS -  100 GB | ₹  11.5 / hr', 8258, 10, 32, 100),
(153, 'Mohali', 'Medium', 'M5', 'M5 : vCores 12 | RAM  12 GB | Disk - 1000 IOPS -  100 GB | ₹  9.6 / hr', 6908, 12, 12, 100),
(154, 'Mohali', 'Medium', 'M6', 'M6 : vCores 12 | RAM  16 GB | Disk - 1000 IOPS -  100 GB | ₹  10.1 / hr', 7208, 12, 16, 100),
(155, 'Mohali', 'Medium', 'M7', 'M7 : vCores 12 | RAM  32 GB | Disk - 1000 IOPS -  100 GB | ₹  11.7 / hr', 8408, 12, 32, 100),
(156, 'Mohali', 'Medium', 'M8', 'M8 : vCores 12 | RAM  48 GB | Disk - 1000 IOPS -  100 GB | ₹  13.4 / hr', 9608, 12, 48, 100),
(157, 'Mohali', 'Medium', 'M9', 'M9 : vCores 12 | RAM  64 GB | Disk - 1000 IOPS -  100 GB | ₹  15.1 / hr', 10808, 12, 64, 100),
(158, 'Mohali', 'Medium', 'M10', 'M10 : vCores 12 | RAM  128 GB | Disk - 1000 IOPS -  100 GB | ₹  21.7 / hr', 15608, 12, 128, 100),
(159, 'Mohali', 'Medium', 'M11', 'M11 : vCores 14 | RAM  28 GB | Disk - 1000 IOPS -  100 GB | ₹  11.5 / hr', 8258, 14, 28, 100),
(160, 'Mohali', 'Medium', 'M12', 'M12 : vCores 14 | RAM  32 GB | Disk - 1000 IOPS -  100 GB | ₹  11.9 / hr', 8558, 14, 32, 100),
(161, 'Mohali', 'Medium', 'M13', 'M13 : vCores 14 | RAM  64 GB | Disk - 1000 IOPS -  100 GB | ₹  15.3 / hr', 10958, 14, 64, 100),
(162, 'Mohali', 'Medium', 'M14', 'M14 : vCores 14 | RAM  128 GB | Disk - 1000 IOPS -  100 GB | ₹  21.9 / hr', 15758, 14, 128, 100),
(163, 'Mohali', 'Large', 'L1', 'L1 : vCores 16 | RAM  16 GB | Disk - 1000 IOPS -  100 GB | ₹  10.5 / hr', 7508, 16, 16, 100),
(164, 'Mohali', 'Large', 'L2', 'L2 : vCores 16 | RAM  32 GB | Disk - 1000 IOPS -  100 GB | ₹  12.1 / hr', 8708, 16, 32, 100),
(165, 'Mohali', 'Large', 'L3', 'L3 : vCores 16 | RAM  128 GB | Disk - 1000 IOPS -  100 GB | ₹  22.1 / hr', 15908, 16, 64, 100),
(166, 'Mohali', 'Large', 'L4', 'L4 : vCores 16 | RAM  256 GB | Disk - 1000 IOPS -  100 GB | ₹  35.5 / hr', 25508, 16, 128, 100),
(167, 'Mohali', 'Large', 'L5', 'L5 : vCores 32 | RAM  32 GB | Disk - 1000 IOPS -  100 GB | ₹  13.8 / hr', 9908, 32, 256, 100),
(168, 'Mohali', 'Large', 'L6', 'L6 : vCores 32 | RAM  64 GB | Disk - 1000 IOPS -  100 GB | ₹  17.1 / hr', 12308, 32, 32, 100),
(169, 'Mohali', 'Large', 'L7', 'L7 : vCores 32 | RAM  128 GB | Disk - 1000 IOPS -  100 GB | ₹  23.8 / hr', 17108, 32, 64, 100),
(170, 'Mohali', 'X-Large', 'XL1', 'XL1 : vCores 14 | RAM  128 GB | Disk - 1000 IOPS -  100 GB | ₹  21.9 / hr', 15758, 14, 14, 100),
(171, 'Mohali', 'X-Large', 'XL2', 'XL2 : vCores 16 | RAM  256 GB | Disk - 1000 IOPS -  100 GB | ₹  35.5 / hr', 25508, 16, 16, 100),
(172, 'Mohali', 'X-Large', 'XL3', 'XL3 : vCores 16 | RAM  512 GB | Disk - 1000 IOPS -  100 GB | ₹  62.1 / hr', 44708, 16, 16, 100),
(173, 'Mohali', 'X-Large', 'XL4', 'XL4 : vCores 32 | RAM  256 GB | Disk - 1000 IOPS -  100 GB | ₹  37.1 / hr', 26708, 32, 32, 100),
(174, 'Mohali', 'X-Large', 'XL5', 'XL5 : vCores 32 | RAM  512 GB | Disk - 1000 IOPS -  100 GB | ₹  63.8 / hr', 45908, 32, 32, 100),
(175, 'Mohali', 'X-Large', 'XL6', 'XL6 : vCores 64 | RAM  128 GB | Disk - 1000 IOPS -  100 GB | ₹  27.1 / hr', 19508, 64, 64, 100),
(176, 'Mohali', 'X-Large', 'XL7', 'XL7 : vCores 64 | RAM  256 GB | Disk - 1000 IOPS -  100 GB | ₹  40.5 / hr', 29108, 64, 64, 100),
(177, 'Mohali', 'X-Large', 'XL8', 'XL8 : vCores 64 | RAM  512 GB | Disk - 1000 IOPS -  100 GB | ₹  67.1 / hr', 48308, 64, 64, 100),
(178, 'Mohali', 'X-Large', 'XL9', 'XL9 : vCores 128 | RAM  256 GB | Disk - 1000 IOPS -  100 GB | ₹  47.1 / hr', 33908, 128, 128, 100),
(179, 'Mohali', 'X-Large', 'XL10', 'XL10 : vCores 256 | RAM  512 GB | Disk - 1000 IOPS -  100 GB | ₹  87.1 / hr', 62708, 256, 256, 100),
(180, 'Mohali', 'X-Large', 'XL11', 'XL11 : vCores 256 | RAM  1024 GB | Disk - 1000 IOPS -  100 GB | ₹  140.5 / hr', 101108, 256, 256, 100),
(181, 'Noida', 'Small', 'S1', 'S1 : vCores 2 | RAM  4 GB | Disk - 1000 IOPS -  100 GB | ₹  7.8 / hr', 5558, 2, 4, 100),
(182, 'Noida', 'Small', 'S2', 'S2 : vCores 2 | RAM  8 GB | Disk - 1000 IOPS -  100 GB | ₹  8.2 / hr', 5858, 2, 8, 100),
(183, 'Noida', 'Small', 'S3', 'S3 : vCores 4 | RAM  8 GB | Disk - 1000 IOPS -  100 GB | ₹  8.4 / hr', 6008, 4, 8, 100),
(184, 'Noida', 'Small', 'S4', 'S4 : vCores 4 | RAM  16 GB | Disk - 1000 IOPS -  100 GB | ₹  9.2 / hr', 6608, 4, 16, 100),
(185, 'Noida', 'Small', 'S5', 'S5 : vCores 4 | RAM  24 GB | Disk - 1000 IOPS -  100 GB | ₹  10.1 / hr', 7208, 4, 24, 100),
(186, 'Noida', 'Small', 'S6', 'S6 : vCores 4 | RAM  32 GB | Disk - 1000 IOPS -  100 GB | ₹  10.9 / hr', 7808, 4, 32, 100),
(187, 'Noida', 'Small', 'S7', 'S7 : vCores 6 | RAM  12 GB | Disk - 1000 IOPS -  100 GB | ₹  9 / hr', 6458, 6, 12, 100),
(188, 'Noida', 'Small', 'S8', 'S8 : vCores 6 | RAM  24 GB | Disk - 1000 IOPS -  100 GB | ₹  10.3 / hr', 7358, 6, 24, 100),
(189, 'Noida', 'Small', 'S9', 'S9 : vCores 6 | RAM  32 GB | Disk - 1000 IOPS -  100 GB | ₹  11.1 / hr', 7958, 6, 32, 100),
(190, 'Noida', 'Small', 'S10', 'S10 : vCores 8 | RAM  16 GB | Disk - 1000 IOPS -  100 GB | ₹  9.6 / hr', 6908, 8, 16, 100),
(191, 'Noida', 'Small', 'S11', 'S11 : vCores 8 | RAM  32 GB | Disk - 1000 IOPS -  100 GB | ₹  11.3 / hr', 8108, 8, 32, 100),
(192, 'Noida', 'Small', 'S12', 'S12 : vCores 8 | RAM  56 GB | Disk - 1000 IOPS -  100 GB | ₹  13.8 / hr', 9908, 8, 56, 100),
(193, 'Noida', 'Small', 'S13', 'S13 : vCores 8 | RAM  64 GB | Disk - 1000 IOPS -  100 GB | ₹  14.6 / hr', 10508, 8, 64, 100),
(194, 'Noida', 'Medium', 'M1', 'M1 : vCores 8 | RAM  128 GB | Disk - 1000 IOPS -  100 GB | ₹  21.3 / hr', 15308, 8, 128, 100),
(195, 'Noida', 'Medium', 'M2', 'M2 : vCores 8 | RAM  256 GB | Disk - 1000 IOPS -  100 GB | ₹  34.6 / hr', 24908, 8, 256, 100),
(196, 'Noida', 'Medium', 'M3', 'M3 : vCores 10 | RAM  24 GB | Disk - 1000 IOPS -  100 GB | ₹  10.7 / hr', 7658, 10, 24, 100),
(197, 'Noida', 'Medium', 'M4', 'M4 : vCores 10 | RAM  32 GB | Disk - 1000 IOPS -  100 GB | ₹  11.5 / hr', 8258, 10, 32, 100),
(198, 'Noida', 'Medium', 'M5', 'M5 : vCores 12 | RAM  12 GB | Disk - 1000 IOPS -  100 GB | ₹  9.6 / hr', 6908, 12, 12, 100),
(199, 'Noida', 'Medium', 'M6', 'M6 : vCores 12 | RAM  16 GB | Disk - 1000 IOPS -  100 GB | ₹  10.1 / hr', 7208, 12, 16, 100),
(200, 'Noida', 'Medium', 'M7', 'M7 : vCores 12 | RAM  32 GB | Disk - 1000 IOPS -  100 GB | ₹  11.7 / hr', 8408, 12, 32, 100),
(201, 'Noida', 'Medium', 'M8', 'M8 : vCores 12 | RAM  48 GB | Disk - 1000 IOPS -  100 GB | ₹  13.4 / hr', 9608, 12, 48, 100),
(202, 'Noida', 'Medium', 'M9', 'M9 : vCores 12 | RAM  64 GB | Disk - 1000 IOPS -  100 GB | ₹  15.1 / hr', 10808, 12, 64, 100),
(203, 'Noida', 'Medium', 'M10', 'M10 : vCores 12 | RAM  128 GB | Disk - 1000 IOPS -  100 GB | ₹  21.7 / hr', 15608, 12, 128, 100),
(204, 'Noida', 'Medium', 'M11', 'M11 : vCores 14 | RAM  28 GB | Disk - 1000 IOPS -  100 GB | ₹  11.5 / hr', 8258, 14, 28, 100),
(205, 'Noida', 'Medium', 'M12', 'M12 : vCores 14 | RAM  32 GB | Disk - 1000 IOPS -  100 GB | ₹  11.9 / hr', 8558, 14, 32, 100),
(206, 'Noida', 'Medium', 'M13', 'M13 : vCores 14 | RAM  64 GB | Disk - 1000 IOPS -  100 GB | ₹  15.3 / hr', 10958, 14, 64, 100),
(207, 'Noida', 'Medium', 'M14', 'M14 : vCores 14 | RAM  128 GB | Disk - 1000 IOPS -  100 GB | ₹  21.9 / hr', 15758, 14, 128, 100),
(208, 'Noida', 'Large', 'L1', 'L1 : vCores 16 | RAM  16 GB | Disk - 1000 IOPS -  100 GB | ₹  10.5 / hr', 7508, 16, 16, 100),
(209, 'Noida', 'Large', 'L2', 'L2 : vCores 16 | RAM  32 GB | Disk - 1000 IOPS -  100 GB | ₹  12.1 / hr', 8708, 16, 32, 100),
(210, 'Noida', 'Large', 'L3', 'L3 : vCores 16 | RAM  128 GB | Disk - 1000 IOPS -  100 GB | ₹  22.1 / hr', 15908, 16, 64, 100),
(211, 'Noida', 'Large', 'L4', 'L4 : vCores 16 | RAM  256 GB | Disk - 1000 IOPS -  100 GB | ₹  35.5 / hr', 25508, 16, 128, 100),
(212, 'Noida', 'Large', 'L5', 'L5 : vCores 32 | RAM  32 GB | Disk - 1000 IOPS -  100 GB | ₹  13.8 / hr', 9908, 32, 256, 100),
(213, 'Noida', 'Large', 'L6', 'L6 : vCores 32 | RAM  64 GB | Disk - 1000 IOPS -  100 GB | ₹  17.1 / hr', 12308, 32, 32, 100),
(214, 'Noida', 'Large', 'L7', 'L7 : vCores 32 | RAM  128 GB | Disk - 1000 IOPS -  100 GB | ₹  23.8 / hr', 17108, 32, 64, 100),
(215, 'Noida', 'X-Large', 'XL1', 'XL1 : vCores 14 | RAM  128 GB | Disk - 1000 IOPS -  100 GB | ₹  21.9 / hr', 15758, 14, 14, 100),
(216, 'Noida', 'X-Large', 'XL2', 'XL2 : vCores 16 | RAM  256 GB | Disk - 1000 IOPS -  100 GB | ₹  35.5 / hr', 25508, 16, 16, 100),
(217, 'Noida', 'X-Large', 'XL3', 'XL3 : vCores 16 | RAM  512 GB | Disk - 1000 IOPS -  100 GB | ₹  62.1 / hr', 44708, 16, 16, 100),
(218, 'Noida', 'X-Large', 'XL4', 'XL4 : vCores 32 | RAM  256 GB | Disk - 1000 IOPS -  100 GB | ₹  37.1 / hr', 26708, 32, 32, 100),
(219, 'Noida', 'X-Large', 'XL5', 'XL5 : vCores 32 | RAM  512 GB | Disk - 1000 IOPS -  100 GB | ₹  63.8 / hr', 45908, 32, 32, 100),
(220, 'Noida', 'X-Large', 'XL6', 'XL6 : vCores 64 | RAM  128 GB | Disk - 1000 IOPS -  100 GB | ₹  27.1 / hr', 19508, 64, 64, 100),
(221, 'Noida', 'X-Large', 'XL7', 'XL7 : vCores 64 | RAM  256 GB | Disk - 1000 IOPS -  100 GB | ₹  40.5 / hr', 29108, 64, 64, 100),
(222, 'Noida', 'X-Large', 'XL8', 'XL8 : vCores 64 | RAM  512 GB | Disk - 1000 IOPS -  100 GB | ₹  67.1 / hr', 48308, 64, 64, 100),
(223, 'Noida', 'X-Large', 'XL9', 'XL9 : vCores 128 | RAM  256 GB | Disk - 1000 IOPS -  100 GB | ₹  47.1 / hr', 33908, 128, 128, 100),
(224, 'Noida', 'X-Large', 'XL10', 'XL10 : vCores 256 | RAM  512 GB | Disk - 1000 IOPS -  100 GB | ₹  87.1 / hr', 62708, 256, 256, 100),
(225, 'Noida', 'X-Large', 'XL11', 'XL11 : vCores 256 | RAM  1024 GB | Disk - 1000 IOPS -  100 GB | ₹  140.5 / hr', 101108, 256, 256, 100),
(226, 'Noida', 'Large', 'L8', 'L8 : vCores 32 | RAM  128 GB | Disk - 1000 IOPS -  100 GB | ₹  18.1 / hr', 12608, 32, 128, 100),
(227, 'Nashik', 'Large', 'L8', 'L8 : vCores 32 | RAM  128 GB | Disk - 1000 IOPS -  100 GB | ₹  18.1 / hr', 12608, 32, 128, 100),
(228, 'Mumbai', 'Large', 'L8', 'L8 : vCores 32 | RAM  128 GB | Disk - 1000 IOPS -  100 GB | ₹  18.1 / hr', 12608, 32, 128, 100),
(229, 'Bangalore', 'Large', 'L8', 'L8 : vCores 32 | RAM  128 GB | Disk - 1000 IOPS -  100 GB | ₹  18.1 / hr', 12608, 32, 128, 100);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_quot_type`
--

CREATE TABLE `tbl_quot_type` (
  `id` int(11) NOT NULL,
  `template_name` varchar(30) NOT NULL,
  `date_created` datetime NOT NULL,
  `is_active` enum('True','False','','') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_quot_type`
--

INSERT INTO `tbl_quot_type` (`id`, `template_name`, `date_created`, `is_active`) VALUES
(1, 'DC_DR', '2023-08-24 10:50:35', 'True'),
(2, 'Colocation', '2023-08-24 14:22:56', 'True');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_rate_cards`
--

CREATE TABLE `tbl_rate_cards` (
  `id` int(11) NOT NULL,
  `rate_card_name` varchar(20) NOT NULL,
  `created_by` varchar(30) NOT NULL,
  `created_date` datetime NOT NULL,
  `is_active` enum('True','False') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_rate_cards`
--

INSERT INTO `tbl_rate_cards` (`id`, `rate_card_name`, `created_by`, `created_date`, `is_active`) VALUES
(1, 'General Price List', '9999', '2023-08-28 11:38:31', 'True'),
(2, 'DIT Price List', '9999', '2023-08-28 11:38:31', 'True'),
(3, 'Enterprise Price Lis', '9999', '2023-08-28 11:38:31', 'True'),
(4, 'STPI Price List', '9999', '2023-08-28 11:38:31', 'True');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_saved_estimates`
--

CREATE TABLE `tbl_saved_estimates` (
  `id` int(11) NOT NULL,
  `emp_code` int(11) NOT NULL,
  `pot_id` int(11) NOT NULL,
  `project_name` varchar(50) CHARACTER SET utf8mb4 NOT NULL,
  `version` varchar(5) COLLATE utf8_bin NOT NULL,
  `owner` int(11) NOT NULL,
  `last_changed_by` int(11) NOT NULL,
  `date_created` date NOT NULL,
  `date_updated` timestamp NOT NULL DEFAULT current_timestamp(),
  `contract_period` int(11) NOT NULL,
  `total_upfront` int(11) NOT NULL,
  `data` text CHARACTER SET utf8mb4 NOT NULL,
  `prices` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `tbl_saved_estimates`
--

INSERT INTO `tbl_saved_estimates` (`id`, `emp_code`, `pot_id`, `project_name`, `version`, `owner`, `last_changed_by`, `date_created`, `date_updated`, `contract_period`, `total_upfront`, `data`, `prices`) VALUES
(1, 3094, 234522, '2134', '1', 3094, 3094, '2023-08-07', '2023-08-24 06:27:47', 3, 29999, '{\"quot_type\":\"1\",\"price_list\":\"1\",\"pot_id\":\"234522\",\"project_name\":\"2134\",\"old_pot\":\"234522\",\"version\":\" 1 \",\"count_of_est\":\"1\",\"EstType\":{\"1\":\"DC\"},\"estmtname\":{\"1\":\"23456599\"},\"period\":{\"1\":\"3\"},\"count_of_vm\":{\"1\":\"1\"},\"vmname\":{\"1\":[\"Application Server\"]},\"region\":{\"1\":[\"Mumbai\"]},\"sector\":{\"1\":[\"BFSI\"]},\"os\":{\"1\":[\"Linux : RHEL\"]},\"database\":{\"1\":[\"MS SQL Enterprise\"]},\"series\":{\"1\":[\"Small\"]},\"instance\":{\"1\":[\"S13\"]},\"vcpu\":{\"1\":[\"8\"]},\"ram\":{\"1\":[\"64\"]},\"inst_disk\":{\"1\":[\"100\"]},\"vmqty\":{\"1\":[\"2\"]},\"state\":{\"1\":[\"Standalone\"]},\"publicipversion\":{\"1\":[\"Public IPv6\"]},\"public_ipqty\":{\"1\":[\"\"]},\"virus_type\":{\"1\":[\"\"]},\"03strgunit\":{\"1\":\"TB\"},\"03iopsqty\":{\"1\":\"\"},\"1strgunit\":{\"1\":\"TB\"},\"1iopsqty\":{\"1\":\"\"},\"3strgunit\":{\"1\":\"TB\"},\"3iopsqty\":{\"1\":\"\"},\"5strgunit\":{\"1\":\"TB\"},\"5iopsqty\":{\"1\":\"\"},\"8strgunit\":{\"1\":\"TB\"},\"8iopsqty\":{\"1\":\"\"},\"10strgunit\":{\"1\":\"TB\"},\"10iopsqty\":{\"1\":\"\"},\"backup_strg\":{\"1\":\"\"},\"backup_unit\":{\"1\":\"TB\"},\"age_qty_type\":{\"1\":\"\"},\"ageqty\":{\"1\":\"\"},\"arc_strg\":{\"1\":\"\"},\"archival_unit\":{\"1\":\"TB\"},\"tlqty\":{\"1\":\"\"},\"tcqty\":{\"1\":\"\"},\"fcqty\":{\"1\":\"\"},\"bandwidthType\":{\"1\":\"Speed Based Internet Bandwidth\"},\"bandwidth\":{\"1\":\"\"},\"load_balancer\":{\"1\":\"\"},\"lbqty\":{\"1\":\"\"},\"ccptqty\":{\"1\":\"\"},\"sslvpnqty\":{\"1\":\"\"},\"ipsecqty\":{\"1\":\"\"},\"rep_link\":{\"1\":\"\"},\"efv_throughput\":{\"1\":\"\"},\"extfvqty\":{\"1\":\"\"},\"ifv_throughput\":{\"1\":\"\"},\"intfvqty\":{\"1\":\"\"},\"ddos_throughput\":{\"1\":\"\"},\"waf_type\":{\"1\":\"\"},\"wafqty\":{\"1\":\"\"},\"ssl\":{\"1\":\"\"},\"sslqty\":{\"1\":\"\"},\"siem_name\":{\"1\":\"\"},\"pimqty\":{\"1\":\"\"},\"vtmqty\":{\"1\":\"60 scans per month\"},\"vapt_type\":{\"1\":\"\"},\"vaptqty\":{\"1\":\"\"},\"vapt_frequency\":{\"1\":\"Year\"},\"hsm_type\":{\"1\":\"\"},\"hsmqty\":{\"1\":\"\"},\"tfaqty\":{\"1\":\"\"},\"iamqty\":{\"1\":\"\"},\"dlpqty\":{\"1\":\"\"},\"edrqty\":{\"1\":\"\"},\"damqty\":{\"1\":\"\"},\"sorqty\":{\"1\":\"\"},\"emagic_type\":{\"1\":\"Basic\"},\"emagic\":{\"1\":\"on\"},\"drillqty\":{\"1\":\"\"},\"rep_link_type\":{\"1\":\"\"},\"rep_link_qty\":{\"1\":\"\"}}', ''),
(2, 11, 2345, 'ET File server', '1', 11, 11, '2023-08-07', '2023-08-07 11:56:58', 12, 317496, '{\"quot_type\":\"DC\",\"price_list\":\"1\",\"pot_id\":\"2345\",\"project_name\":\"ET File server\",\"version\":\"  \",\"count_of_est\":\"4\",\"estmtname\":{\"1\":\"DC Hosting for Colo Labs\"},\"period\":{\"1\":\"12\"},\"count_of_vm\":{\"1\":\"2\"},\"vmname\":{\"1\":[\"Application\",\"Database\"]},\"region\":{\"1\":[\"Mumbai\",\"Mumbai\"]},\"sector\":{\"1\":[\"Enterprise\",\"Enterprise\"]},\"os\":{\"1\":[\"Linux : UBUNTU\",\"Linux : UBUNTU\"]},\"database\":{\"1\":[\"Mongo DB Community\",\"MY SQL Community\"]},\"series\":{\"1\":[\"Flexible Compute\",\"Flexible Compute\"]},\"vcpu\":{\"1\":[\"12\",\"12\"]},\"ram\":{\"1\":[\"32\",\"32\"]},\"inst_disk\":{\"1\":[\"150\",\"250\"]},\"vmqty\":{\"1\":[\"1\",\"1\"]},\"state\":{\"1\":[\"Standalone\",\"Standalone\"]},\"publicipversion\":{\"1\":[\"Public IPv6\",\"Public IPv6\"]},\"public_ipqty\":{\"1\":[\"\",\"\"]},\"virus_type\":{\"1\":[\"\",\"\"]},\"03strgunit\":{\"1\":\"TB\"},\"03iopsqty\":{\"1\":\"\"},\"1strgunit\":{\"1\":\"TB\"},\"1iopsqty\":{\"1\":\"\"},\"3strgunit\":{\"1\":\"TB\"},\"3iopsqty\":{\"1\":\"\"},\"5strgunit\":{\"1\":\"TB\"},\"5iopsqty\":{\"1\":\"\"},\"8strgunit\":{\"1\":\"TB\"},\"8iopsqty\":{\"1\":\"\"},\"10strgunit\":{\"1\":\"TB\"},\"10iopsqty\":{\"1\":\"\"},\"backup_strg\":{\"1\":\"250\"},\"backup_unit\":{\"1\":\"GB\"},\"age_qty_type\":{\"1\":\"DB VM\"},\"ageqty\":{\"1\":\"\"},\"arc_strg\":{\"1\":\"\"},\"archival_unit\":{\"1\":\"TB\"},\"tlqty\":{\"1\":\"\"},\"tcqty\":{\"1\":\"\"},\"fcqty\":{\"1\":\"\"},\"bandwidthType\":{\"1\":\"Speed Based Internet Bandwidth\"},\"bandwidth\":{\"1\":\"10\"},\"load_balancer\":{\"1\":\"\"},\"lbqty\":{\"1\":\"\"},\"ccptqty\":{\"1\":\"\"},\"sslvpnqty\":{\"1\":\"\"},\"ipsecqty\":{\"1\":\"\"},\"efv_throughput\":{\"1\":\"PALO ALTO- External vFirewall : 1GBPS\"},\"extfirewall\":{\"1\":\"on\"},\"extfvqty\":{\"1\":\"1\"},\"ifv_throughput\":{\"1\":\"\"},\"intfvqty\":{\"1\":\"\"},\"ddos_throughput\":{\"1\":\"\"},\"ddosqty\":{\"1\":\"\"},\"waf_type\":{\"1\":\"\"},\"wafqty\":{\"1\":\"\"},\"ssl\":{\"1\":\"\"},\"sslqty\":{\"1\":\"\"},\"siem_name\":{\"1\":\"\"},\"pimqty\":{\"1\":\"\"},\"vtmqty\":{\"1\":\"60 scans per month\"},\"vapt_type\":{\"1\":\"\"},\"vaptqty\":{\"1\":\"\"},\"vapt_frequency\":{\"1\":\"Year\"},\"hsm_type\":{\"1\":\"\"},\"hsmqty\":{\"1\":\"\"},\"tfaqty\":{\"1\":\"\"},\"iamqty\":{\"1\":\"\"},\"dlpqty\":{\"1\":\"\"},\"edrqty\":{\"1\":\"\"},\"damqty\":{\"1\":\"\"},\"sorqty\":{\"1\":\"\"},\"osmgmt\":{\"1\":\"on\"},\"strgmgmt\":{\"1\":\"on\"},\"backmgmt\":{\"1\":\"on\"},\"fv_mgmt\":{\"1\":\"on\"},\"emagic_type\":{\"1\":\"Basic\"},\"proceed\":\"\"}', ''),
(3, 2394, 2345, 'ET File server', '1', 11, 11, '2023-08-07', '2023-08-07 11:56:58', 12, 317496, '{\"quot_type\":\"DC\",\"price_list\":\"1\",\"pot_id\":\"2345\",\"project_name\":\"ET File server\",\"version\":\"  \",\"count_of_est\":\"4\",\"estmtname\":{\"1\":\"DC Hosting for Colo Labs\"},\"period\":{\"1\":\"12\"},\"count_of_vm\":{\"1\":\"2\"},\"vmname\":{\"1\":[\"Application\",\"Database\"]},\"region\":{\"1\":[\"Mumbai\",\"Mumbai\"]},\"sector\":{\"1\":[\"Enterprise\",\"Enterprise\"]},\"os\":{\"1\":[\"Linux : UBUNTU\",\"Linux : UBUNTU\"]},\"database\":{\"1\":[\"Mongo DB Community\",\"MY SQL Community\"]},\"series\":{\"1\":[\"Flexible Compute\",\"Flexible Compute\"]},\"vcpu\":{\"1\":[\"12\",\"12\"]},\"ram\":{\"1\":[\"32\",\"32\"]},\"inst_disk\":{\"1\":[\"150\",\"250\"]},\"vmqty\":{\"1\":[\"1\",\"1\"]},\"state\":{\"1\":[\"Standalone\",\"Standalone\"]},\"publicipversion\":{\"1\":[\"Public IPv6\",\"Public IPv6\"]},\"public_ipqty\":{\"1\":[\"\",\"\"]},\"virus_type\":{\"1\":[\"\",\"\"]},\"03strgunit\":{\"1\":\"TB\"},\"03iopsqty\":{\"1\":\"\"},\"1strgunit\":{\"1\":\"TB\"},\"1iopsqty\":{\"1\":\"\"},\"3strgunit\":{\"1\":\"TB\"},\"3iopsqty\":{\"1\":\"\"},\"5strgunit\":{\"1\":\"TB\"},\"5iopsqty\":{\"1\":\"\"},\"8strgunit\":{\"1\":\"TB\"},\"8iopsqty\":{\"1\":\"\"},\"10strgunit\":{\"1\":\"TB\"},\"10iopsqty\":{\"1\":\"\"},\"backup_strg\":{\"1\":\"250\"},\"backup_unit\":{\"1\":\"GB\"},\"age_qty_type\":{\"1\":\"DB VM\"},\"ageqty\":{\"1\":\"\"},\"arc_strg\":{\"1\":\"\"},\"archival_unit\":{\"1\":\"TB\"},\"tlqty\":{\"1\":\"\"},\"tcqty\":{\"1\":\"\"},\"fcqty\":{\"1\":\"\"},\"bandwidthType\":{\"1\":\"Speed Based Internet Bandwidth\"},\"bandwidth\":{\"1\":\"10\"},\"load_balancer\":{\"1\":\"\"},\"lbqty\":{\"1\":\"\"},\"ccptqty\":{\"1\":\"\"},\"sslvpnqty\":{\"1\":\"\"},\"ipsecqty\":{\"1\":\"\"},\"efv_throughput\":{\"1\":\"PALO ALTO- External vFirewall : 1GBPS\"},\"extfirewall\":{\"1\":\"on\"},\"extfvqty\":{\"1\":\"1\"},\"ifv_throughput\":{\"1\":\"\"},\"intfvqty\":{\"1\":\"\"},\"ddos_throughput\":{\"1\":\"\"},\"ddosqty\":{\"1\":\"\"},\"waf_type\":{\"1\":\"\"},\"wafqty\":{\"1\":\"\"},\"ssl\":{\"1\":\"\"},\"sslqty\":{\"1\":\"\"},\"siem_name\":{\"1\":\"\"},\"pimqty\":{\"1\":\"\"},\"vtmqty\":{\"1\":\"60 scans per month\"},\"vapt_type\":{\"1\":\"\"},\"vaptqty\":{\"1\":\"\"},\"vapt_frequency\":{\"1\":\"Year\"},\"hsm_type\":{\"1\":\"\"},\"hsmqty\":{\"1\":\"\"},\"tfaqty\":{\"1\":\"\"},\"iamqty\":{\"1\":\"\"},\"dlpqty\":{\"1\":\"\"},\"edrqty\":{\"1\":\"\"},\"damqty\":{\"1\":\"\"},\"sorqty\":{\"1\":\"\"},\"osmgmt\":{\"1\":\"on\"},\"strgmgmt\":{\"1\":\"on\"},\"backmgmt\":{\"1\":\"on\"},\"fv_mgmt\":{\"1\":\"on\"},\"emagic_type\":{\"1\":\"Basic\"},\"proceed\":\"\"}', ''),
(4, 2727, 2345, 'ET File server', '1', 11, 11, '2023-08-07', '2023-08-07 11:56:58', 12, 317496, '{\"quot_type\":\"DC\",\"price_list\":\"1\",\"pot_id\":\"2345\",\"project_name\":\"ET File server\",\"version\":\"  \",\"count_of_est\":\"4\",\"estmtname\":{\"1\":\"DC Hosting for Colo Labs\"},\"period\":{\"1\":\"12\"},\"count_of_vm\":{\"1\":\"2\"},\"vmname\":{\"1\":[\"Application\",\"Database\"]},\"region\":{\"1\":[\"Mumbai\",\"Mumbai\"]},\"sector\":{\"1\":[\"Enterprise\",\"Enterprise\"]},\"os\":{\"1\":[\"Linux : UBUNTU\",\"Linux : UBUNTU\"]},\"database\":{\"1\":[\"Mongo DB Community\",\"MY SQL Community\"]},\"series\":{\"1\":[\"Flexible Compute\",\"Flexible Compute\"]},\"vcpu\":{\"1\":[\"12\",\"12\"]},\"ram\":{\"1\":[\"32\",\"32\"]},\"inst_disk\":{\"1\":[\"150\",\"250\"]},\"vmqty\":{\"1\":[\"1\",\"1\"]},\"state\":{\"1\":[\"Standalone\",\"Standalone\"]},\"publicipversion\":{\"1\":[\"Public IPv6\",\"Public IPv6\"]},\"public_ipqty\":{\"1\":[\"\",\"\"]},\"virus_type\":{\"1\":[\"\",\"\"]},\"03strgunit\":{\"1\":\"TB\"},\"03iopsqty\":{\"1\":\"\"},\"1strgunit\":{\"1\":\"TB\"},\"1iopsqty\":{\"1\":\"\"},\"3strgunit\":{\"1\":\"TB\"},\"3iopsqty\":{\"1\":\"\"},\"5strgunit\":{\"1\":\"TB\"},\"5iopsqty\":{\"1\":\"\"},\"8strgunit\":{\"1\":\"TB\"},\"8iopsqty\":{\"1\":\"\"},\"10strgunit\":{\"1\":\"TB\"},\"10iopsqty\":{\"1\":\"\"},\"backup_strg\":{\"1\":\"250\"},\"backup_unit\":{\"1\":\"GB\"},\"age_qty_type\":{\"1\":\"DB VM\"},\"ageqty\":{\"1\":\"\"},\"arc_strg\":{\"1\":\"\"},\"archival_unit\":{\"1\":\"TB\"},\"tlqty\":{\"1\":\"\"},\"tcqty\":{\"1\":\"\"},\"fcqty\":{\"1\":\"\"},\"bandwidthType\":{\"1\":\"Speed Based Internet Bandwidth\"},\"bandwidth\":{\"1\":\"10\"},\"load_balancer\":{\"1\":\"\"},\"lbqty\":{\"1\":\"\"},\"ccptqty\":{\"1\":\"\"},\"sslvpnqty\":{\"1\":\"\"},\"ipsecqty\":{\"1\":\"\"},\"efv_throughput\":{\"1\":\"PALO ALTO- External vFirewall : 1GBPS\"},\"extfirewall\":{\"1\":\"on\"},\"extfvqty\":{\"1\":\"1\"},\"ifv_throughput\":{\"1\":\"\"},\"intfvqty\":{\"1\":\"\"},\"ddos_throughput\":{\"1\":\"\"},\"ddosqty\":{\"1\":\"\"},\"waf_type\":{\"1\":\"\"},\"wafqty\":{\"1\":\"\"},\"ssl\":{\"1\":\"\"},\"sslqty\":{\"1\":\"\"},\"siem_name\":{\"1\":\"\"},\"pimqty\":{\"1\":\"\"},\"vtmqty\":{\"1\":\"60 scans per month\"},\"vapt_type\":{\"1\":\"\"},\"vaptqty\":{\"1\":\"\"},\"vapt_frequency\":{\"1\":\"Year\"},\"hsm_type\":{\"1\":\"\"},\"hsmqty\":{\"1\":\"\"},\"tfaqty\":{\"1\":\"\"},\"iamqty\":{\"1\":\"\"},\"dlpqty\":{\"1\":\"\"},\"edrqty\":{\"1\":\"\"},\"damqty\":{\"1\":\"\"},\"sorqty\":{\"1\":\"\"},\"osmgmt\":{\"1\":\"on\"},\"strgmgmt\":{\"1\":\"on\"},\"backmgmt\":{\"1\":\"on\"},\"fv_mgmt\":{\"1\":\"on\"},\"emagic_type\":{\"1\":\"Basic\"},\"proceed\":\"\"}', ''),
(5, 14, 1011, 'TESTHH', '1', 14, 14, '2023-08-08', '2023-08-08 05:49:43', 24, 8325576, '{\"quot_type\":\"DC\",\"price_list\":\"1\",\"pot_id\":\"001011\",\"project_name\":\"TESTHH\",\"version\":\"  \",\"count_of_est\":\"1\",\"estmtname\":{\"1\":\"TESTH\"},\"period\":{\"1\":\"24\"},\"count_of_vm\":{\"1\":\"2\"},\"vmname\":{\"1\":[\"App\",\"DB\"]},\"region\":{\"1\":[\"Mumbai\",\"Mumbai\"]},\"sector\":{\"1\":[\"Government\",\"Government\"]},\"os\":{\"1\":[\"Windows Standard Edition\",\"Windows Standard Edition\"]},\"database\":{\"1\":[\"MS SQL Enterprise\",\"MS SQL Enterprise\"]},\"series\":{\"1\":[\"Flexible Compute\",\"Small\"]},\"vcpu\":{\"1\":[\"8\",\"8\"]},\"ram\":{\"1\":[\"16\",\"64\"]},\"inst_disk\":{\"1\":[\"500\",\"100\"]},\"vmqty\":{\"1\":[\"1\",\"01\"]},\"state\":{\"1\":[\"Standalone\",\"Standalone\"]},\"publicipversion\":{\"1\":[\"Public IPv6\",\"Public IPv6\"]},\"ip_public\":{\"1\":[\"on\",\"on\"]},\"public_ipqty\":{\"1\":[\"\",\"\"]},\"virus_type\":{\"1\":[\"Anti-Virus + HIPS\",\"Anti-Virus + HIPS\"]},\"instance\":{\"1\":[\"S13 : vCores 8 | RAM u00a064 GB | Disk - 1000 IOPS - u00a0100 GB | u20b9 u00a013.5 / hr\"]},\"03strgunit\":{\"1\":\"TB\"},\"03iopsqty\":{\"1\":\"\"},\"1strgunit\":{\"1\":\"TB\"},\"1iops\":{\"1\":\"on\"},\"1iopsqty\":{\"1\":\"\"},\"3strgunit\":{\"1\":\"TB\"},\"3iopsqty\":{\"1\":\"\"},\"5strgunit\":{\"1\":\"TB\"},\"5iopsqty\":{\"1\":\"\"},\"8strgunit\":{\"1\":\"TB\"},\"8iopsqty\":{\"1\":\"\"},\"10strgunit\":{\"1\":\"TB\"},\"10iopsqty\":{\"1\":\"\"},\"backup_strg\":{\"1\":\"1\"},\"backup_unit\":{\"1\":\"TB\"},\"age_qty_type\":{\"1\":\"All VM\"},\"ageqty\":{\"1\":\"\"},\"arc_strg\":{\"1\":\"0\"},\"archival_unit\":{\"1\":\"TB\"},\"tlqty\":{\"1\":\"\"},\"tcqty\":{\"1\":\"\"},\"fcqty\":{\"1\":\"\"},\"bandwidthType\":{\"1\":\"Speed Based Internet Bandwidth\"},\"bandwidth\":{\"1\":\"5\"},\"load_balancer\":{\"1\":\"\"},\"lbqty\":{\"1\":\"1\"},\"ccptqty\":{\"1\":\"0\"},\"sslvpn\":{\"1\":\"on\"},\"sslvpnqty\":{\"1\":\"2\"},\"ipsecqty\":{\"1\":\"\"},\"efv_throughput\":{\"1\":\"PALO ALTO- External vFirewall : 1GBPS\"},\"extfirewall\":{\"1\":\"on\"},\"extfvqty\":{\"1\":\"1\"},\"ifv_throughput\":{\"1\":\"Fortinet- Internal vFirewall : 1GBPS\"},\"intfirewall\":{\"1\":\"on\"},\"intfvqty\":{\"1\":\"1\"},\"utm\":{\"1\":\"on\"},\"ddos_throughput\":{\"1\":\"DDoS Mitigation - 512Mbps\"},\"ddos\":{\"1\":\"on\"},\"ddosqty\":{\"1\":\"1\"},\"waf_type\":{\"1\":\"eNlight : Web App Firewall\"},\"waf\":{\"1\":\"on\"},\"wafqty\":{\"1\":\"1\"},\"ssl\":{\"1\":\"Alpha SSL Certificate\"},\"ssl-check\":{\"1\":\"on\"},\"sslqty\":{\"1\":\"1\"},\"siem_name\":{\"1\":\"SECEON SIEM\"},\"siem\":{\"1\":\"on\"},\"pim\":{\"1\":\"on\"},\"pimqty\":{\"1\":\"2\"},\"vtm\":{\"1\":\"on\"},\"vtmqty\":{\"1\":\"1 scans per month\"},\"vapt_type\":{\"1\":\"CERTIN- VAPT Audit\"},\"vapt\":{\"1\":\"on\"},\"vaptqty\":{\"1\":\"1\"},\"vapt_frequency\":{\"1\":\"Year\"},\"hsm_type\":{\"1\":\"Shared HSM\"},\"hsm\":{\"1\":\"on\"},\"hsmqty\":{\"1\":\"1\"},\"tfaqty\":{\"1\":\"\"},\"iam\":{\"1\":\"on\"},\"iamqty\":{\"1\":\"2\"},\"dlp\":{\"1\":\"on\"},\"dlpqty\":{\"1\":\"2\"},\"edr\":{\"1\":\"on\"},\"edrqty\":{\"1\":\"2\"},\"dam\":{\"1\":\"on\"},\"damqty\":{\"1\":\"2\"},\"sor\":{\"1\":\"on\"},\"sorqty\":{\"1\":\"1\"},\"osmgmt\":{\"1\":\"on\"},\"dbmgmt\":{\"1\":\"on\"},\"strgmgmt\":{\"1\":\"on\"},\"backmgmt\":{\"1\":\"on\"},\"lb_mgmt\":{\"1\":\"on\"},\"fv_mgmt\":{\"1\":\"on\"},\"wafmgmt\":{\"1\":\"on\"},\"emagic_type\":{\"1\":\"Basic\"},\"proceed\":\"\"}', ''),
(6, 5430, 6669, 'PGCIL', '1', 5430, 5430, '2023-08-08', '2023-08-08 10:20:57', 2, 1140309, '{\"quot_type\":\"DC\",\"price_list\":\"1\",\"pot_id\":\"6669\",\"project_name\":\"PGCIL\",\"version\":\"  \",\"count_of_est\":\"1\",\"estmtname\":{\"1\":\"T1-T2 Months\"},\"period\":{\"1\":\"2\"},\"count_of_vm\":{\"1\":\"5\"},\"vmname\":{\"1\":[\"App Server\",\"Master and Meter data DB (live data for 3 years)\",\"Application, Web, Integration services\",\"Main Database\",\"Kafka\"]},\"region\":{\"1\":[\"Nashik\",\"Nashik\",\"Nashik\",\"Nashik\",\"Nashik\"]},\"sector\":{\"1\":[\"Government\",\"Government\",\"Government\",\"Government\",\"Government\"]},\"os\":{\"1\":[\"Windows Standard Edition\",\"Windows Standard Edition\",\"Windows Standard Edition\",\"Windows Standard Edition\",\"Linux : UBUNTU\"]},\"database\":{\"1\":[\"NA\",\"MS SQL Standard\",\"NA\",\"MS SQL Standard\",\"NA\"]},\"series\":{\"1\":[\"All\",\"All\",\"All\",\"All\",\"All\"]},\"instance\":{\"1\":[\"M7 : vCores 12 | RAM u00a032 GB | Disk - 1000 IOPS - u00a0100 GB | u20b9 u00a011.7 / hr\",\"S11 : vCores 8 | RAM u00a032 GB | Disk - 1000 IOPS - u00a0100 GB | u20b9 u00a011 / hr\",\"M7 : vCores 12 | RAM u00a032 GB | Disk - 1000 IOPS - u00a0100 GB | u20b9 u00a011.7 / hr\",\"S11 : vCores 8 | RAM u00a032 GB | Disk - 1000 IOPS - u00a0100 GB | u20b9 u00a011 / hr\",\"S3 : vCores 4 | RAM u00a08 GB | Disk - 1000 IOPS - u00a0100 GB | u20b9 u00a08.3 / hr\"]},\"vcpu\":{\"1\":[\"12\",\"8\",\"12\",\"8\",\"4\"]},\"ram\":{\"1\":[\"32\",\"32\",\"32\",\"32\",\"8\"]},\"inst_disk\":{\"1\":[\"100\",\"100\",\"100\",\"100\",\"100\"]},\"vmqty\":{\"1\":[\"01\",\"02\",\"01\",\"02\",\"01\"]},\"state\":{\"1\":[\"Active\",\"Active\",\"Active\",\"Active\",\"Active\"]},\"publicipversion\":{\"1\":[\"Public IPv6\",\"Public IPv6\",\"Public IPv6\",\"Public IPv6\",\"Public IPv6\"]},\"ip_public\":{\"1\":[\"on\"]},\"public_ipqty\":{\"1\":[\"9\",\"\",\"\",\"\",\"\"]},\"virus_type\":{\"1\":[\"Anti-Virus + HIPS\",\"Anti-Virus + HIPS\",\"Anti-Virus + HIPS\",\"Anti-Virus + HIPS\",\"Anti-Virus + HIPS\"]},\"03strgunit\":{\"1\":\"TB\"},\"03iops\":{\"1\":\"on\"},\"03iopsqty\":{\"1\":\"2.7\"},\"1strgunit\":{\"1\":\"TB\"},\"1iopsqty\":{\"1\":\"\"},\"3strgunit\":{\"1\":\"TB\"},\"3iopsqty\":{\"1\":\"\"},\"5strgunit\":{\"1\":\"TB\"},\"5iopsqty\":{\"1\":\"\"},\"8strgunit\":{\"1\":\"TB\"},\"8iopsqty\":{\"1\":\"\"},\"10strgunit\":{\"1\":\"TB\"},\"10iopsqty\":{\"1\":\"\"},\"backup_strg\":{\"1\":\"0.8\"},\"backup_unit\":{\"1\":\"TB\"},\"age_qty_type\":{\"1\":\"\"},\"ageqty\":{\"1\":\"\"},\"arc_strg\":{\"1\":\"\"},\"archival_unit\":{\"1\":\"TB\"},\"tlqty\":{\"1\":\"\"},\"tcqty\":{\"1\":\"\"},\"fcqty\":{\"1\":\"\"},\"bandwidthType\":{\"1\":\"Speed Based Internet Bandwidth\"},\"bandwidth\":{\"1\":\"50\"},\"load_balancer\":{\"1\":\"Load Balancer : HA Proxy\"},\"lbqty\":{\"1\":\"2\"},\"ccptqty\":{\"1\":\"2\"},\"sslvpnqty\":{\"1\":\"\"},\"ipsecqty\":{\"1\":\"\"},\"efv_throughput\":{\"1\":\"Fortinet- External vFirewall : 1GBPS\"},\"extfirewall\":{\"1\":\"on\"},\"extfvqty\":{\"1\":\"2\"},\"ifv_throughput\":{\"1\":\"Fortinet- Internal vFirewall : 1GBPS\"},\"intfirewall\":{\"1\":\"on\"},\"intfvqty\":{\"1\":\"2\"},\"utm\":{\"1\":\"on\"},\"ddos_throughput\":{\"1\":\"DDoS Mitigation - 1Gbps\"},\"ddos\":{\"1\":\"on\"},\"ddosqty\":{\"1\":\"1\"},\"waf_type\":{\"1\":\"eNlight : Web App Firewall\"},\"waf\":{\"1\":\"on\"},\"wafqty\":{\"1\":\"2\"},\"ssl\":{\"1\":\"Domain WildCard SSL Certificate\"},\"ssl-check\":{\"1\":\"on\"},\"sslqty\":{\"1\":\"1\"},\"siem_name\":{\"1\":\"SECEON SIEM\"},\"siem\":{\"1\":\"on\"},\"pimqty\":{\"1\":\"\"},\"vtm\":{\"1\":\"on\"},\"vtmqty\":{\"1\":\"4 scans per month\"},\"vapt_type\":{\"1\":\"CERTIN- VAPT Audit\"},\"vapt\":{\"1\":\"on\"},\"vaptqty\":{\"1\":\"2\"},\"vapt_frequency\":{\"1\":\"Year\"},\"hsm_type\":{\"1\":\"\"},\"hsmqty\":{\"1\":\"\"},\"tfaqty\":{\"1\":\"\"},\"iam\":{\"1\":\"on\"},\"iamqty\":{\"1\":\"50\"},\"dlpqty\":{\"1\":\"\"},\"edrqty\":{\"1\":\"\"},\"damqty\":{\"1\":\"\"},\"sorqty\":{\"1\":\"\"},\"osmgmt\":{\"1\":\"on\"},\"dbmgmt\":{\"1\":\"on\"},\"strgmgmt\":{\"1\":\"on\"},\"backmgmt\":{\"1\":\"on\"},\"lb_mgmt\":{\"1\":\"on\"},\"fv_mgmt\":{\"1\":\"on\"},\"wafmgmt\":{\"1\":\"on\"},\"emagic_type\":{\"1\":\"Basic\"},\"proceed\":\"\"}', ''),
(9, 5430, 6669, 'PGCIL', '2', 5430, 5430, '2023-08-08', '2023-08-08 10:30:50', 2, 2484274, '{\"quot_type\":\"DC\",\"price_list\":\"1\",\"pot_id\":\"6669\",\"project_name\":\"PGCIL\",\"version\":\"  \",\"count_of_est\":\"2\",\"estmtname\":{\"1\":\"T1-T2 Months\",\"2\":\"T3-T6 Months\"},\"period\":{\"1\":\"2\",\"2\":\"4\"},\"count_of_vm\":{\"1\":\"5\",\"2\":\"1\"},\"vmname\":{\"1\":[\"App Server\",\"Master and Meter data DB (live data for 3 years)\",\"Application, Web, Integration services\",\"Main Database\",\"Kafka\"],\"2\":[\"Integration services\"]},\"region\":{\"1\":[\"Nashik\",\"Nashik\",\"Nashik\",\"Nashik\",\"Nashik\"],\"2\":[\"Nashik\"]},\"sector\":{\"1\":[\"Government\",\"Government\",\"Government\",\"Government\",\"Government\"],\"2\":[\"Government\"]},\"os\":{\"1\":[\"Windows Standard Edition\",\"Windows Standard Edition\",\"Windows Standard Edition\",\"Windows Standard Edition\",\"Linux : UBUNTU\"],\"2\":[\"Windows Standard Edition\"]},\"database\":{\"1\":[\"NA\",\"MS SQL Standard\",\"NA\",\"MS SQL Standard\",\"NA\"],\"2\":[\"NA\"]},\"series\":{\"1\":[\"All\",\"All\",\"All\",\"All\",\"All\"],\"2\":[\"All\"]},\"instance\":{\"1\":[\"M7 : vCores 12 | RAM u00a032 GB | Disk - 1000 IOPS - u00a0100 GB | u20b9 u00a011.7 / hr\",\"S11 : vCores 8 | RAM u00a032 GB | Disk - 1000 IOPS - u00a0100 GB | u20b9 u00a011 / hr\",\"M7 : vCores 12 | RAM u00a032 GB | Disk - 1000 IOPS - u00a0100 GB | u20b9 u00a011.7 / hr\",\"S11 : vCores 8 | RAM u00a032 GB | Disk - 1000 IOPS - u00a0100 GB | u20b9 u00a011 / hr\",\"S3 : vCores 4 | RAM u00a08 GB | Disk - 1000 IOPS - u00a0100 GB | u20b9 u00a08.3 / hr\"],\"2\":[\"M6 : vCores 12 | RAM u00a016 GB | Disk - 1000 IOPS - u00a0100 GB | u20b9 u00a010.1 / hr\"]},\"vcpu\":{\"1\":[\"12\",\"8\",\"12\",\"8\",\"4\"],\"2\":[\"12\"]},\"ram\":{\"1\":[\"32\",\"32\",\"32\",\"32\",\"8\"],\"2\":[\"16\"]},\"inst_disk\":{\"1\":[\"100\",\"100\",\"100\",\"100\",\"100\"],\"2\":[\"100\"]},\"vmqty\":{\"1\":[\"01\",\"02\",\"01\",\"02\",\"01\"],\"2\":[\"02\"]},\"state\":{\"1\":[\"Active\",\"Active\",\"Active\",\"Active\",\"Active\"],\"2\":[\"Active\"]},\"publicipversion\":{\"1\":[\"Public IPv6\",\"Public IPv6\",\"Public IPv6\",\"Public IPv6\",\"Public IPv6\"],\"2\":[\"Public IPv6\"]},\"ip_public\":{\"1\":[\"on\"],\"2\":[\"on\"]},\"public_ipqty\":{\"1\":[\"9\",\"\",\"\",\"\",\"\"],\"2\":[\"9\"]},\"virus_type\":{\"1\":[\"Anti-Virus + HIPS\",\"Anti-Virus + HIPS\",\"Anti-Virus + HIPS\",\"Anti-Virus + HIPS\",\"Anti-Virus + HIPS\"],\"2\":[\"Anti-Virus + HIPS\"]},\"03strgunit\":{\"1\":\"TB\",\"2\":\"TB\"},\"03iops\":{\"1\":\"on\",\"2\":\"on\"},\"03iopsqty\":{\"1\":\"2.7\",\"2\":\"27.4\"},\"1strgunit\":{\"1\":\"TB\",\"2\":\"TB\"},\"1iopsqty\":{\"1\":\"\",\"2\":\"\"},\"3strgunit\":{\"1\":\"TB\",\"2\":\"TB\"},\"3iopsqty\":{\"1\":\"\",\"2\":\"\"},\"5strgunit\":{\"1\":\"TB\",\"2\":\"TB\"},\"5iopsqty\":{\"1\":\"\",\"2\":\"\"},\"8strgunit\":{\"1\":\"TB\",\"2\":\"TB\"},\"8iopsqty\":{\"1\":\"\",\"2\":\"\"},\"10strgunit\":{\"1\":\"TB\",\"2\":\"TB\"},\"10iopsqty\":{\"1\":\"\",\"2\":\"\"},\"backup_strg\":{\"1\":\"0.8\",\"2\":\"3\"},\"backup_unit\":{\"1\":\"TB\",\"2\":\"TB\"},\"age_qty_type\":{\"1\":\"\",\"2\":\"\"},\"ageqty\":{\"1\":\"\",\"2\":\"\"},\"arc_strg\":{\"1\":\"\",\"2\":\"\"},\"archival_unit\":{\"1\":\"TB\",\"2\":\"TB\"},\"tlqty\":{\"1\":\"\",\"2\":\"\"},\"tcqty\":{\"1\":\"\",\"2\":\"\"},\"fcqty\":{\"1\":\"\",\"2\":\"\"},\"bandwidthType\":{\"1\":\"Speed Based Internet Bandwidth\",\"2\":\"Speed Based Internet Bandwidth\"},\"bandwidth\":{\"1\":\"50\",\"2\":\"50\"},\"load_balancer\":{\"1\":\"Load Balancer : HA Proxy\",\"2\":\"Load Balancer : HA Proxy\"},\"lbqty\":{\"1\":\"2\",\"2\":\"2\"},\"ccptqty\":{\"1\":\"2\",\"2\":\"2\"},\"sslvpnqty\":{\"1\":\"\",\"2\":\"\"},\"ipsecqty\":{\"1\":\"\",\"2\":\"\"},\"efv_throughput\":{\"1\":\"Fortinet- External vFirewall : 1GBPS\",\"2\":\"Fortinet- External vFirewall : 1GBPS\"},\"extfirewall\":{\"1\":\"on\",\"2\":\"on\"},\"extfvqty\":{\"1\":\"2\",\"2\":\"2\"},\"ifv_throughput\":{\"1\":\"Fortinet- Internal vFirewall : 1GBPS\",\"2\":\"Fortinet- Internal vFirewall : 1GBPS\"},\"intfirewall\":{\"1\":\"on\",\"2\":\"on\"},\"intfvqty\":{\"1\":\"2\",\"2\":\"2\"},\"utm\":{\"1\":\"on\",\"2\":\"on\"},\"ddos_throughput\":{\"1\":\"DDoS Mitigation - 1Gbps\",\"2\":\"DDoS Mitigation - 1Gbps\"},\"ddos\":{\"1\":\"on\",\"2\":\"on\"},\"ddosqty\":{\"1\":\"1\",\"2\":\"1\"},\"waf_type\":{\"1\":\"eNlight : Web App Firewall\",\"2\":\"eNlight : Web App Firewall\"},\"waf\":{\"1\":\"on\",\"2\":\"on\"},\"wafqty\":{\"1\":\"2\",\"2\":\"2\"},\"ssl\":{\"1\":\"Domain WildCard SSL Certificate\",\"2\":\"Domain WildCard SSL Certificate\"},\"ssl-check\":{\"1\":\"on\",\"2\":\"on\"},\"sslqty\":{\"1\":\"1\",\"2\":\"1\"},\"siem_name\":{\"1\":\"SECEON SIEM\",\"2\":\"SECEON SIEM\"},\"siem\":{\"1\":\"on\",\"2\":\"on\"},\"pimqty\":{\"1\":\"\",\"2\":\"\"},\"vtm\":{\"1\":\"on\",\"2\":\"on\"},\"vtmqty\":{\"1\":\"4 scans per month\",\"2\":\"4 scans per month\"},\"vapt_type\":{\"1\":\"CERTIN- VAPT Audit\",\"2\":\"CERTIN- VAPT Audit\"},\"vapt\":{\"1\":\"on\",\"2\":\"on\"},\"vaptqty\":{\"1\":\"2\",\"2\":\"2\"},\"vapt_frequency\":{\"1\":\"Year\",\"2\":\"Year\"},\"hsm_type\":{\"1\":\"\",\"2\":\"\"},\"hsmqty\":{\"1\":\"\",\"2\":\"\"},\"tfaqty\":{\"1\":\"\",\"2\":\"\"},\"iam\":{\"1\":\"on\",\"2\":\"on\"},\"iamqty\":{\"1\":\"50\",\"2\":\"50\"},\"dlpqty\":{\"1\":\"\",\"2\":\"\"},\"edrqty\":{\"1\":\"\",\"2\":\"\"},\"damqty\":{\"1\":\"\",\"2\":\"\"},\"sorqty\":{\"1\":\"\",\"2\":\"\"},\"osmgmt\":{\"1\":\"on\",\"2\":\"on\"},\"dbmgmt\":{\"1\":\"on\",\"2\":\"on\"},\"strgmgmt\":{\"1\":\"on\",\"2\":\"on\"},\"backmgmt\":{\"1\":\"on\",\"2\":\"on\"},\"lb_mgmt\":{\"1\":\"on\",\"2\":\"on\"},\"fv_mgmt\":{\"1\":\"on\",\"2\":\"on\"},\"wafmgmt\":{\"1\":\"on\",\"2\":\"on\"},\"emagic_type\":{\"1\":\"Basic\",\"2\":\"Basic\"},\"drillqty\":{\"2\":\"\"},\"drill_frequency\":{\"2\":\"Year\"},\"rep_link_type\":{\"2\":\"\"},\"rep_link_qty\":{\"2\":\"\"},\"proceed\":\"\"}', ''),
(10, 5430, 6669, 'PGCIL', '2', 5430, 5430, '2023-08-08', '2023-08-08 11:35:20', 2, 8979042, '{\"quot_type\":\"DC\",\"price_list\":\"1\",\"pot_id\":\"6669\",\"project_name\":\"PGCIL\",\"version\":\"  \",\"count_of_est\":\"2\",\"estmtname\":{\"1\":\"T1-T2 Months\",\"2\":\"T3-T6 Months\"},\"period\":{\"1\":\"2\",\"2\":\"4\"},\"count_of_vm\":{\"1\":\"5\",\"2\":\"18\"},\"vmname\":{\"1\":[\"App Server\",\"Master and Meter data DB (live data for 3 years)\",\"Application, Web, Integration services\",\"Main Database\",\"Kafka\"],\"2\":[\"Integration services\",\"Scheduler\",\"App Server (VEE, web, exeption)\",\"Master and Meter data DB (live data for 3 years)\",\"App Server\",\"Master and Meter data DB (live data for 3 years)\",\"Communication Servers P2P (Push\\Pull)\",\"Communication Servers RF (Push\\Pull)\",\"SLA Monitoring\",\"InfluxDB\",\"RabbitMQ\",\"Web and Integration Services\",\"App Services\",\"Main Database\",\"Kafka cluster (distributed among DC & DR Location)\",\"Application, Web, Integration services\",\"Main Database\",\"Kafka\"]},\"region\":{\"1\":[\"Nashik\",\"Nashik\",\"Nashik\",\"Nashik\",\"Nashik\"],\"2\":[\"Nashik\",\"Nashik\",\"Nashik\",\"Nashik\",\"Nashik\",\"Nashik\",\"Nashik\",\"Nashik\",\"Nashik\",\"Nashik\",\"Nashik\",\"Nashik\",\"Nashik\",\"Nashik\",\"Nashik\",\"Nashik\",\"Nashik\",\"Nashik\"]},\"sector\":{\"1\":[\"Government\",\"Government\",\"Government\",\"Government\",\"Government\"],\"2\":[\"Government\",\"Government\",\"Government\",\"Government\",\"Government\",\"Government\",\"Government\",\"Government\",\"Government\",\"Government\",\"Government\",\"Government\",\"Government\",\"Government\",\"Government\",\"Government\",\"Government\",\"Government\"]},\"os\":{\"1\":[\"Windows Standard Edition\",\"Windows Standard Edition\",\"Windows Standard Edition\",\"Windows Standard Edition\",\"Linux : UBUNTU\"],\"2\":[\"Windows Standard Edition\",\"Windows Standard Edition\",\"Windows Standard Edition\",\"Windows Standard Edition\",\"Windows Standard Edition\",\"Windows Standard Edition\",\"Windows Standard Edition\",\"Windows Standard Edition\",\"Windows Standard Edition\",\"Linux : UBUNTU\",\"Linux : UBUNTU\",\"Windows Standard Edition\",\"Windows Standard Edition\",\"Windows Standard Edition\",\"Linux : UBUNTU\",\"Windows Standard Edition\",\"Windows Standard Edition\",\"Linux : UBUNTU\"]},\"database\":{\"1\":[\"NA\",\"MS SQL Standard\",\"NA\",\"MS SQL Standard\",\"NA\"],\"2\":[\"NA\",\"NA\",\"NA\",\"MS SQL Standard\",\"NA\",\"MS SQL Standard\",\"NA\",\"NA\",\"NA\",\"NA\",\"NA\",\"NA\",\"NA\",\"MS SQL Standard\",\"NA\",\"NA\",\"MS SQL Standard\",\"NA\"]},\"series\":{\"1\":[\"All\",\"All\",\"All\",\"All\",\"All\"],\"2\":[\"All\",\"All\",\"All\",\"All\",\"All\",\"All\",\"All\",\"All\",\"All\",\"All\",\"All\",\"All\",\"All\",\"All\",\"All\",\"All\",\"All\",\"All\"]},\"instance\":{\"1\":[\"M7 : vCores 12 | RAM u00a032 GB | Disk - 1000 IOPS - u00a0100 GB | u20b9 u00a011.7 / hr\",\"S11 : vCores 8 | RAM u00a032 GB | Disk - 1000 IOPS - u00a0100 GB | u20b9 u00a011 / hr\",\"M7 : vCores 12 | RAM u00a032 GB | Disk - 1000 IOPS - u00a0100 GB | u20b9 u00a011.7 / hr\",\"S11 : vCores 8 | RAM u00a032 GB | Disk - 1000 IOPS - u00a0100 GB | u20b9 u00a011 / hr\",\"S3 : vCores 4 | RAM u00a08 GB | Disk - 1000 IOPS - u00a0100 GB | u20b9 u00a08.3 / hr\"],\"2\":[\"M6 : vCores 12 | RAM u00a016 GB | Disk - 1000 IOPS - u00a0100 GB | u20b9 u00a010.1 / hr\",\"M6 : vCores 12 | RAM u00a016 GB | Disk - 1000 IOPS - u00a0100 GB | u20b9 u00a010.1 / hr\",\"M8 : vCores 12 | RAM u00a048 GB | Disk - 1000 IOPS - u00a0100 GB | u20b9 u00a013.4 / hr\",\"L8 : vCores 32 | RAM  128 GB | Disk - 1000 IOPS -  100 GB | u20b9  18.1 / hr\",\"M7 : vCores 12 | RAM u00a032 GB | Disk - 1000 IOPS - u00a0100 GB | u20b9 u00a011.7 / hr\",\"S11 : vCores 8 | RAM u00a032 GB | Disk - 1000 IOPS - u00a0100 GB | u20b9 u00a011 / hr\",\"S4 : vCores 4 | RAM u00a016 GB | Disk - 1000 IOPS - u00a0100 GB | u20b9 u00a09.1 / hr\",\"S4 : vCores 4 | RAM u00a016 GB | Disk - 1000 IOPS - u00a0100 GB | u20b9 u00a09.1 / hr\",\"M7 : vCores 12 | RAM u00a032 GB | Disk - 1000 IOPS - u00a0100 GB | u20b9 u00a011.7 / hr\",\"S3 : vCores 4 | RAM u00a08 GB | Disk - 1000 IOPS - u00a0100 GB | u20b9 u00a08.3 / hr\",\"S3 : vCores 4 | RAM u00a08 GB | Disk - 1000 IOPS - u00a0100 GB | u20b9 u00a08.3 / hr\",\"S10 : vCores 8 | RAM u00a016 GB | Disk - 1000 IOPS - u00a0100 GB | u20b9 u00a09.4 / hr\",\"S4 : vCores 4 | RAM u00a016 GB | Disk - 1000 IOPS - u00a0100 GB | u20b9 u00a09.1 / hr\",\"L4 : vCores 16 | RAM u00a0128 GB | Disk - 1000 IOPS - u00a0100 GB | u20b9 u00a022.1 / hr\",\"S3 : vCores 4 | RAM u00a08 GB | Disk - 1000 IOPS - u00a0100 GB | u20b9 u00a08.3 / hr\",\"M7 : vCores 12 | RAM u00a032 GB | Disk - 1000 IOPS - u00a0100 GB | u20b9 u00a011.7 / hr\",\"S11 : vCores 8 | RAM u00a032 GB | Disk - 1000 IOPS - u00a0100 GB | u20b9 u00a011 / hr\",\"S3 : vCores 4 | RAM u00a08 GB | Disk - 1000 IOPS - u00a0100 GB | u20b9 u00a08.3 / hr\"]},\"vcpu\":{\"1\":[\"12\",\"8\",\"12\",\"8\",\"4\"],\"2\":[\"12\",\"12\",\"12\",\"32\",\"12\",\"8\",\"4\",\"4\",\"12\",\"4\",\"4\",\"8\",\"4\",\"16\",\"4\",\"12\",\"8\"]},\"ram\":{\"1\":[\"32\",\"32\",\"32\",\"32\",\"8\"],\"2\":[\"16\",\"16\",\"48\",\"128\",\"32\",\"32\",\"16\",\"16\",\"32\",\"8\",\"8\",\"16\",\"16\",\"128\",\"8\",\"32\",\"32\"]},\"inst_disk\":{\"1\":[\"100\",\"100\",\"100\",\"100\",\"100\"],\"2\":[\"100\",\"100\",\"100\",\"100\",\"100\",\"100\",\"100\",\"100\",\"100\",\"100\",\"100\",\"100\",\"100\",\"100\",\"100\",\"100\",\"100\"]},\"vmqty\":{\"1\":[\"01\",\"02\",\"01\",\"02\",\"01\"],\"2\":[\"02\",\"02\",\"04\",\"02\",\"01\",\"02\",\"05\",\"03\",\"02\",\"02\",\"02\",\"04\",\"04\",\"2\",\"04\",\"01\",\"2\",\"1\"]},\"state\":{\"1\":[\"Active\",\"Active\",\"Active\",\"Active\",\"Active\"],\"2\":[\"Active\",\"Active\",\"Active\",\"Active\",\"Active\",\"Active\",\"Active\",\"Active\",\"Active\",\"Active\",\"Active\",\"Active\",\"Active\",\"Active\",\"Active\",\"Active\",\"Active\",\"Active\"]},\"publicipversion\":{\"1\":[\"Public IPv6\",\"Public IPv6\",\"Public IPv6\",\"Public IPv6\",\"Public IPv6\"],\"2\":[\"Public IPv6\",\"Public IPv6\",\"Public IPv6\",\"Public IPv6\",\"Public IPv6\",\"Public IPv6\",\"Public IPv6\",\"Public IPv6\",\"Public IPv6\",\"Public IPv6\",\"Public IPv6\",\"Public IPv6\",\"Public IPv6\",\"Public IPv6\",\"Public IPv6\",\"Public IPv6\",\"Public IPv6\",\"Public IPv6\"]},\"ip_public\":{\"1\":[\"on\"],\"2\":[\"on\"]},\"public_ipqty\":{\"1\":[\"9\",\"\",\"\",\"\",\"\"],\"2\":[\"9\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"]},\"virus_type\":{\"1\":[\"Anti-Virus + HIPS\",\"Anti-Virus + HIPS\",\"Anti-Virus + HIPS\",\"Anti-Virus + HIPS\",\"Anti-Virus + HIPS\"],\"2\":[\"Anti-Virus + HIPS\",\"Anti-Virus + HIPS\",\"Anti-Virus + HIPS\",\"Anti-Virus + HIPS\",\"Anti-Virus + HIPS\",\"Anti-Virus + HIPS\",\"Anti-Virus + HIPS\",\"Anti-Virus + HIPS\",\"Anti-Virus + HIPS\",\"Anti-Virus + HIPS\",\"Anti-Virus + HIPS\",\"Anti-Virus + HIPS\",\"Anti-Virus + HIPS\",\"Anti-Virus + HIPS\",\"Anti-Virus + HIPS\",\"Anti-Virus + HIPS\",\"Anti-Virus + HIPS\",\"Anti-Virus + HIPS\"]},\"03strgunit\":{\"1\":\"TB\",\"2\":\"TB\"},\"03iops\":{\"1\":\"on\",\"2\":\"on\"},\"03iopsqty\":{\"1\":\"2.7\",\"2\":\"27.4\"},\"1strgunit\":{\"1\":\"TB\",\"2\":\"TB\"},\"1iopsqty\":{\"1\":\"\",\"2\":\"\"},\"3strgunit\":{\"1\":\"TB\",\"2\":\"TB\"},\"3iopsqty\":{\"1\":\"\",\"2\":\"\"},\"5strgunit\":{\"1\":\"TB\",\"2\":\"TB\"},\"5iopsqty\":{\"1\":\"\",\"2\":\"\"},\"8strgunit\":{\"1\":\"TB\",\"2\":\"TB\"},\"8iopsqty\":{\"1\":\"\",\"2\":\"\"},\"10strgunit\":{\"1\":\"TB\",\"2\":\"TB\"},\"10iopsqty\":{\"1\":\"\",\"2\":\"\"},\"backup_strg\":{\"1\":\"0.8\",\"2\":\"3\"},\"backup_unit\":{\"1\":\"TB\",\"2\":\"TB\"},\"age_qty_type\":{\"1\":\"\",\"2\":\"\"},\"ageqty\":{\"1\":\"\",\"2\":\"\"},\"arc_strg\":{\"1\":\"\",\"2\":\"\"},\"archival_unit\":{\"1\":\"TB\",\"2\":\"TB\"},\"tlqty\":{\"1\":\"\",\"2\":\"\"},\"tcqty\":{\"1\":\"\",\"2\":\"\"},\"fcqty\":{\"1\":\"\",\"2\":\"\"},\"bandwidthType\":{\"1\":\"Speed Based Internet Bandwidth\",\"2\":\"Speed Based Internet Bandwidth\"},\"bandwidth\":{\"1\":\"50\",\"2\":\"50\"},\"load_balancer\":{\"1\":\"Load Balancer : HA Proxy\",\"2\":\"Load Balancer : HA Proxy\"},\"lbqty\":{\"1\":\"2\",\"2\":\"2\"},\"ccptqty\":{\"1\":\"2\",\"2\":\"2\"},\"sslvpnqty\":{\"1\":\"\",\"2\":\"\"},\"ipsecqty\":{\"1\":\"\",\"2\":\"\"},\"efv_throughput\":{\"1\":\"Fortinet- External vFirewall : 1GBPS\",\"2\":\"Fortinet- External vFirewall : 1GBPS\"},\"extfirewall\":{\"1\":\"on\",\"2\":\"on\"},\"extfvqty\":{\"1\":\"2\",\"2\":\"2\"},\"ifv_throughput\":{\"1\":\"Fortinet- Internal vFirewall : 1GBPS\",\"2\":\"Fortinet- Internal vFirewall : 1GBPS\"},\"intfirewall\":{\"1\":\"on\",\"2\":\"on\"},\"intfvqty\":{\"1\":\"2\",\"2\":\"2\"},\"utm\":{\"1\":\"on\",\"2\":\"on\"},\"ddos_throughput\":{\"1\":\"DDoS Mitigation - 1Gbps\",\"2\":\"DDoS Mitigation - 1Gbps\"},\"ddos\":{\"1\":\"on\",\"2\":\"on\"},\"ddosqty\":{\"1\":\"1\",\"2\":\"1\"},\"waf_type\":{\"1\":\"eNlight : Web App Firewall\",\"2\":\"eNlight : Web App Firewall\"},\"waf\":{\"1\":\"on\",\"2\":\"on\"},\"wafqty\":{\"1\":\"2\",\"2\":\"2\"},\"ssl\":{\"1\":\"Domain WildCard SSL Certificate\",\"2\":\"Domain WildCard SSL Certificate\"},\"ssl-check\":{\"1\":\"on\",\"2\":\"on\"},\"sslqty\":{\"1\":\"1\",\"2\":\"1\"},\"siem_name\":{\"1\":\"SECEON SIEM\",\"2\":\"SECEON SIEM\"},\"siem\":{\"1\":\"on\",\"2\":\"on\"},\"pimqty\":{\"1\":\"\",\"2\":\"\"},\"vtm\":{\"1\":\"on\",\"2\":\"on\"},\"vtmqty\":{\"1\":\"4 scans per month\",\"2\":\"4 scans per month\"},\"vapt_type\":{\"1\":\"CERTIN- VAPT Audit\",\"2\":\"CERTIN- VAPT Audit\"},\"vapt\":{\"1\":\"on\",\"2\":\"on\"},\"vaptqty\":{\"1\":\"2\",\"2\":\"2\"},\"vapt_frequency\":{\"1\":\"Year\",\"2\":\"Year\"},\"hsm_type\":{\"1\":\"\",\"2\":\"\"},\"hsmqty\":{\"1\":\"\",\"2\":\"\"},\"tfaqty\":{\"1\":\"\",\"2\":\"\"},\"iam\":{\"1\":\"on\",\"2\":\"on\"},\"iamqty\":{\"1\":\"50\",\"2\":\"50\"},\"dlpqty\":{\"1\":\"\",\"2\":\"\"},\"edrqty\":{\"1\":\"\",\"2\":\"\"},\"damqty\":{\"1\":\"\",\"2\":\"\"},\"sorqty\":{\"1\":\"\",\"2\":\"\"},\"osmgmt\":{\"1\":\"on\",\"2\":\"on\"},\"dbmgmt\":{\"1\":\"on\",\"2\":\"on\"},\"strgmgmt\":{\"1\":\"on\",\"2\":\"on\"},\"backmgmt\":{\"1\":\"on\",\"2\":\"on\"},\"lb_mgmt\":{\"1\":\"on\",\"2\":\"on\"},\"fv_mgmt\":{\"1\":\"on\",\"2\":\"on\"},\"wafmgmt\":{\"1\":\"on\",\"2\":\"on\"},\"emagic_type\":{\"1\":\"Basic\",\"2\":\"Basic\"},\"drillqty\":{\"2\":\"\"},\"drill_frequency\":{\"2\":\"Year\"},\"rep_link_type\":{\"2\":\"\"},\"rep_link_qty\":{\"2\":\"\"},\"proceed\":\"\"}', ''),
(11, 5430, 6669, 'PGCIL', '2', 5430, 5430, '2023-08-08', '2023-08-08 11:39:38', 2, 8979042, '{\"quot_type\":\"DC\",\"price_list\":\"1\",\"pot_id\":\"6669\",\"project_name\":\"PGCIL\",\"version\":\"  \",\"count_of_est\":\"2\",\"estmtname\":{\"1\":\"T1-T2 Months\",\"2\":\"T3-T6 Months\"},\"period\":{\"1\":\"2\",\"2\":\"4\"},\"count_of_vm\":{\"1\":\"5\",\"2\":\"18\"},\"vmname\":{\"1\":[\"App Server\",\"Master and Meter data DB (live data for 3 years)\",\"Application, Web, Integration services\",\"Main Database\",\"Kafka\"],\"2\":[\"Integration services\",\"Scheduler\",\"App Server (VEE, web, exeption)\",\"Master and Meter data DB (live data for 3 years)\",\"App Server\",\"Master and Meter data DB (live data for 3 years)\",\"Communication Servers P2P (Push\\Pull)\",\"Communication Servers RF (Push\\Pull)\",\"SLA Monitoring\",\"InfluxDB\",\"RabbitMQ\",\"Web and Integration Services\",\"App Services\",\"Main Database\",\"Kafka cluster (distributed among DC & DR Location)\",\"Application, Web, Integration services\",\"Main Database\",\"Kafka\"]},\"region\":{\"1\":[\"Nashik\",\"Nashik\",\"Nashik\",\"Nashik\",\"Nashik\"],\"2\":[\"Nashik\",\"Nashik\",\"Nashik\",\"Nashik\",\"Nashik\",\"Nashik\",\"Nashik\",\"Nashik\",\"Nashik\",\"Nashik\",\"Nashik\",\"Nashik\",\"Nashik\",\"Nashik\",\"Nashik\",\"Nashik\",\"Nashik\",\"Nashik\"]},\"sector\":{\"1\":[\"Government\",\"Government\",\"Government\",\"Government\",\"Government\"],\"2\":[\"Government\",\"Government\",\"Government\",\"Government\",\"Government\",\"Government\",\"Government\",\"Government\",\"Government\",\"Government\",\"Government\",\"Government\",\"Government\",\"Government\",\"Government\",\"Government\",\"Government\",\"Government\"]},\"os\":{\"1\":[\"Windows Standard Edition\",\"Windows Standard Edition\",\"Windows Standard Edition\",\"Windows Standard Edition\",\"Linux : UBUNTU\"],\"2\":[\"Windows Standard Edition\",\"Windows Standard Edition\",\"Windows Standard Edition\",\"Windows Standard Edition\",\"Windows Standard Edition\",\"Windows Standard Edition\",\"Windows Standard Edition\",\"Windows Standard Edition\",\"Windows Standard Edition\",\"Linux : UBUNTU\",\"Linux : UBUNTU\",\"Windows Standard Edition\",\"Windows Standard Edition\",\"Windows Standard Edition\",\"Linux : UBUNTU\",\"Windows Standard Edition\",\"Windows Standard Edition\",\"Linux : UBUNTU\"]},\"database\":{\"1\":[\"NA\",\"MS SQL Standard\",\"NA\",\"MS SQL Standard\",\"NA\"],\"2\":[\"NA\",\"NA\",\"NA\",\"MS SQL Standard\",\"NA\",\"MS SQL Standard\",\"NA\",\"NA\",\"NA\",\"NA\",\"NA\",\"NA\",\"NA\",\"MS SQL Standard\",\"NA\",\"NA\",\"MS SQL Standard\",\"NA\"]},\"series\":{\"1\":[\"All\",\"All\",\"All\",\"All\",\"All\"],\"2\":[\"All\",\"All\",\"All\",\"All\",\"All\",\"All\",\"All\",\"All\",\"All\",\"All\",\"All\",\"All\",\"All\",\"All\",\"All\",\"All\",\"All\",\"All\"]},\"instance\":{\"1\":[\"M7 : vCores 12 | RAM u00a032 GB | Disk - 1000 IOPS - u00a0100 GB | u20b9 u00a011.7 / hr\",\"S11 : vCores 8 | RAM u00a032 GB | Disk - 1000 IOPS - u00a0100 GB | u20b9 u00a011 / hr\",\"M7 : vCores 12 | RAM u00a032 GB | Disk - 1000 IOPS - u00a0100 GB | u20b9 u00a011.7 / hr\",\"S11 : vCores 8 | RAM u00a032 GB | Disk - 1000 IOPS - u00a0100 GB | u20b9 u00a011 / hr\",\"S3 : vCores 4 | RAM u00a08 GB | Disk - 1000 IOPS - u00a0100 GB | u20b9 u00a08.3 / hr\"],\"2\":[\"M6 : vCores 12 | RAM u00a016 GB | Disk - 1000 IOPS - u00a0100 GB | u20b9 u00a010.1 / hr\",\"M6 : vCores 12 | RAM u00a016 GB | Disk - 1000 IOPS - u00a0100 GB | u20b9 u00a010.1 / hr\",\"M8 : vCores 12 | RAM u00a048 GB | Disk - 1000 IOPS - u00a0100 GB | u20b9 u00a013.4 / hr\",\"L8 : vCores 32 | RAM  128 GB | Disk - 1000 IOPS -  100 GB | u20b9  18.1 / hr\",\"M7 : vCores 12 | RAM u00a032 GB | Disk - 1000 IOPS - u00a0100 GB | u20b9 u00a011.7 / hr\",\"S11 : vCores 8 | RAM u00a032 GB | Disk - 1000 IOPS - u00a0100 GB | u20b9 u00a011 / hr\",\"S4 : vCores 4 | RAM u00a016 GB | Disk - 1000 IOPS - u00a0100 GB | u20b9 u00a09.1 / hr\",\"S4 : vCores 4 | RAM u00a016 GB | Disk - 1000 IOPS - u00a0100 GB | u20b9 u00a09.1 / hr\",\"M7 : vCores 12 | RAM u00a032 GB | Disk - 1000 IOPS - u00a0100 GB | u20b9 u00a011.7 / hr\",\"S3 : vCores 4 | RAM u00a08 GB | Disk - 1000 IOPS - u00a0100 GB | u20b9 u00a08.3 / hr\",\"S3 : vCores 4 | RAM u00a08 GB | Disk - 1000 IOPS - u00a0100 GB | u20b9 u00a08.3 / hr\",\"S10 : vCores 8 | RAM u00a016 GB | Disk - 1000 IOPS - u00a0100 GB | u20b9 u00a09.4 / hr\",\"S4 : vCores 4 | RAM u00a016 GB | Disk - 1000 IOPS - u00a0100 GB | u20b9 u00a09.1 / hr\",\"L4 : vCores 16 | RAM u00a0128 GB | Disk - 1000 IOPS - u00a0100 GB | u20b9 u00a022.1 / hr\",\"S3 : vCores 4 | RAM u00a08 GB | Disk - 1000 IOPS - u00a0100 GB | u20b9 u00a08.3 / hr\",\"M7 : vCores 12 | RAM u00a032 GB | Disk - 1000 IOPS - u00a0100 GB | u20b9 u00a011.7 / hr\",\"S11 : vCores 8 | RAM u00a032 GB | Disk - 1000 IOPS - u00a0100 GB | u20b9 u00a011 / hr\",\"S3 : vCores 4 | RAM u00a08 GB | Disk - 1000 IOPS - u00a0100 GB | u20b9 u00a08.3 / hr\"]},\"vcpu\":{\"1\":[\"12\",\"8\",\"12\",\"8\",\"4\"],\"2\":[\"12\",\"12\",\"12\",\"32\",\"12\",\"8\",\"4\",\"4\",\"12\",\"4\",\"4\",\"8\",\"4\",\"16\",\"4\",\"12\",\"8\"]},\"ram\":{\"1\":[\"32\",\"32\",\"32\",\"32\",\"8\"],\"2\":[\"16\",\"16\",\"48\",\"128\",\"32\",\"32\",\"16\",\"16\",\"32\",\"8\",\"8\",\"16\",\"16\",\"128\",\"8\",\"32\",\"32\"]},\"inst_disk\":{\"1\":[\"100\",\"100\",\"100\",\"100\",\"100\"],\"2\":[\"100\",\"100\",\"100\",\"100\",\"100\",\"100\",\"100\",\"100\",\"100\",\"100\",\"100\",\"100\",\"100\",\"100\",\"100\",\"100\",\"100\"]},\"vmqty\":{\"1\":[\"01\",\"02\",\"01\",\"02\",\"01\"],\"2\":[\"02\",\"02\",\"04\",\"02\",\"01\",\"02\",\"05\",\"03\",\"02\",\"02\",\"02\",\"04\",\"04\",\"2\",\"04\",\"01\",\"2\",\"1\"]},\"state\":{\"1\":[\"Active\",\"Active\",\"Active\",\"Active\",\"Active\"],\"2\":[\"Active\",\"Active\",\"Active\",\"Active\",\"Active\",\"Active\",\"Active\",\"Active\",\"Active\",\"Active\",\"Active\",\"Active\",\"Active\",\"Active\",\"Active\",\"Active\",\"Active\",\"Active\"]},\"publicipversion\":{\"1\":[\"Public IPv6\",\"Public IPv6\",\"Public IPv6\",\"Public IPv6\",\"Public IPv6\"],\"2\":[\"Public IPv6\",\"Public IPv6\",\"Public IPv6\",\"Public IPv6\",\"Public IPv6\",\"Public IPv6\",\"Public IPv6\",\"Public IPv6\",\"Public IPv6\",\"Public IPv6\",\"Public IPv6\",\"Public IPv6\",\"Public IPv6\",\"Public IPv6\",\"Public IPv6\",\"Public IPv6\",\"Public IPv6\",\"Public IPv6\"]},\"ip_public\":{\"1\":[\"on\"],\"2\":[\"on\"]},\"public_ipqty\":{\"1\":[\"9\",\"\",\"\",\"\",\"\"],\"2\":[\"9\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"]},\"virus_type\":{\"1\":[\"Anti-Virus + HIPS\",\"Anti-Virus + HIPS\",\"Anti-Virus + HIPS\",\"Anti-Virus + HIPS\",\"Anti-Virus + HIPS\"],\"2\":[\"Anti-Virus + HIPS\",\"Anti-Virus + HIPS\",\"Anti-Virus + HIPS\",\"Anti-Virus + HIPS\",\"Anti-Virus + HIPS\",\"Anti-Virus + HIPS\",\"Anti-Virus + HIPS\",\"Anti-Virus + HIPS\",\"Anti-Virus + HIPS\",\"Anti-Virus + HIPS\",\"Anti-Virus + HIPS\",\"Anti-Virus + HIPS\",\"Anti-Virus + HIPS\",\"Anti-Virus + HIPS\",\"Anti-Virus + HIPS\",\"Anti-Virus + HIPS\",\"Anti-Virus + HIPS\",\"Anti-Virus + HIPS\"]},\"03strgunit\":{\"1\":\"TB\",\"2\":\"TB\"},\"03iops\":{\"1\":\"on\",\"2\":\"on\"},\"03iopsqty\":{\"1\":\"2.7\",\"2\":\"27.4\"},\"1strgunit\":{\"1\":\"TB\",\"2\":\"TB\"},\"1iopsqty\":{\"1\":\"\",\"2\":\"\"},\"3strgunit\":{\"1\":\"TB\",\"2\":\"TB\"},\"3iopsqty\":{\"1\":\"\",\"2\":\"\"},\"5strgunit\":{\"1\":\"TB\",\"2\":\"TB\"},\"5iopsqty\":{\"1\":\"\",\"2\":\"\"},\"8strgunit\":{\"1\":\"TB\",\"2\":\"TB\"},\"8iopsqty\":{\"1\":\"\",\"2\":\"\"},\"10strgunit\":{\"1\":\"TB\",\"2\":\"TB\"},\"10iopsqty\":{\"1\":\"\",\"2\":\"\"},\"backup_strg\":{\"1\":\"0.8\",\"2\":\"3\"},\"backup_unit\":{\"1\":\"TB\",\"2\":\"TB\"},\"age_qty_type\":{\"1\":\"\",\"2\":\"\"},\"ageqty\":{\"1\":\"\",\"2\":\"\"},\"arc_strg\":{\"1\":\"\",\"2\":\"\"},\"archival_unit\":{\"1\":\"TB\",\"2\":\"TB\"},\"tlqty\":{\"1\":\"\",\"2\":\"\"},\"tcqty\":{\"1\":\"\",\"2\":\"\"},\"fcqty\":{\"1\":\"\",\"2\":\"\"},\"bandwidthType\":{\"1\":\"Speed Based Internet Bandwidth\",\"2\":\"Speed Based Internet Bandwidth\"},\"bandwidth\":{\"1\":\"50\",\"2\":\"50\"},\"load_balancer\":{\"1\":\"Load Balancer : HA Proxy\",\"2\":\"Load Balancer : HA Proxy\"},\"lbqty\":{\"1\":\"2\",\"2\":\"2\"},\"ccptqty\":{\"1\":\"2\",\"2\":\"2\"},\"sslvpnqty\":{\"1\":\"\",\"2\":\"\"},\"ipsecqty\":{\"1\":\"\",\"2\":\"\"},\"efv_throughput\":{\"1\":\"Fortinet- External vFirewall : 1GBPS\",\"2\":\"Fortinet- External vFirewall : 1GBPS\"},\"extfirewall\":{\"1\":\"on\",\"2\":\"on\"},\"extfvqty\":{\"1\":\"2\",\"2\":\"2\"},\"ifv_throughput\":{\"1\":\"Fortinet- Internal vFirewall : 1GBPS\",\"2\":\"Fortinet- Internal vFirewall : 1GBPS\"},\"intfirewall\":{\"1\":\"on\",\"2\":\"on\"},\"intfvqty\":{\"1\":\"2\",\"2\":\"2\"},\"utm\":{\"1\":\"on\",\"2\":\"on\"},\"ddos_throughput\":{\"1\":\"DDoS Mitigation - 1Gbps\",\"2\":\"DDoS Mitigation - 1Gbps\"},\"ddos\":{\"1\":\"on\",\"2\":\"on\"},\"ddosqty\":{\"1\":\"1\",\"2\":\"1\"},\"waf_type\":{\"1\":\"eNlight : Web App Firewall\",\"2\":\"eNlight : Web App Firewall\"},\"waf\":{\"1\":\"on\",\"2\":\"on\"},\"wafqty\":{\"1\":\"2\",\"2\":\"2\"},\"ssl\":{\"1\":\"Domain WildCard SSL Certificate\",\"2\":\"Domain WildCard SSL Certificate\"},\"ssl-check\":{\"1\":\"on\",\"2\":\"on\"},\"sslqty\":{\"1\":\"1\",\"2\":\"1\"},\"siem_name\":{\"1\":\"SECEON SIEM\",\"2\":\"SECEON SIEM\"},\"siem\":{\"1\":\"on\",\"2\":\"on\"},\"pimqty\":{\"1\":\"\",\"2\":\"\"},\"vtm\":{\"1\":\"on\",\"2\":\"on\"},\"vtmqty\":{\"1\":\"4 scans per month\",\"2\":\"4 scans per month\"},\"vapt_type\":{\"1\":\"CERTIN- VAPT Audit\",\"2\":\"CERTIN- VAPT Audit\"},\"vapt\":{\"1\":\"on\",\"2\":\"on\"},\"vaptqty\":{\"1\":\"2\",\"2\":\"2\"},\"vapt_frequency\":{\"1\":\"Year\",\"2\":\"Year\"},\"hsm_type\":{\"1\":\"\",\"2\":\"\"},\"hsmqty\":{\"1\":\"\",\"2\":\"\"},\"tfaqty\":{\"1\":\"\",\"2\":\"\"},\"iam\":{\"1\":\"on\",\"2\":\"on\"},\"iamqty\":{\"1\":\"50\",\"2\":\"50\"},\"dlpqty\":{\"1\":\"\",\"2\":\"\"},\"edrqty\":{\"1\":\"\",\"2\":\"\"},\"damqty\":{\"1\":\"\",\"2\":\"\"},\"sorqty\":{\"1\":\"\",\"2\":\"\"},\"osmgmt\":{\"1\":\"on\",\"2\":\"on\"},\"dbmgmt\":{\"1\":\"on\",\"2\":\"on\"},\"strgmgmt\":{\"1\":\"on\",\"2\":\"on\"},\"backmgmt\":{\"1\":\"on\",\"2\":\"on\"},\"lb_mgmt\":{\"1\":\"on\",\"2\":\"on\"},\"fv_mgmt\":{\"1\":\"on\",\"2\":\"on\"},\"wafmgmt\":{\"1\":\"on\",\"2\":\"on\"},\"emagic_type\":{\"1\":\"Basic\",\"2\":\"Basic\"},\"drillqty\":{\"2\":\"\"},\"drill_frequency\":{\"2\":\"Year\"},\"rep_link_type\":{\"2\":\"\"},\"rep_link_qty\":{\"2\":\"\"},\"proceed\":\"\"}', ''),
(12, 1167, 9849, 'EDF', '1', 1167, 1167, '2023-08-08', '2023-08-08 11:49:42', 12, 6556642, '{\"quot_type\":\"DC\",\"price_list\":\"1\",\"pot_id\":\"9849\",\"project_name\":\"EDF\",\"version\":\"  \",\"count_of_est\":\"3\",\"estmtname\":{\"1\":\"DC site\",\"2\":\"dc\"},\"period\":{\"1\":\"12\",\"2\":\"12\"},\"count_of_vm\":{\"1\":\"1\",\"2\":\"1\"},\"vmname\":{\"1\":[\"Vn1\"],\"2\":[\"vm\"]},\"region\":{\"1\":[\"Mumbai\"],\"2\":[\"Nashik\"]},\"sector\":{\"1\":[\"Government\"],\"2\":[\"Government\"]},\"os\":{\"1\":[\"Windows Standard Edition\"],\"2\":[\"Linux : RHEL\"]},\"database\":{\"1\":[\"MY SQL Community\"],\"2\":[\"MS SQL Enterprise\"]},\"series\":{\"1\":[\"Medium\"],\"2\":[\"Small\"]},\"instance\":{\"1\":[\"M4 : vCores 10 | RAM u00a032 GB | Disk - 1000 IOPS - u00a0100 GB | u20b9 u00a011.1 / hr\"],\"2\":[\"S11 : vCores 8 | RAM u00a032 GB | Disk - 1000 IOPS - u00a0100 GB | u20b9 u00a011 / hr\"]},\"vcpu\":{\"1\":[\"10\"],\"2\":[\"8\"]},\"ram\":{\"1\":[\"32\"],\"2\":[\"32\"]},\"inst_disk\":{\"1\":[\"100\"],\"2\":[\"100\"]},\"vmqty\":{\"1\":[\"01\"],\"2\":[\"2\"]},\"state\":{\"1\":[\"Standalone\"],\"2\":[\"Standalone\"]},\"publicipversion\":{\"1\":[\"Public IPv6\"],\"2\":[\"Public IPv6\"]},\"public_ipqty\":{\"1\":[\"\"],\"2\":[\"\"]},\"virus_type\":{\"1\":[\"\"],\"2\":[\"\"]},\"03strgunit\":{\"1\":\"TB\",\"2\":\"TB\"},\"03iopsqty\":{\"1\":\"\",\"2\":\"5.1\"},\"1strgunit\":{\"1\":\"TB\",\"2\":\"TB\"},\"1iopsqty\":{\"1\":\"\",\"2\":\"\"},\"3strgunit\":{\"1\":\"TB\",\"2\":\"GB\"},\"3iopsqty\":{\"1\":\"\",\"2\":\"122\"},\"5strgunit\":{\"1\":\"TB\",\"2\":\"TB\"},\"5iopsqty\":{\"1\":\"\",\"2\":\"\"},\"8strgunit\":{\"1\":\"TB\",\"2\":\"TB\"},\"8iopsqty\":{\"1\":\"\",\"2\":\"\"},\"10strgunit\":{\"1\":\"TB\",\"2\":\"TB\"},\"10iopsqty\":{\"1\":\"\",\"2\":\"\"},\"backup_strg\":{\"1\":\"\",\"2\":\"\"},\"backup_unit\":{\"1\":\"TB\",\"2\":\"TB\"},\"age_qty_type\":{\"1\":\"\",\"2\":\"\"},\"ageqty\":{\"1\":\"\",\"2\":\"\"},\"arc_strg\":{\"1\":\"\",\"2\":\"\"},\"archival_unit\":{\"1\":\"TB\",\"2\":\"TB\"},\"tlqty\":{\"1\":\"\",\"2\":\"\"},\"tcqty\":{\"1\":\"\",\"2\":\"\"},\"fcqty\":{\"1\":\"\",\"2\":\"\"},\"bandwidthType\":{\"1\":\"Speed Based Internet Bandwidth\",\"2\":\"Speed Based Internet Bandwidth\"},\"bandwidth\":{\"1\":\"\",\"2\":\"\"},\"load_balancer\":{\"1\":\"\",\"2\":\"\"},\"lbqty\":{\"1\":\"\",\"2\":\"\"},\"ccptqty\":{\"1\":\"\",\"2\":\"\"},\"sslvpnqty\":{\"1\":\"\",\"2\":\"\"},\"ipsecqty\":{\"1\":\"\",\"2\":\"\"},\"efv_throughput\":{\"1\":\"\",\"2\":\"\"},\"extfvqty\":{\"1\":\"\",\"2\":\"\"},\"ifv_throughput\":{\"1\":\"\",\"2\":\"\"},\"intfvqty\":{\"1\":\"\",\"2\":\"\"},\"ddos_throughput\":{\"1\":\"\",\"2\":\"\"},\"ddosqty\":{\"1\":\"\",\"2\":\"\"},\"waf_type\":{\"1\":\"\",\"2\":\"\"},\"wafqty\":{\"1\":\"\",\"2\":\"\"},\"ssl\":{\"1\":\"\",\"2\":\"\"},\"sslqty\":{\"1\":\"\",\"2\":\"\"},\"siem_name\":{\"1\":\"\",\"2\":\"\"},\"pimqty\":{\"1\":\"\",\"2\":\"\"},\"vtmqty\":{\"1\":\"60 scans per month\",\"2\":\"60 scans per month\"},\"vapt_type\":{\"1\":\"\",\"2\":\"\"},\"vaptqty\":{\"1\":\"\",\"2\":\"\"},\"vapt_frequency\":{\"1\":\"Year\",\"2\":\"Year\"},\"hsm_type\":{\"1\":\"\",\"2\":\"Shared HSM\"},\"hsmqty\":{\"1\":\"\",\"2\":\"\"},\"tfaqty\":{\"1\":\"\",\"2\":\"\"},\"iamqty\":{\"1\":\"\",\"2\":\"\"},\"dlpqty\":{\"1\":\"\",\"2\":\"\"},\"edrqty\":{\"1\":\"\",\"2\":\"\"},\"damqty\":{\"1\":\"\",\"2\":\"\"},\"sorqty\":{\"1\":\"\",\"2\":\"\"},\"emagic_type\":{\"1\":\"Basic\",\"2\":\"Basic\"},\"03iops\":{\"2\":\"on\"},\"1iops\":{\"2\":\"on\"},\"3iops\":{\"2\":\"on\"},\"drillqty\":{\"2\":\"\"},\"drill_frequency\":{\"2\":\"Year\"},\"rep_link_type\":{\"2\":\"\"},\"rep_link_qty\":{\"2\":\"\"},\"proceed\":\"\"}', '');
INSERT INTO `tbl_saved_estimates` (`id`, `emp_code`, `pot_id`, `project_name`, `version`, `owner`, `last_changed_by`, `date_created`, `date_updated`, `contract_period`, `total_upfront`, `data`, `prices`) VALUES
(13, 5430, 6669, 'PGCIL', '3', 5430, 5430, '2023-08-08', '2023-08-08 11:35:20', 2, 8979042, '{\"quot_type\": \"DC\",\"price_list\": \"1\",\"pot_id\": \"6669\",\"project_name\": \"PGCIL\",\"version\": \"  \",\"count_of_est\": \"2\",\"estmtname\": { \"1\": \"T1-T2 Months\", \"2\": \"T3-T6 Months\" },\"period\": { \"1\": \"2\", \"2\": \"4\" },\"count_of_vm\": { \"1\": \"5\", \"2\": \"18\" },\"vmname\": {  \"1\": [    \"App Server\",    \"Master and Meter data DB (live data for 3 years)\",    \"Application, Web, Integration services\",    \"Main Database\",    \"Kafka\"  ],  \"2\": [    \"Integration services\",    \"Scheduler\",    \"App Server (VEE, web, exeption)\",    \"Master and Meter data DB (live data for 3 years)\",    \"App Server\",    \"Master and Meter data DB (live data for 3 years)\",    \"Communication Servers P2P (PushPull)\",    \"Communication Servers RF (PushPull)\",    \"SLA Monitoring\",    \"InfluxDB\",    \"RabbitMQ\",    \"Web and Integration Services\",    \"App Services\",    \"Main Database\",    \"Kafka cluster (distributed among DC & DR Location)\",    \"Application, Web, Integration services\",    \"Main Database\",    \"Kafka\"  ]},\"region\": {  \"1\": [\"Nashik\", \"Nashik\", \"Nashik\", \"Nashik\", \"Nashik\"],  \"2\": [    \"Nashik\",    \"Nashik\",    \"Nashik\",    \"Nashik\",    \"Nashik\",    \"Nashik\",    \"Nashik\",    \"Nashik\",    \"Nashik\",    \"Nashik\",    \"Nashik\",    \"Nashik\",    \"Nashik\",    \"Nashik\",    \"Nashik\",    \"Nashik\",    \"Nashik\",    \"Nashik\"  ]},\"sector\": {  \"1\": [\"Government\", \"Government\", \"Government\", \"Government\", \"Government\"],  \"2\": [    \"Government\",    \"Government\",    \"Government\",    \"Government\",    \"Government\",    \"Government\",    \"Government\",    \"Government\",    \"Government\",    \"Government\",    \"Government\",    \"Government\",    \"Government\",    \"Government\",    \"Government\",    \"Government\",    \"Government\",    \"Government\"  ]},\"os\": {  \"1\": [    \"Windows Standard Edition\",    \"Windows Standard Edition\",    \"Windows Standard Edition\",    \"Windows Standard Edition\",    \"Linux : UBUNTU\"  ],  \"2\": [    \"Windows Standard Edition\",    \"Windows Standard Edition\",    \"Windows Standard Edition\",    \"Windows Standard Edition\",    \"Windows Standard Edition\",    \"Windows Standard Edition\",    \"Windows Standard Edition\",    \"Windows Standard Edition\",    \"Windows Standard Edition\",    \"Linux : UBUNTU\",    \"Linux : UBUNTU\",    \"Windows Standard Edition\",    \"Windows Standard Edition\",    \"Windows Standard Edition\",    \"Linux : UBUNTU\",    \"Windows Standard Edition\",    \"Windows Standard Edition\",    \"Linux : UBUNTU\"  ]},\"database\": {  \"1\": [\"NA\", \"MS SQL Standard\", \"NA\", \"MS SQL Standard\", \"NA\"],  \"2\": [    \"NA\",    \"NA\",    \"NA\",    \"MS SQL Standard\",    \"NA\",    \"MS SQL Standard\",    \"NA\",    \"NA\",    \"NA\",    \"NA\",    \"NA\",    \"NA\",    \"NA\",    \"MS SQL Standard\",    \"NA\",    \"NA\",    \"MS SQL Standard\",    \"NA\"  ]},\"series\": {  \"1\": [\"All\", \"All\", \"All\", \"All\", \"All\"],  \"2\": [    \"All\",    \"All\",    \"All\",    \"All\",    \"All\",    \"All\",    \"All\",    \"All\",    \"All\",    \"All\",    \"All\",    \"All\",    \"All\",    \"All\",    \"All\",    \"All\",    \"All\",    \"All\"  ]},\"instance\": {  \"1\": [    \"M7\",    \"S11\",    \"M7\",    \"S11\",    \"S3\"  ],  \"2\": [    \"M6\",    \"M6\",    \"M8\",    \"L8\",    \"M7\",    \"S11\",    \"S4\",    \"S4\",    \"M7\",    \"S3\",    \"S3\",    \"S10\",    \"S4\",    \"L4\",    \"S3\",    \"M7\",    \"S11\",    \"S3\"  ]},\"vcpu\": {  \"1\": [\"12\", \"8\", \"12\", \"8\", \"4\"],  \"2\": [    \"12\",    \"12\",    \"12\",    \"32\",    \"12\",    \"8\",    \"4\",    \"4\",    \"12\",    \"4\",    \"4\",    \"8\",    \"4\",    \"16\",    \"4\",    \"12\",    \"8\"  ]},\"ram\": {  \"1\": [\"32\", \"32\", \"32\", \"32\", \"8\"],  \"2\": [    \"16\",    \"16\",    \"48\",    \"128\",    \"32\",    \"32\",    \"16\",    \"16\",    \"32\",    \"8\",    \"8\",    \"16\",    \"16\",    \"128\",    \"8\",    \"32\",    \"32\"  ]},\"inst_disk\": {  \"1\": [\"100\", \"100\", \"100\", \"100\", \"100\"],  \"2\": [    \"100\",    \"100\",    \"100\",    \"100\",    \"100\",    \"100\",    \"100\",    \"100\",    \"100\",    \"100\",    \"100\",    \"100\",    \"100\",    \"100\",    \"100\",    \"100\",    \"100\"  ]},\"vmqty\": {  \"1\": [\"01\", \"02\", \"01\", \"02\", \"01\"],  \"2\": [    \"02\",    \"02\",    \"04\",    \"02\",    \"01\",    \"02\",    \"05\",    \"03\",    \"02\",    \"02\",    \"02\",    \"04\",    \"04\",    \"2\",    \"04\",    \"01\",    \"2\",    \"1\"  ]},\"state\": {  \"1\": [\"Active\", \"Active\", \"Active\", \"Active\", \"Active\"],  \"2\": [    \"Active\",    \"Active\",    \"Active\",    \"Active\",    \"Active\",    \"Active\",    \"Active\",    \"Active\",    \"Active\",    \"Active\",    \"Active\",    \"Active\",    \"Active\",    \"Active\",    \"Active\",    \"Active\",    \"Active\",    \"Active\"  ]},\"publicipversion\": {  \"1\": [    \"Public IPv6\",    \"Public IPv6\",    \"Public IPv6\",    \"Public IPv6\",    \"Public IPv6\"  ],  \"2\": [    \"Public IPv6\",    \"Public IPv6\",    \"Public IPv6\",    \"Public IPv6\",    \"Public IPv6\",    \"Public IPv6\",    \"Public IPv6\",    \"Public IPv6\",    \"Public IPv6\",    \"Public IPv6\",    \"Public IPv6\",    \"Public IPv6\",    \"Public IPv6\",    \"Public IPv6\",    \"Public IPv6\",    \"Public IPv6\",    \"Public IPv6\",    \"Public IPv6\"  ]},\"ip_public\": { \"1\": [\"on\"], \"2\": [\"on\"] },\"public_ipqty\": {  \"1\": [\"9\", \"\", \"\", \"\", \"\"],  \"2\": [    \"9\",    \"\",    \"\",    \"\",    \"\",    \"\",    \"\",    \"\",    \"\",    \"\",    \"\",    \"\",    \"\",    \"\",    \"\",    \"\",    \"\",    \"\"  ]},\"virus_type\": {  \"1\": [    \"Anti-Virus + HIPS\",    \"Anti-Virus + HIPS\",    \"Anti-Virus + HIPS\",    \"Anti-Virus + HIPS\",    \"Anti-Virus + HIPS\"  ],  \"2\": [    \"Anti-Virus + HIPS\",    \"Anti-Virus + HIPS\",    \"Anti-Virus + HIPS\",    \"Anti-Virus + HIPS\",    \"Anti-Virus + HIPS\",    \"Anti-Virus + HIPS\",    \"Anti-Virus + HIPS\",    \"Anti-Virus + HIPS\",    \"Anti-Virus + HIPS\",    \"Anti-Virus + HIPS\",    \"Anti-Virus + HIPS\",    \"Anti-Virus + HIPS\",    \"Anti-Virus + HIPS\",    \"Anti-Virus + HIPS\",    \"Anti-Virus + HIPS\",    \"Anti-Virus + HIPS\",    \"Anti-Virus + HIPS\",    \"Anti-Virus + HIPS\"  ]},\"03strgunit\": { \"1\": \"TB\", \"2\": \"TB\" },\"03iops\": { \"1\": \"on\", \"2\": \"on\" },\"03iopsqty\": { \"1\": \"2.7\", \"2\": \"27.4\" },\"1strgunit\": { \"1\": \"TB\", \"2\": \"TB\" },\"1iopsqty\": { \"1\": \"\", \"2\": \"\" },\"3strgunit\": { \"1\": \"TB\", \"2\": \"TB\" },\"3iopsqty\": { \"1\": \"\", \"2\": \"\" },\"5strgunit\": { \"1\": \"TB\", \"2\": \"TB\" },\"5iopsqty\": { \"1\": \"\", \"2\": \"\" },\"8strgunit\": { \"1\": \"TB\", \"2\": \"TB\" },\"8iopsqty\": { \"1\": \"\", \"2\": \"\" },\"10strgunit\": { \"1\": \"TB\", \"2\": \"TB\" },\"10iopsqty\": { \"1\": \"\", \"2\": \"\" },\"backup_strg\": { \"1\": \"0.8\", \"2\": \"3\" },\"backup_unit\": { \"1\": \"TB\", \"2\": \"TB\" },\"age_qty_type\": { \"1\": \"\", \"2\": \"\" },\"ageqty\": { \"1\": \"\", \"2\": \"\" },\"arc_strg\": { \"1\": \"\", \"2\": \"\" },\"archival_unit\": { \"1\": \"TB\", \"2\": \"TB\" },\"tlqty\": { \"1\": \"\", \"2\": \"\" },\"tcqty\": { \"1\": \"\", \"2\": \"\" },\"fcqty\": { \"1\": \"\", \"2\": \"\" },\"bandwidthType\": {  \"1\": \"Speed Based Internet Bandwidth\",  \"2\": \"Speed Based Internet Bandwidth\"},\"bandwidth\": { \"1\": \"50\", \"2\": \"50\" },\"load_balancer\": {  \"1\": \"Load Balancer : HA Proxy\",  \"2\": \"Load Balancer : HA Proxy\"},\"lbqty\": { \"1\": \"2\", \"2\": \"2\" },\"ccptqty\": { \"1\": \"2\", \"2\": \"2\" },\"sslvpnqty\": { \"1\": \"\", \"2\": \"\" },\"ipsecqty\": { \"1\": \"\", \"2\": \"\" },\"efv_throughput\": {  \"1\": \"Fortinet- External vFirewall : 1GBPS\",  \"2\": \"Fortinet- External vFirewall : 1GBPS\"},\"extfirewall\": { \"1\": \"on\", \"2\": \"on\" },\"extfvqty\": { \"1\": \"2\", \"2\": \"2\" },\"ifv_throughput\": {  \"1\": \"Fortinet- Internal vFirewall : 1GBPS\",  \"2\": \"Fortinet- Internal vFirewall : 1GBPS\"},\"intfirewall\": { \"1\": \"on\", \"2\": \"on\" },\"intfvqty\": { \"1\": \"2\", \"2\": \"2\" },\"utm\": { \"1\": \"on\", \"2\": \"on\" },\"ddos_throughput\": {  \"1\": \"DDoS Mitigation - 1Gbps\",  \"2\": \"DDoS Mitigation - 1Gbps\"},\"ddos\": { \"1\": \"on\", \"2\": \"on\" },\"ddosqty\": { \"1\": \"1\", \"2\": \"1\" },\"waf_type\": {  \"1\": \"eNlight : Web App Firewall\",  \"2\": \"eNlight : Web App Firewall\"},\"waf\": { \"1\": \"on\", \"2\": \"on\" },\"wafqty\": { \"1\": \"2\", \"2\": \"2\" },\"ssl\": {  \"1\": \"Domain WildCard SSL Certificate\",  \"2\": \"Domain WildCard SSL Certificate\"},\"ssl-check\": { \"1\": \"on\", \"2\": \"on\" },\"sslqty\": { \"1\": \"1\", \"2\": \"1\" },\"siem_name\": { \"1\": \"SECEON SIEM\", \"2\": \"SECEON SIEM\" },\"siem\": { \"1\": \"on\", \"2\": \"on\" },\"pimqty\": { \"1\": \"\", \"2\": \"\" },\"vtm\": { \"1\": \"on\", \"2\": \"on\" },\"vtmqty\": { \"1\": \"4 scans per month\", \"2\": \"4 scans per month\" },\"vapt_type\": { \"1\": \"CERTIN- VAPT Audit\", \"2\": \"CERTIN- VAPT Audit\" },\"vapt\": { \"1\": \"on\", \"2\": \"on\" },\"vaptqty\": { \"1\": \"2\", \"2\": \"2\" },\"vapt_frequency\": { \"1\": \"Year\", \"2\": \"Year\" },\"hsm_type\": { \"1\": \"\", \"2\": \"\" },\"hsmqty\": { \"1\": \"\", \"2\": \"\" },\"tfaqty\": { \"1\": \"\", \"2\": \"\" },\"iam\": { \"1\": \"on\", \"2\": \"on\" },\"iamqty\": { \"1\": \"50\", \"2\": \"50\" },\"dlpqty\": { \"1\": \"\", \"2\": \"\" },\"edrqty\": { \"1\": \"\", \"2\": \"\" },\"damqty\": { \"1\": \"\", \"2\": \"\" },\"sorqty\": { \"1\": \"\", \"2\": \"\" },\"osmgmt\": { \"1\": \"on\", \"2\": \"on\" },\"dbmgmt\": { \"1\": \"on\", \"2\": \"on\" },\"strgmgmt\": { \"1\": \"on\", \"2\": \"on\" },\"backmgmt\": { \"1\": \"on\", \"2\": \"on\" },\"lb_mgmt\": { \"1\": \"on\", \"2\": \"on\" },\"fv_mgmt\": { \"1\": \"on\", \"2\": \"on\" },\"wafmgmt\": { \"1\": \"on\", \"2\": \"on\" },\"emagic_type\": { \"1\": \"Basic\", \"2\": \"Basic\" },\"drillqty\": { \"2\": \"\" },\"drill_frequency\": { \"2\": \"Year\" },\"rep_link_type\": { \"2\": \"\" },\"rep_link_qty\": { \"2\": \"\" },\"proceed\": \"\"}', ''),
(14, 13, 9868, 'PO Renewal', '1', 13, 13, '2023-08-09', '2023-08-09 11:30:50', 12, 469368, 'a:89:{s:9:\"quot_type\";s:7:\"DC - DR\";s:10:\"price_list\";s:1:\"1\";s:6:\"pot_id\";s:5:\"09868\";s:12:\"project_name\";s:10:\"PO Renewal\";s:7:\"version\";s:2:\"  \";s:12:\"count_of_est\";s:1:\"1\";s:7:\"EstType\";a:1:{i:1;s:2:\"DC\";}s:9:\"estmtname\";a:1:{i:1;s:4:\"Test\";}s:6:\"period\";a:1:{i:1;s:2:\"12\";}s:11:\"count_of_vm\";a:1:{i:1;s:1:\"4\";}s:6:\"vmname\";a:1:{i:1;a:3:{i:0;s:20:\"VM1 - WebDisp+Router\";i:1;s:20:\"VM2 - WebDisp+Router\";i:2;s:24:\"VM 3 - S4H QuickStart DB\";}}s:6:\"region\";a:1:{i:1;a:3:{i:0;s:9:\"Bangalore\";i:1;s:9:\"Bangalore\";i:2;s:9:\"Bangalore\";}}s:6:\"sector\";a:1:{i:1;a:3:{i:0;s:10:\"Government\";i:1;s:10:\"Government\";i:2;s:10:\"Government\";}}s:2:\"os\";a:1:{i:1;a:3:{i:0;s:24:\"Windows Standard Edition\";i:1;s:12:\"Linux : SUSE\";i:2;s:0:\"\";}}s:8:\"database\";a:1:{i:1;a:3:{i:0;s:0:\"\";i:1;s:0:\"\";i:2;s:0:\"\";}}s:6:\"series\";a:1:{i:1;a:3:{i:0;s:5:\"Small\";i:1;s:5:\"Small\";i:2;s:16:\"Flexible Compute\";}}s:8:\"instance\";a:1:{i:1;a:3:{i:0;s:2:\"S3\";i:1;s:2:\"S5\";i:2;s:5:\"Flexi\";}}s:4:\"vcpu\";a:1:{i:1;a:3:{i:0;s:1:\"4\";i:1;s:1:\"4\";i:2;s:2:\"16\";}}s:3:\"ram\";a:1:{i:1;a:3:{i:0;s:1:\"8\";i:1;s:2:\"24\";i:2;s:3:\"198\";}}s:9:\"inst_disk\";a:1:{i:1;a:3:{i:0;s:3:\"100\";i:1;s:3:\"100\";i:2;s:3:\"854\";}}s:5:\"vmqty\";a:1:{i:1;a:3:{i:0;s:1:\"1\";i:1;s:1:\"1\";i:2;s:1:\"0\";}}s:5:\"state\";a:1:{i:1;a:3:{i:0;s:6:\"Active\";i:1;s:10:\"Standalone\";i:2;s:10:\"Standalone\";}}s:15:\"publicipversion\";a:1:{i:1;a:3:{i:0;s:11:\"Public IPv4\";i:1;s:11:\"Public IPv4\";i:2;s:11:\"Public IPv6\";}}s:9:\"ip_public\";a:1:{i:1;a:2:{i:0;s:2:\"on\";i:1;s:2:\"on\";}}s:12:\"public_ipqty\";a:1:{i:1;a:3:{i:0;s:1:\"1\";i:1;s:1:\"1\";i:2;s:0:\"\";}}s:10:\"virus_type\";a:1:{i:1;a:3:{i:0;s:10:\"Anti-Virus\";i:1;s:0:\"\";i:2;s:0:\"\";}}s:10:\"03strgunit\";a:1:{i:1;s:2:\"TB\";}s:9:\"03iopsqty\";a:1:{i:1;s:0:\"\";}s:9:\"1strgunit\";a:1:{i:1;s:2:\"TB\";}s:8:\"1iopsqty\";a:1:{i:1;s:0:\"\";}s:9:\"3strgunit\";a:1:{i:1;s:2:\"TB\";}s:8:\"3iopsqty\";a:1:{i:1;s:0:\"\";}s:9:\"5strgunit\";a:1:{i:1;s:2:\"TB\";}s:8:\"5iopsqty\";a:1:{i:1;s:0:\"\";}s:9:\"8strgunit\";a:1:{i:1;s:2:\"TB\";}s:8:\"8iopsqty\";a:1:{i:1;s:0:\"\";}s:10:\"10strgunit\";a:1:{i:1;s:2:\"TB\";}s:9:\"10iopsqty\";a:1:{i:1;s:0:\"\";}s:11:\"backup_strg\";a:1:{i:1;s:1:\"1\";}s:11:\"backup_unit\";a:1:{i:1;s:2:\"TB\";}s:12:\"age_qty_type\";a:1:{i:1;s:6:\"All VM\";}s:6:\"ageqty\";a:1:{i:1;s:0:\"\";}s:8:\"arc_strg\";a:1:{i:1;s:0:\"\";}s:13:\"archival_unit\";a:1:{i:1;s:2:\"TB\";}s:5:\"tlqty\";a:1:{i:1;s:0:\"\";}s:5:\"tcqty\";a:1:{i:1;s:0:\"\";}s:5:\"fcqty\";a:1:{i:1;s:0:\"\";}s:13:\"bandwidthType\";a:1:{i:1;s:30:\"Speed Based Internet Bandwidth\";}s:9:\"bandwidth\";a:1:{i:1;s:1:\"2\";}s:13:\"load_balancer\";a:1:{i:1;s:0:\"\";}s:5:\"lbqty\";a:1:{i:1;s:1:\"0\";}s:7:\"ccptqty\";a:1:{i:1;s:0:\"\";}s:9:\"sslvpnqty\";a:1:{i:1;s:0:\"\";}s:8:\"ipsecqty\";a:1:{i:1;s:0:\"\";}s:14:\"efv_throughput\";a:1:{i:1;s:37:\"PALO ALTO- External vFirewall : 1GBPS\";}s:11:\"extfirewall\";a:1:{i:1;s:2:\"on\";}s:8:\"extfvqty\";a:1:{i:1;s:1:\"1\";}s:14:\"ifv_thorughput\";a:1:{i:1;s:0:\"\";}s:8:\"intfvqty\";a:1:{i:1;s:0:\"\";}s:15:\"ddos_throughput\";a:1:{i:1;s:0:\"\";}s:8:\"waf_type\";a:1:{i:1;s:0:\"\";}s:6:\"wafqty\";a:1:{i:1;s:0:\"\";}s:3:\"ssl\";a:1:{i:1;s:0:\"\";}s:6:\"sslqty\";a:1:{i:1;s:0:\"\";}s:9:\"siem_name\";a:1:{i:1;s:0:\"\";}s:6:\"pimqty\";a:1:{i:1;s:0:\"\";}s:3:\"vtm\";a:1:{i:1;s:2:\"on\";}s:6:\"vtmqty\";a:1:{i:1;s:18:\"30 scans per month\";}s:9:\"vapt_type\";a:1:{i:1;s:0:\"\";}s:7:\"vaptqty\";a:1:{i:1;s:0:\"\";}s:14:\"vapt_frequency\";a:1:{i:1;s:9:\"Quarterly\";}s:8:\"hsm_type\";a:1:{i:1;s:0:\"\";}s:6:\"hsmqty\";a:1:{i:1;s:0:\"\";}s:6:\"tfaqty\";a:1:{i:1;s:0:\"\";}s:6:\"iamqty\";a:1:{i:1;s:0:\"\";}s:6:\"dlpqty\";a:1:{i:1;s:0:\"\";}s:6:\"edrqty\";a:1:{i:1;s:0:\"\";}s:6:\"damqty\";a:1:{i:1;s:0:\"\";}s:6:\"sorqty\";a:1:{i:1;s:0:\"\";}s:6:\"osmgmt\";a:1:{i:1;s:2:\"on\";}s:8:\"strgmgmt\";a:1:{i:1;s:2:\"on\";}s:8:\"backmgmt\";a:1:{i:1;s:2:\"on\";}s:7:\"fv_mgmt\";a:1:{i:1;s:2:\"on\";}s:7:\"wafmgmt\";a:1:{i:1;s:2:\"on\";}s:11:\"emagic_type\";a:1:{i:1;s:5:\"Basic\";}s:8:\"drillqty\";a:1:{i:1;s:0:\"\";}s:13:\"rep_link_type\";a:1:{i:1;s:0:\"\";}s:12:\"rep_link_qty\";a:1:{i:1;s:0:\"\";}s:7:\"proceed\";s:0:\"\";}', ''),
(15, 11, 9328, 'General Test', '1', 11, 11, '2023-08-09', '2023-08-09 11:53:27', 12, 310512, 'a:87:{s:9:\"quot_type\";s:7:\"DC - DR\";s:10:\"price_list\";s:1:\"1\";s:6:\"pot_id\";s:5:\"09328\";s:12:\"project_name\";s:12:\"General Test\";s:7:\"version\";s:2:\"  \";s:12:\"count_of_est\";s:1:\"1\";s:7:\"EstType\";a:1:{i:1;s:2:\"DC\";}s:9:\"estmtname\";a:1:{i:1;s:6:\"850000\";}s:6:\"period\";a:1:{i:1;s:2:\"12\";}s:11:\"count_of_vm\";a:1:{i:1;s:1:\"1\";}s:6:\"vmname\";a:1:{i:1;a:1:{i:0;s:13:\"120ME19125XEN\";}}s:6:\"region\";a:1:{i:1;a:1:{i:0;s:6:\"Mumbai\";}}s:6:\"sector\";a:1:{i:1;a:1:{i:0;s:10:\"Enterprise\";}}s:2:\"os\";a:1:{i:1;a:1:{i:0;s:24:\"Windows Standard Edition\";}}s:8:\"database\";a:1:{i:1;a:1:{i:0;s:16:\"MY SQL Community\";}}s:6:\"series\";a:1:{i:1;a:1:{i:0;s:6:\"Medium\";}}s:8:\"instance\";a:1:{i:1;a:1:{i:0;s:2:\"M6\";}}s:4:\"vcpu\";a:1:{i:1;a:1:{i:0;s:2:\"12\";}}s:3:\"ram\";a:1:{i:1;a:1:{i:0;s:2:\"16\";}}s:9:\"inst_disk\";a:1:{i:1;a:1:{i:0;s:3:\"100\";}}s:5:\"vmqty\";a:1:{i:1;a:1:{i:0;s:1:\"1\";}}s:5:\"state\";a:1:{i:1;a:1:{i:0;s:10:\"Standalone\";}}s:15:\"publicipversion\";a:1:{i:1;a:1:{i:0;s:11:\"Public IPv6\";}}s:12:\"public_ipqty\";a:1:{i:1;a:1:{i:0;s:0:\"\";}}s:10:\"virus_type\";a:1:{i:1;a:1:{i:0;s:17:\"Anti-Virus + HIPS\";}}s:10:\"03strgunit\";a:1:{i:1;s:2:\"TB\";}s:9:\"03iopsqty\";a:1:{i:1;s:0:\"\";}s:9:\"1strgunit\";a:1:{i:1;s:2:\"TB\";}s:8:\"1iopsqty\";a:1:{i:1;s:0:\"\";}s:9:\"3strgunit\";a:1:{i:1;s:2:\"TB\";}s:8:\"3iopsqty\";a:1:{i:1;s:0:\"\";}s:9:\"5strgunit\";a:1:{i:1;s:2:\"TB\";}s:8:\"5iopsqty\";a:1:{i:1;s:0:\"\";}s:9:\"8strgunit\";a:1:{i:1;s:2:\"TB\";}s:8:\"8iopsqty\";a:1:{i:1;s:0:\"\";}s:10:\"10strgunit\";a:1:{i:1;s:2:\"TB\";}s:9:\"10iopsqty\";a:1:{i:1;s:0:\"\";}s:11:\"backup_strg\";a:1:{i:1;s:3:\"100\";}s:11:\"backup_unit\";a:1:{i:1;s:2:\"GB\";}s:12:\"age_qty_type\";a:1:{i:1;s:6:\"All VM\";}s:6:\"ageqty\";a:1:{i:1;s:0:\"\";}s:8:\"arc_strg\";a:1:{i:1;s:3:\"504\";}s:13:\"archival_unit\";a:1:{i:1;s:2:\"GB\";}s:5:\"tlqty\";a:1:{i:1;s:0:\"\";}s:5:\"tcqty\";a:1:{i:1;s:0:\"\";}s:5:\"fcqty\";a:1:{i:1;s:0:\"\";}s:13:\"bandwidthType\";a:1:{i:1;s:30:\"Speed Based Internet Bandwidth\";}s:9:\"bandwidth\";a:1:{i:1;s:0:\"\";}s:13:\"load_balancer\";a:1:{i:1;s:0:\"\";}s:5:\"lbqty\";a:1:{i:1;s:0:\"\";}s:7:\"ccptqty\";a:1:{i:1;s:0:\"\";}s:9:\"sslvpnqty\";a:1:{i:1;s:0:\"\";}s:8:\"ipsecqty\";a:1:{i:1;s:0:\"\";}s:14:\"efv_throughput\";a:1:{i:1;s:0:\"\";}s:8:\"extfvqty\";a:1:{i:1;s:0:\"\";}s:14:\"ifv_thorughput\";a:1:{i:1;s:0:\"\";}s:8:\"intfvqty\";a:1:{i:1;s:0:\"\";}s:15:\"ddos_throughput\";a:1:{i:1;s:0:\"\";}s:8:\"waf_type\";a:1:{i:1;s:26:\"eNlight : Web App Firewall\";}s:3:\"waf\";a:1:{i:1;s:2:\"on\";}s:6:\"wafqty\";a:1:{i:1;s:1:\"1\";}s:3:\"ssl\";a:1:{i:1;s:0:\"\";}s:6:\"sslqty\";a:1:{i:1;s:0:\"\";}s:9:\"siem_name\";a:1:{i:1;s:0:\"\";}s:6:\"pimqty\";a:1:{i:1;s:0:\"\";}s:6:\"vtmqty\";a:1:{i:1;s:0:\"\";}s:9:\"vapt_type\";a:1:{i:1;s:0:\"\";}s:7:\"vaptqty\";a:1:{i:1;s:0:\"\";}s:14:\"vapt_frequency\";a:1:{i:1;s:9:\"Quarterly\";}s:8:\"hsm_type\";a:1:{i:1;s:0:\"\";}s:6:\"hsmqty\";a:1:{i:1;s:0:\"\";}s:6:\"tfaqty\";a:1:{i:1;s:0:\"\";}s:6:\"iamqty\";a:1:{i:1;s:0:\"\";}s:6:\"dlpqty\";a:1:{i:1;s:0:\"\";}s:6:\"edrqty\";a:1:{i:1;s:0:\"\";}s:6:\"damqty\";a:1:{i:1;s:0:\"\";}s:6:\"sorqty\";a:1:{i:1;s:0:\"\";}s:6:\"osmgmt\";a:1:{i:1;s:2:\"on\";}s:6:\"dbmgmt\";a:1:{i:1;s:2:\"on\";}s:8:\"strgmgmt\";a:1:{i:1;s:2:\"on\";}s:8:\"backmgmt\";a:1:{i:1;s:2:\"on\";}s:7:\"fv_mgmt\";a:1:{i:1;s:2:\"on\";}s:11:\"emagic_type\";a:1:{i:1;s:5:\"Basic\";}s:8:\"drillqty\";a:1:{i:1;s:0:\"\";}s:13:\"rep_link_type\";a:1:{i:1;s:0:\"\";}s:12:\"rep_link_qty\";a:1:{i:1;s:0:\"\";}s:7:\"proceed\";s:0:\"\";}', ''),
(16, 11, 1234, 'DC -1', '1', 11, 11, '2023-08-10', '2023-08-10 13:33:13', 24, 4337376, '{\"quot_type\":\"DC - DR\",\"price_list\":\"1\",\"pot_id\":\"1234\",\"project_name\":\"DC -1\",\"version\":\"  \",\"count_of_est\":\"1\",\"EstType\":{\"1\":\"DC\"},\"estmtname\":{\"1\":\"DC As per Meity\"},\"period\":{\"1\":\"24\"},\"count_of_vm\":{\"1\":\"2\"},\"vmname\":{\"1\":[\"Application VM\",\"DB VM\"]},\"region\":{\"1\":[\"Nashik\",\"Nashik\"]},\"sector\":{\"1\":[\"Government\",\"Government\"]},\"os\":{\"1\":[\"Linux : RHEL\",\"Linux : RHEL\"]},\"database\":{\"1\":[\"NA\",\"Postgre SQL Community\"]},\"series\":{\"1\":[\"Flexible Compute\",\"Flexible Compute\"]},\"vcpu\":{\"1\":[\"4\",\"4\"]},\"ram\":{\"1\":[\"32\",\"32\"]},\"inst_disk\":{\"1\":[\"32\",\"32\"]},\"instance\":{\"1\":[\"Flexi\",\"Flexi\"]},\"vmqty\":{\"1\":[\"3\",\"3\"]},\"state\":{\"1\":[\"Standalone\",\"Standalone\"]},\"publicipversion\":{\"1\":[\"Public IPv6\",\"Public IPv6\"]},\"ip_public\":{\"1\":[\"on\",\"on\"]},\"public_ipqty\":{\"1\":[\"3\",\"3\"]},\"virus_type\":{\"1\":[\"Anti-Virus + HIPS\",\"Anti-Virus + HIPS\"]},\"03strgunit\":{\"1\":\"TB\"},\"03iopsqty\":{\"1\":\"\"},\"1strgunit\":{\"1\":\"TB\"},\"1iopsqty\":{\"1\":\"\"},\"3strgunit\":{\"1\":\"GB\"},\"3iops\":{\"1\":\"on\"},\"3iopsqty\":{\"1\":\"128\"},\"5strgunit\":{\"1\":\"TB\"},\"5iopsqty\":{\"1\":\"\"},\"8strgunit\":{\"1\":\"TB\"},\"8iopsqty\":{\"1\":\"\"},\"10strgunit\":{\"1\":\"TB\"},\"10iopsqty\":{\"1\":\"\"},\"backup_strg\":{\"1\":\"500\"},\"backup_unit\":{\"1\":\"GB\"},\"age_qty_type\":{\"1\":\"DB VM\"},\"ageqty\":{\"1\":\"\"},\"arc_strg\":{\"1\":\"\"},\"archival_unit\":{\"1\":\"TB\"},\"tlqty\":{\"1\":\"\"},\"tcqty\":{\"1\":\"\"},\"fcqty\":{\"1\":\"\"},\"bandwidthType\":{\"1\":\"Speed Based Internet Bandwidth\"},\"bandwidth\":{\"1\":\"20\"},\"load_balancer\":{\"1\":\"Load Balancer : HA Proxy\"},\"lbqty\":{\"1\":\"1\"},\"ccptqty\":{\"1\":\"\"},\"sslvpnqty\":{\"1\":\"\"},\"ipsecqty\":{\"1\":\"\"},\"efv_throughput\":{\"1\":\"Fortinet- External vFirewall : 1GBPS\"},\"extfirewall\":{\"1\":\"on\"},\"extfvqty\":{\"1\":\"2\"},\"ifv_thorughput\":{\"1\":\"Fortinet- Internal vFirewall : 1GBPS\"},\"intfirewall\":{\"1\":\"on\"},\"intfvqty\":{\"1\":\"2\"},\"ddos_throughput\":{\"1\":\"DDoS Mitigation - 512Mbps\"},\"ddos\":{\"1\":\"on\"},\"waf_type\":{\"1\":\"eNlight : Web App Firewall\"},\"waf\":{\"1\":\"on\"},\"wafqty\":{\"1\":\"1\"},\"ssl\":{\"1\":\"\"},\"sslqty\":{\"1\":\"\"},\"siem_name\":{\"1\":\"SECEON SIEM\"},\"siem\":{\"1\":\"on\"},\"pimqty\":{\"1\":\"\"},\"vtmqty\":{\"1\":\"\"},\"vapt_type\":{\"1\":\"CERTIN- VAPT Audit\"},\"vapt\":{\"1\":\"on\"},\"vaptqty\":{\"1\":\"1\"},\"vapt_frequency\":{\"1\":\"Yearly\"},\"hsm_type\":{\"1\":\"\"},\"hsmqty\":{\"1\":\"\"},\"tfaqty\":{\"1\":\"\"},\"iamqty\":{\"1\":\"\"},\"dlpqty\":{\"1\":\"\"},\"edrqty\":{\"1\":\"\"},\"damqty\":{\"1\":\"\"},\"sorqty\":{\"1\":\"\"},\"osmgmt\":{\"1\":\"on\"},\"dbmgmt\":{\"1\":\"on\"},\"strgmgmt\":{\"1\":\"on\"},\"backmgmt\":{\"1\":\"on\"},\"lb_mgmt\":{\"1\":\"on\"},\"fv_mgmt\":{\"1\":\"on\"},\"wafmgmt\":{\"1\":\"on\"},\"emagic_type\":{\"1\":\"Basic\"},\"drillqty\":{\"1\":\"\"},\"rep_link_type\":{\"1\":\"\"},\"rep_link_qty\":{\"1\":\"\"},\"proceed\":\"\"}', ''),
(17, 11, 1234, 'DC -1', '2', 11, 11, '2023-08-10', '2023-08-10 13:35:53', 24, 4817376, '{\"quot_type\":\"DC - DR\",\"price_list\":\"1\",\"pot_id\":\"1234\",\"project_name\":\"DC -1\",\"version\":\"  \",\"count_of_est\":\"1\",\"EstType\":{\"1\":\"DR\"},\"estmtname\":{\"1\":\"DC As per Meity\"},\"period\":{\"1\":\"24\"},\"count_of_vm\":{\"1\":\"2\"},\"vmname\":{\"1\":[\"Application VM\",\"DB VM\"]},\"region\":{\"1\":[\"Nashik\",\"Nashik\"]},\"sector\":{\"1\":[\"Government\",\"Government\"]},\"os\":{\"1\":[\"Linux : RHEL\",\"Linux : RHEL\"]},\"database\":{\"1\":[\"NA\",\"Postgre SQL Community\"]},\"series\":{\"1\":[\"Flexible Compute\",\"Flexible Compute\"]},\"vcpu\":{\"1\":[\"4\",\"4\"]},\"ram\":{\"1\":[\"32\",\"32\"]},\"inst_disk\":{\"1\":[\"32\",\"32\"]},\"instance\":{\"1\":[\"Flexi\",\"Flexi\"]},\"vmqty\":{\"1\":[\"3\",\"3\"]},\"state\":{\"1\":[\"Standalone\",\"Standalone\"]},\"publicipversion\":{\"1\":[\"Public IPv6\",\"Public IPv6\"]},\"ip_public\":{\"1\":[\"on\",\"on\"]},\"public_ipqty\":{\"1\":[\"3\",\"3\"]},\"virus_type\":{\"1\":[\"Anti-Virus + HIPS\",\"Anti-Virus + HIPS\"]},\"03strgunit\":{\"1\":\"TB\"},\"03iopsqty\":{\"1\":\"\"},\"1strgunit\":{\"1\":\"TB\"},\"1iopsqty\":{\"1\":\"\"},\"3strgunit\":{\"1\":\"GB\"},\"3iops\":{\"1\":\"on\"},\"3iopsqty\":{\"1\":\"128\"},\"5strgunit\":{\"1\":\"TB\"},\"5iopsqty\":{\"1\":\"\"},\"8strgunit\":{\"1\":\"TB\"},\"8iopsqty\":{\"1\":\"\"},\"10strgunit\":{\"1\":\"TB\"},\"10iopsqty\":{\"1\":\"\"},\"backup_strg\":{\"1\":\"500\"},\"backup_unit\":{\"1\":\"GB\"},\"age_qty_type\":{\"1\":\"DB VM\"},\"ageqty\":{\"1\":\"\"},\"arc_strg\":{\"1\":\"\"},\"archival_unit\":{\"1\":\"TB\"},\"tlqty\":{\"1\":\"\"},\"tcqty\":{\"1\":\"\"},\"fcqty\":{\"1\":\"\"},\"bandwidthType\":{\"1\":\"Speed Based Internet Bandwidth\"},\"bandwidth\":{\"1\":\"20\"},\"load_balancer\":{\"1\":\"Load Balancer : HA Proxy\"},\"lbqty\":{\"1\":\"1\"},\"ccptqty\":{\"1\":\"\"},\"sslvpnqty\":{\"1\":\"\"},\"ipsecqty\":{\"1\":\"\"},\"efv_throughput\":{\"1\":\"Fortinet- External vFirewall : 1GBPS\"},\"extfirewall\":{\"1\":\"on\"},\"extfvqty\":{\"1\":\"2\"},\"ifv_thorughput\":{\"1\":\"Fortinet- Internal vFirewall : 1GBPS\"},\"intfirewall\":{\"1\":\"on\"},\"intfvqty\":{\"1\":\"2\"},\"ddos_throughput\":{\"1\":\"DDoS Mitigation - 512Mbps\"},\"ddos\":{\"1\":\"on\"},\"waf_type\":{\"1\":\"eNlight : Web App Firewall\"},\"waf\":{\"1\":\"on\"},\"wafqty\":{\"1\":\"1\"},\"ssl\":{\"1\":\"\"},\"sslqty\":{\"1\":\"\"},\"siem_name\":{\"1\":\"SECEON SIEM\"},\"siem\":{\"1\":\"on\"},\"pimqty\":{\"1\":\"\"},\"vtmqty\":{\"1\":\"\"},\"vapt_type\":{\"1\":\"CERTIN- VAPT Audit\"},\"vapt\":{\"1\":\"on\"},\"vaptqty\":{\"1\":\"1\"},\"vapt_frequency\":{\"1\":\"Yearly\"},\"hsm_type\":{\"1\":\"\"},\"hsmqty\":{\"1\":\"\"},\"tfaqty\":{\"1\":\"\"},\"iamqty\":{\"1\":\"\"},\"dlpqty\":{\"1\":\"\"},\"edrqty\":{\"1\":\"\"},\"damqty\":{\"1\":\"\"},\"sorqty\":{\"1\":\"\"},\"osmgmt\":{\"1\":\"on\"},\"dbmgmt\":{\"1\":\"on\"},\"strgmgmt\":{\"1\":\"on\"},\"backmgmt\":{\"1\":\"on\"},\"lb_mgmt\":{\"1\":\"on\"},\"fv_mgmt\":{\"1\":\"on\"},\"wafmgmt\":{\"1\":\"on\"},\"emagic_type\":{\"1\":\"Basic\"},\"drm\":{\"1\":\"on\"},\"dr_drill\":{\"1\":\"on\"},\"drillqty\":{\"1\":\"2\"},\"rep_link_type\":{\"1\":\"MPLS Link\"},\"rep_link\":{\"1\":\"on\"},\"rep_link_qty\":{\"1\":\"7\"},\"rep_link_mgmt\":{\"1\":\"on\"},\"proceed\":\"\"}', ''),
(18, 11, 1234, 'DC -1', '2', 11, 11, '2023-08-10', '2023-08-10 13:40:57', 24, 2507784, '{\"quot_type\":\"DC - DR\",\"price_list\":\"1\",\"pot_id\":\"1234\",\"project_name\":\"DC -1\",\"version\":\"  \",\"count_of_est\":\"1\",\"EstType\":{\"1\":\"DR\"},\"estmtname\":{\"1\":\"DR As per Meity\"},\"period\":{\"1\":\"24\"},\"count_of_vm\":{\"1\":\"2\"},\"vmname\":{\"1\":[\"Application VM\",\"DB VM\"]},\"region\":{\"1\":[\"Nashik\",\"Nashik\"]},\"sector\":{\"1\":[\"Government\",\"Government\"]},\"os\":{\"1\":[\"Linux : RHEL\",\"Linux : RHEL\"]},\"database\":{\"1\":[\"NA\",\"Postgre SQL Community\"]},\"series\":{\"1\":[\"Flexible Compute\",\"Flexible Compute\"]},\"vcpu\":{\"1\":[\"4\",\"4\"]},\"ram\":{\"1\":[\"32\",\"32\"]},\"inst_disk\":{\"1\":[\"32\",\"32\"]},\"instance\":{\"1\":[\"Flexi\",\"Flexi\"]},\"vmqty\":{\"1\":[\"3\",\"3\"]},\"state\":{\"1\":[\"Standalone\",\"Standalone\"]},\"publicipversion\":{\"1\":[\"Public IPv6\",\"Public IPv6\"]},\"ip_public\":{\"1\":[\"on\",\"on\"]},\"public_ipqty\":{\"1\":[\"3\",\"3\"]},\"virus_type\":{\"1\":[\"Anti-Virus + HIPS\",\"Anti-Virus + HIPS\"]},\"03strgunit\":{\"1\":\"TB\"},\"03iopsqty\":{\"1\":\"\"},\"1strgunit\":{\"1\":\"TB\"},\"1iopsqty\":{\"1\":\"\"},\"3strgunit\":{\"1\":\"GB\"},\"3iops\":{\"1\":\"on\"},\"3iopsqty\":{\"1\":\"128\"},\"5strgunit\":{\"1\":\"TB\"},\"5iopsqty\":{\"1\":\"\"},\"8strgunit\":{\"1\":\"TB\"},\"8iopsqty\":{\"1\":\"\"},\"10strgunit\":{\"1\":\"TB\"},\"10iopsqty\":{\"1\":\"\"},\"backup_strg\":{\"1\":\"500\"},\"backup_unit\":{\"1\":\"GB\"},\"age_qty_type\":{\"1\":\"DB VM\"},\"ageqty\":{\"1\":\"\"},\"arc_strg\":{\"1\":\"\"},\"archival_unit\":{\"1\":\"TB\"},\"tlqty\":{\"1\":\"\"},\"tcqty\":{\"1\":\"\"},\"fcqty\":{\"1\":\"\"},\"bandwidthType\":{\"1\":\"Speed Based Internet Bandwidth\"},\"bandwidth\":{\"1\":\"20\"},\"load_balancer\":{\"1\":\"Load Balancer : HA Proxy\"},\"lbqty\":{\"1\":\"1\"},\"ccptqty\":{\"1\":\"\"},\"sslvpnqty\":{\"1\":\"\"},\"ipsecqty\":{\"1\":\"\"},\"efv_throughput\":{\"1\":\"Fortinet- External vFirewall : 1GBPS\"},\"extfvqty\":{\"1\":\"0\"},\"ifv_thorughput\":{\"1\":\"Fortinet- Internal vFirewall : 1GBPS\"},\"intfvqty\":{\"1\":\"0\"},\"utm\":{\"1\":\"on\"},\"ddos_throughput\":{\"1\":\"DDoS Mitigation - 512Mbps\"},\"waf_type\":{\"1\":\"eNlight : Web App Firewall\"},\"wafqty\":{\"1\":\"0\"},\"ssl\":{\"1\":\"\"},\"sslqty\":{\"1\":\"\"},\"siem_name\":{\"1\":\"SECEON SIEM\"},\"pimqty\":{\"1\":\"\"},\"vtmqty\":{\"1\":\"\"},\"vapt_type\":{\"1\":\"CERTIN- VAPT Audit\"},\"vaptqty\":{\"1\":\"0\"},\"vapt_frequency\":{\"1\":\"Yearly\"},\"hsm_type\":{\"1\":\"\"},\"hsmqty\":{\"1\":\"\"},\"tfaqty\":{\"1\":\"\"},\"iamqty\":{\"1\":\"\"},\"dlpqty\":{\"1\":\"\"},\"edrqty\":{\"1\":\"\"},\"damqty\":{\"1\":\"\"},\"sorqty\":{\"1\":\"\"},\"osmgmt\":{\"1\":\"on\"},\"dbmgmt\":{\"1\":\"on\"},\"strgmgmt\":{\"1\":\"on\"},\"backmgmt\":{\"1\":\"on\"},\"lb_mgmt\":{\"1\":\"on\"},\"fv_mgmt\":{\"1\":\"on\"},\"wafmgmt\":{\"1\":\"on\"},\"emagic_type\":{\"1\":\"Basic\"},\"drm\":{\"1\":\"on\"},\"dr_drill\":{\"1\":\"on\"},\"drillqty\":{\"1\":\"2\"},\"rep_link_type\":{\"1\":\"MPLS Link\"},\"rep_link\":{\"1\":\"on\"},\"rep_link_qty\":{\"1\":\"7\"},\"rep_link_mgmt\":{\"1\":\"on\"},\"proceed\":\"\"}', ''),
(19, 11, 1234, 'DC -1', '2', 11, 11, '2023-08-10', '2023-08-10 13:43:02', 24, 2507784, '{\"quot_type\":\"DC - DR\",\"price_list\":\"1\",\"pot_id\":\"1234\",\"project_name\":\"DC -1\",\"version\":\"  \",\"count_of_est\":\"1\",\"EstType\":{\"1\":\"DC\"},\"estmtname\":{\"1\":\"DR As per You\"},\"period\":{\"1\":\"24\"},\"count_of_vm\":{\"1\":\"2\"},\"vmname\":{\"1\":[\"Application VM\",\"DB VM\"]},\"region\":{\"1\":[\"Nashik\",\"Nashik\"]},\"sector\":{\"1\":[\"Government\",\"Government\"]},\"os\":{\"1\":[\"Linux : RHEL\",\"Linux : RHEL\"]},\"database\":{\"1\":[\"NA\",\"Postgre SQL Community\"]},\"series\":{\"1\":[\"Flexible Compute\",\"Flexible Compute\"]},\"vcpu\":{\"1\":[\"4\",\"4\"]},\"ram\":{\"1\":[\"32\",\"32\"]},\"inst_disk\":{\"1\":[\"32\",\"32\"]},\"instance\":{\"1\":[\"Flexi\",\"Flexi\"]},\"vmqty\":{\"1\":[\"3\",\"3\"]},\"state\":{\"1\":[\"Standalone\",\"Standalone\"]},\"publicipversion\":{\"1\":[\"Public IPv6\",\"Public IPv6\"]},\"ip_public\":{\"1\":[\"on\",\"on\"]},\"public_ipqty\":{\"1\":[\"3\",\"3\"]},\"virus_type\":{\"1\":[\"Anti-Virus + HIPS\",\"Anti-Virus + HIPS\"]},\"03strgunit\":{\"1\":\"TB\"},\"03iopsqty\":{\"1\":\"\"},\"1strgunit\":{\"1\":\"TB\"},\"1iopsqty\":{\"1\":\"\"},\"3strgunit\":{\"1\":\"GB\"},\"3iops\":{\"1\":\"on\"},\"3iopsqty\":{\"1\":\"128\"},\"5strgunit\":{\"1\":\"TB\"},\"5iopsqty\":{\"1\":\"\"},\"8strgunit\":{\"1\":\"TB\"},\"8iopsqty\":{\"1\":\"\"},\"10strgunit\":{\"1\":\"TB\"},\"10iopsqty\":{\"1\":\"\"},\"backup_strg\":{\"1\":\"500\"},\"backup_unit\":{\"1\":\"GB\"},\"age_qty_type\":{\"1\":\"DB VM\"},\"ageqty\":{\"1\":\"\"},\"arc_strg\":{\"1\":\"\"},\"archival_unit\":{\"1\":\"TB\"},\"tlqty\":{\"1\":\"\"},\"tcqty\":{\"1\":\"\"},\"fcqty\":{\"1\":\"\"},\"bandwidthType\":{\"1\":\"Speed Based Internet Bandwidth\"},\"bandwidth\":{\"1\":\"20\"},\"load_balancer\":{\"1\":\"Load Balancer : HA Proxy\"},\"lbqty\":{\"1\":\"1\"},\"ccptqty\":{\"1\":\"\"},\"sslvpnqty\":{\"1\":\"\"},\"ipsecqty\":{\"1\":\"\"},\"efv_throughput\":{\"1\":\"Fortinet- External vFirewall : 1GBPS\"},\"extfvqty\":{\"1\":\"0\"},\"ifv_thorughput\":{\"1\":\"Fortinet- Internal vFirewall : 1GBPS\"},\"intfvqty\":{\"1\":\"0\"},\"utm\":{\"1\":\"on\"},\"ddos_throughput\":{\"1\":\"DDoS Mitigation - 512Mbps\"},\"waf_type\":{\"1\":\"eNlight : Web App Firewall\"},\"wafqty\":{\"1\":\"0\"},\"ssl\":{\"1\":\"\"},\"sslqty\":{\"1\":\"\"},\"siem_name\":{\"1\":\"SECEON SIEM\"},\"pimqty\":{\"1\":\"\"},\"vtmqty\":{\"1\":\"\"},\"vapt_type\":{\"1\":\"CERTIN- VAPT Audit\"},\"vaptqty\":{\"1\":\"0\"},\"vapt_frequency\":{\"1\":\"Yearly\"},\"hsm_type\":{\"1\":\"\"},\"hsmqty\":{\"1\":\"\"},\"tfaqty\":{\"1\":\"\"},\"iamqty\":{\"1\":\"\"},\"dlpqty\":{\"1\":\"\"},\"edrqty\":{\"1\":\"\"},\"damqty\":{\"1\":\"\"},\"sorqty\":{\"1\":\"\"},\"osmgmt\":{\"1\":\"on\"},\"dbmgmt\":{\"1\":\"on\"},\"strgmgmt\":{\"1\":\"on\"},\"backmgmt\":{\"1\":\"on\"},\"lb_mgmt\":{\"1\":\"on\"},\"fv_mgmt\":{\"1\":\"on\"},\"wafmgmt\":{\"1\":\"on\"},\"emagic_type\":{\"1\":\"Basic\"},\"drm\":{\"1\":\"on\"},\"dr_drill\":{\"1\":\"on\"},\"drillqty\":{\"1\":\"2\"},\"rep_link_type\":{\"1\":\"MPLS Link\"},\"rep_link\":{\"1\":\"on\"},\"rep_link_qty\":{\"1\":\"7\"},\"rep_link_mgmt\":{\"1\":\"on\"},\"proceed\":\"\"}', ''),
(20, 3094, 8615, 'Testing Configurator', '1', 3094, 3094, '2023-08-14', '2023-08-14 09:38:51', 1, 111632, '{\"quot_type\":\"DC - DR\",\"price_list\":\"1\",\"pot_id\":\"8688\",\"project_name\":\"DMIC Noida\",\"version\":\"  \",\"count_of_est\":\"1\",\"EstType\":{\"1\":\"DC\"},\"estmtname\":{\"1\":\"DMIC Noida\"},\"period\":{\"1\":\"43\"},\"count_of_vm\":{\"1\":\"22\"},\"vmname\":{\"1\":[\"Variable Message Sign\",\"CCTV Surveillance\",\"ICCC\",\"ICCC\",\"ICCC\",\"ICCC\",\"EMS\",\"EMS\",\"AV\",\"Software Modules & ESB\",\"Software Modules & ESB\",\"Software Modules & ESB\",\"GIS\",\"GIS\",\"GIS\",\"E-LMS\",\"E-LMS\",\"E-LMS\",\"Others\",\"Others\",\"Others\"]},\"region\":{\"1\":[\"Nashik\",\"Nashik\",\"Nashik\",\"Nashik\",\"Nashik\",\"Nashik\",\"Nashik\",\"Nashik\",\"Nashik\",\"Nashik\",\"Nashik\",\"Nashik\",\"Nashik\",\"Nashik\",\"Nashik\",\"Nashik\",\"Nashik\",\"Nashik\",\"Nashik\",\"Nashik\",\"Nashik\"]},\"sector\":{\"1\":[\"Government\",\"Government\",\"Government\",\"Government\",\"Government\",\"Government\",\"Government\",\"Government\",\"Government\",\"Government\",\"Government\",\"Government\",\"Government\",\"Government\",\"Government\",\"Government\",\"Government\",\"Government\",\"Government\",\"Government\",\"Government\"]},\"os\":{\"1\":[\"Windows Standard Edition\",\"Linux : UBUNTU\",\"Windows Standard Edition\",\"Linux : UBUNTU\",\"Linux : UBUNTU\",\"Linux : UBUNTU\",\"\",\"Linux : UBUNTU\",\"Windows Standard Edition\",\"Linux : UBUNTU\",\"Linux : UBUNTU\",\"Linux : UBUNTU\",\"Windows Standard Edition\",\"Windows Standard Edition\",\"Windows Standard Edition\",\"Linux : UBUNTU\",\"Linux : UBUNTU\",\"Linux : UBUNTU\",\"Linux : UBUNTU\",\"Linux : UBUNTU\",\"Windows Standard Edition\"]},\"database\":{\"1\":[\"MY SQL Community\",\"NA\",\"\",\"NA\",\"NA\",\"NA\",\"\",\"MY SQL Community\",\"MY SQL Community\",\"NA\",\"Postgre SQL Community\",\"NA\",\"NA\",\"Postgre SQL Community\",\"NA\",\"\",\"MY SQL Community\",\"\",\"NA\",\"MY SQL Community\",\"NA\"]},\"series\":{\"1\":[\"Flexible Compute\",\"Flexible Compute\",\"Flexible Compute\",\"Flexible Compute\",\"Flexible Compute\",\"Flexible Compute\",\"Flexible Compute\",\"Flexible Compute\",\"Flexible Compute\",\"Flexible Compute\",\"Flexible Compute\",\"Flexible Compute\",\"Flexible Compute\",\"Flexible Compute\",\"Flexible Compute\",\"Flexible Compute\",\"Flexible Compute\",\"Flexible Compute\",\"Flexible Compute\",\"Flexible Compute\",\"Flexible Compute\"]},\"vcpu\":{\"1\":[\"8\",\"4\",\"16\",\"16\",\"12\",\"16\",\"8\",\"16\",\"8\",\"16\",\"16\",\"8\",\"16\",\"16\",\"16\",\"4\",\"4\",\"2\",\"16\",\"16\",\"16\"]},\"ram\":{\"1\":[\"16\",\"16\",\"64\",\"128\",\"128\",\"96\",\"64\",\"96\",\"24\",\"32\",\"32\",\"16\",\"64\",\"64\",\"64\",\"16\",\"16\",\"8\",\"64\",\"64\",\"64\"]},\"inst_disk\":{\"1\":[\"205\",\"410\",\"1229\",\"1229\",\"1229\",\"1229\",\"103\",\"103\",\"308\",\"410\",\"410\",\"410\",\"308\",\"308\",\"308\",\"205\",\"103\",\"205\",\"308\",\"308\",\"308\"]},\"instance\":{\"1\":[\"Flexi\",\"Flexi\",\"Flexi\",\"Flexi\",\"Flexi\",\"Flexi\",\"Flexi\",\"Flexi\",\"Flexi\",\"Flexi\",\"Flexi\",\"Flexi\",\"Flexi\",\"Flexi\",\"Flexi\",\"Flexi\",\"Flexi\",\"Flexi\",\"Flexi\",\"Flexi\",\"Flexi\"]},\"vmqty\":{\"1\":[\"2\",\"02\",\"2\",\"2\",\"5\",\"1\",\"3\",\"2\",\"2\",\"3\",\"02\",\"1\",\"1\",\"1\",\"1\",\"1\",\"1\",\"1\",\"04\",\"02\",\"02\"]},\"state\":{\"1\":[\"Active-Active\",\"Active-Active\",\"Active-Active\",\"Active-Active\",\"Active-Active\",\"Active\",\"Active-Passive\",\"Active-Active\",\"Active-Active\",\"Active-Active\",\"Active-Active\",\"Active\",\"Active\",\"Active\",\"Active\",\"Active\",\"Active\",\"Active\",\"Active-Active\",\"Active-Active\",\"Active-Active\"]},\"publicipversion\":{\"1\":[\"Public IPv6\",\"Public IPv6\",\"Public IPv6\",\"Public IPv6\",\"Public IPv6\",\"Public IPv6\",\"Public IPv6\",\"Public IPv6\",\"Public IPv6\",\"Public IPv6\",\"Public IPv6\",\"Public IPv6\",\"Public IPv6\",\"Public IPv6\",\"Public IPv6\",\"Public IPv6\",\"Public IPv6\",\"Public IPv6\",\"Public IPv6\",\"Public IPv6\",\"Public IPv6\"]},\"ip_public\":{\"1\":[\"on\"]},\"public_ipqty\":{\"1\":[\"20\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"]},\"virus_type\":{\"1\":[\"Anti-Virus + HIPS\",\"Anti-Virus + HIPS\",\"Anti-Virus + HIPS\",\"Anti-Virus + HIPS\",\"Anti-Virus + HIPS\",\"Anti-Virus + HIPS\",\"Anti-Virus + HIPS\",\"Anti-Virus + HIPS\",\"Anti-Virus + HIPS\",\"Anti-Virus + HIPS\",\"Anti-Virus + HIPS\",\"Anti-Virus + HIPS\",\"Anti-Virus + HIPS\",\"Anti-Virus + HIPS\",\"Anti-Virus + HIPS\",\"Anti-Virus + HIPS\",\"Anti-Virus + HIPS\",\"Anti-Virus + HIPS\",\"Anti-Virus + HIPS\",\"Anti-Virus + HIPS\",\"Anti-Virus + HIPS\"]},\"03strgunit\":{\"1\":\"TB\"},\"03iops\":{\"1\":\"on\"},\"03iopsqty\":{\"1\":\"186\"},\"1strgunit\":{\"1\":\"TB\"},\"1iopsqty\":{\"1\":\"\"},\"3strgunit\":{\"1\":\"TB\"},\"3iopsqty\":{\"1\":\"\"},\"5strgunit\":{\"1\":\"TB\"},\"5iopsqty\":{\"1\":\"\"},\"8strgunit\":{\"1\":\"TB\"},\"8iopsqty\":{\"1\":\"\"},\"10strgunit\":{\"1\":\"TB\"},\"10iopsqty\":{\"1\":\"\"},\"backup_strg\":{\"1\":\"5\"},\"backup_unit\":{\"1\":\"TB\"},\"age_qty_type\":{\"1\":\"\"},\"ageqty\":{\"1\":\"\"},\"arc_strg\":{\"1\":\"\"},\"archival_unit\":{\"1\":\"TB\"},\"tlqty\":{\"1\":\"\"},\"tcqty\":{\"1\":\"\"},\"fcqty\":{\"1\":\"\"},\"bandwidthType\":{\"1\":\"Speed Based Internet Bandwidth\"},\"bandwidth\":{\"1\":\"200\"},\"load_balancer\":{\"1\":\"\"},\"lbqty\":{\"1\":\"2\"},\"ccptqty\":{\"1\":\"2\"},\"sslvpnqty\":{\"1\":\"\"},\"ipsecqty\":{\"1\":\"\"},\"efv_throughput\":{\"1\":\"Fortinet- External vFirewall : 1GBPS\"},\"extfirewall\":{\"1\":\"on\"},\"extfvqty\":{\"1\":\"2\"},\"ifv_throughput\":{\"1\":\"Fortinet- Internal vFirewall : 1GBPS\"},\"intfirewall\":{\"1\":\"on\"},\"intfvqty\":{\"1\":\"2\"},\"utm\":{\"1\":\"on\"},\"ddos_throughput\":{\"1\":\"DDoS Mitigation - 1Gbps\"},\"ddos\":{\"1\":\"on\"},\"waf_type\":{\"1\":\"eNlight : Web App Firewall\"},\"waf\":{\"1\":\"on\"},\"wafqty\":{\"1\":\"2\"},\"ssl\":{\"1\":\"Organisational Wildcard SSL Certificate\"},\"ssl-check\":{\"1\":\"on\"},\"sslqty\":{\"1\":\"01\"},\"siem_name\":{\"1\":\"SECEON SIEM\"},\"siem\":{\"1\":\"on\"},\"pimqty\":{\"1\":\"\"},\"vtm\":{\"1\":\"on\"},\"vtmqty\":{\"1\":\"4 scans per month\"},\"vapt_type\":{\"1\":\"CERTIN- VAPT Audit\"},\"vapt\":{\"1\":\"on\"},\"vaptqty\":{\"1\":\"02\"},\"vapt_frequency\":{\"1\":\"Yearly\"},\"hsm_type\":{\"1\":\"\"},\"hsmqty\":{\"1\":\"\"},\"tfaqty\":{\"1\":\"\"},\"iam\":{\"1\":\"on\"},\"iamqty\":{\"1\":\"30\"},\"dlpqty\":{\"1\":\"\"},\"edrqty\":{\"1\":\"\"},\"damqty\":{\"1\":\"\"},\"sorqty\":{\"1\":\"\"},\"osmgmt\":{\"1\":\"on\"},\"dbmgmt\":{\"1\":\"on\"},\"strgmgmt\":{\"1\":\"on\"},\"backmgmt\":{\"1\":\"on\"},\"lb_mgmt\":{\"1\":\"on\"},\"fv_mgmt\":{\"1\":\"on\"},\"wafmgmt\":{\"1\":\"on\"},\"emagic_type\":{\"1\":\"Basic\"},\"emagic\":{\"1\":\"on\"},\"drillqty\":{\"1\":\"\"},\"rep_link_type\":{\"1\":\"\"},\"rep_link_qty\":{\"1\":\"\"},\"proceed\":\"\"}', '');
INSERT INTO `tbl_saved_estimates` (`id`, `emp_code`, `pot_id`, `project_name`, `version`, `owner`, `last_changed_by`, `date_created`, `date_updated`, `contract_period`, `total_upfront`, `data`, `prices`) VALUES
(21, 3094, 8688, 'DMIC Noida', '1', 3094, 3094, '2023-08-17', '2023-08-17 05:11:28', 43, 117789255, '{\"quot_type\":\"DC - DR\",\"price_list\":\"1\",\"pot_id\":\"8688\",\"project_name\":\"DMIC Noida\",\"version\":\" 1 \",\"count_of_est\":\"2\",\"EstType\":{\"1\":\"DC\",\"2\":\"DC\"},\"estmtname\":{\"1\":\"DMIC Noida\",\"2\":\"DMIC Noida\"},\"period\":{\"1\":\"43\",\"2\":\"43\"},\"count_of_vm\":{\"1\":\"21\",\"2\":\"21\"},\"vmname\":{\"1\":[\"Variable Message Sign\",\"ICCC\",\"CCTV Surveillance\",\"ICCC\",\"ICCC\",\"ICCC\",\"EMS\",\"EMS\",\"AV\",\"Software Modules & ESB\",\"Software Modules & ESB\",\"Software Modules & ESB\",\"GIS\",\"GIS\",\"GIS\",\"E-LMS\",\"E-LMS\",\"E-LMS\",\"Others\",\"Others\",\"Others\"],\"2\":[\"Variable Message Sign\",\"CCTV Surveillance\",\"ICCC\",\"ICCC\",\"ICCC\",\"ICCC\",\"EMS\",\"EMS\",\"AV\",\"Software Modules & ESB\",\"Software Modules & ESB\",\"Software Modules & ESB\",\"GIS\",\"GIS\",\"GIS\",\"E-LMS\",\"E-LMS\",\"E-LMS\",\"Others\",\"Others\",\"Others\"]},\"region\":{\"1\":[\"Nashik\",\"Nashik\",\"Nashik\",\"Nashik\",\"Nashik\",\"Nashik\",\"Nashik\",\"Nashik\",\"Nashik\",\"Nashik\",\"Nashik\",\"Nashik\",\"Nashik\",\"Nashik\",\"Nashik\",\"Nashik\",\"Nashik\",\"Nashik\",\"Nashik\",\"Nashik\",\"Nashik\"],\"2\":[\"Nashik\",\"Nashik\",\"Nashik\",\"Nashik\",\"Nashik\",\"Nashik\",\"Nashik\",\"Nashik\",\"Nashik\",\"Nashik\",\"Nashik\",\"Nashik\",\"Nashik\",\"Nashik\",\"Nashik\",\"Nashik\",\"Nashik\",\"Nashik\",\"Nashik\",\"Nashik\",\"Nashik\"]},\"sector\":{\"1\":[\"Government\",\"Government\",\"Government\",\"Government\",\"Government\",\"Government\",\"Government\",\"Government\",\"Government\",\"Government\",\"Government\",\"Government\",\"Government\",\"Government\",\"Government\",\"Government\",\"Government\",\"Government\",\"Government\",\"Government\",\"Government\"],\"2\":[\"Government\",\"Government\",\"Government\",\"Government\",\"Government\",\"Government\",\"Government\",\"Government\",\"Government\",\"Government\",\"Government\",\"Government\",\"Government\",\"Government\",\"Government\",\"Government\",\"Government\",\"Government\",\"Government\",\"Government\",\"Government\"]},\"os\":{\"1\":[\"Windows Standard Edition\",\"Windows Standard Edition\",\"Linux : UBUNTU\",\"Linux : UBUNTU\",\"Linux : UBUNTU\",\"Linux : UBUNTU\",\"\",\"Linux : UBUNTU\",\"Windows Standard Edition\",\"Linux : UBUNTU\",\"Linux : UBUNTU\",\"Linux : UBUNTU\",\"Windows Standard Edition\",\"Windows Standard Edition\",\"Windows Standard Edition\",\"Linux : UBUNTU\",\"Linux : UBUNTU\",\"Linux : UBUNTU\",\"Linux : UBUNTU\",\"Linux : UBUNTU\",\"Windows Standard Edition\"],\"2\":[\"Windows Standard Edition\",\"Linux : UBUNTU\",\"Linux : UBUNTU\",\"Linux : UBUNTU\",\"Linux : UBUNTU\",\"Windows Standard Edition\",\"\",\"Linux : UBUNTU\",\"Windows Standard Edition\",\"Linux : UBUNTU\",\"Linux : UBUNTU\",\"Linux : UBUNTU\",\"Windows Standard Edition\",\"Windows Standard Edition\",\"Windows Standard Edition\",\"Linux : UBUNTU\",\"Linux : UBUNTU\",\"Linux : UBUNTU\",\"Linux : UBUNTU\",\"Linux : UBUNTU\",\"Windows Standard Edition\"]},\"database\":{\"1\":[\"MY SQL Community\",\"\",\"NA\",\"NA\",\"NA\",\"NA\",\"\",\"MY SQL Community\",\"MY SQL Community\",\"NA\",\"Postgre SQL Community\",\"NA\",\"NA\",\"Postgre SQL Community\",\"NA\",\"\",\"MY SQL Community\",\"\",\"NA\",\"MY SQL Community\",\"NA\"],\"2\":[\"MY SQL Community\",\"NA\",\"NA\",\"NA\",\"NA\",\"\",\"\",\"MY SQL Community\",\"MY SQL Community\",\"NA\",\"Postgre SQL Community\",\"NA\",\"NA\",\"Postgre SQL Community\",\"NA\",\"\",\"MY SQL Community\",\"\",\"NA\",\"MY SQL Community\",\"NA\"]},\"series\":{\"1\":[\"Flexible Compute\",\"Flexible Compute\",\"Flexible Compute\",\"Flexible Compute\",\"Flexible Compute\",\"Flexible Compute\",\"Flexible Compute\",\"Flexible Compute\",\"Flexible Compute\",\"Flexible Compute\",\"Flexible Compute\",\"Flexible Compute\",\"Flexible Compute\",\"Flexible Compute\",\"Flexible Compute\",\"Flexible Compute\",\"Flexible Compute\",\"Flexible Compute\",\"Flexible Compute\",\"Flexible Compute\",\"Flexible Compute\"],\"2\":[\"Flexible Compute\",\"Flexible Compute\",\"Flexible Compute\",\"Flexible Compute\",\"Flexible Compute\",\"Flexible Compute\",\"Flexible Compute\",\"Flexible Compute\",\"Flexible Compute\",\"Flexible Compute\",\"Flexible Compute\",\"Flexible Compute\",\"Flexible Compute\",\"Flexible Compute\",\"Flexible Compute\",\"Flexible Compute\",\"Flexible Compute\",\"Flexible Compute\",\"Flexible Compute\",\"Flexible Compute\",\"Flexible Compute\"]},\"vcpu\":{\"1\":[\"8\",\"16\",\"4\",\"16\",\"16\",\"12\",\"8\",\"16\",\"8\",\"16\",\"16\",\"8\",\"16\",\"16\",\"16\",\"4\",\"4\",\"2\",\"16\",\"16\",\"\"],\"2\":[\"8\",\"4\",\"16\",\"12\",\"16\",\"16\",\"8\",\"16\",\"8\",\"16\",\"16\",\"8\",\"16\",\"16\",\"16\",\"4\",\"4\",\"2\",\"16\",\"16\",\"\"]},\"ram\":{\"1\":[\"16\",\"64\",\"16\",\"128\",\"96\",\"128\",\"64\",\"96\",\"24\",\"32\",\"32\",\"16\",\"64\",\"64\",\"64\",\"16\",\"16\",\"8\",\"64\",\"64\",\"\"],\"2\":[\"16\",\"16\",\"128\",\"128\",\"96\",\"64\",\"64\",\"96\",\"24\",\"32\",\"32\",\"16\",\"64\",\"64\",\"64\",\"16\",\"16\",\"8\",\"64\",\"64\",\"\"]},\"inst_disk\":{\"1\":[\"205\",\"1229\",\"410\",\"1229\",\"1229\",\"1229\",\"103\",\"103\",\"308\",\"410\",\"410\",\"410\",\"308\",\"308\",\"308\",\"205\",\"103\",\"205\",\"308\",\"308\",\"\"],\"2\":[\"205\",\"410\",\"1229\",\"1229\",\"1229\",\"1229\",\"103\",\"103\",\"308\",\"410\",\"410\",\"410\",\"308\",\"308\",\"308\",\"205\",\"103\",\"205\",\"308\",\"308\",\"\"]},\"instance\":{\"1\":[\"Flexi\",\"Flexi\",\"Flexi\",\"Flexi\",\"Flexi\",\"Flexi\",\"Flexi\",\"Flexi\",\"Flexi\",\"Flexi\",\"Flexi\",\"Flexi\",\"Flexi\",\"Flexi\",\"Flexi\",\"Flexi\",\"Flexi\",\"Flexi\",\"Flexi\",\"Flexi\",\"Flexi\"],\"2\":[\"Flexi\",\"Flexi\",\"Flexi\",\"Flexi\",\"Flexi\",\"Flexi\",\"Flexi\",\"Flexi\",\"Flexi\",\"Flexi\",\"Flexi\",\"Flexi\",\"Flexi\",\"Flexi\",\"Flexi\",\"Flexi\",\"Flexi\",\"Flexi\",\"Flexi\",\"Flexi\",\"Flexi\"]},\"vmqty\":{\"1\":[\"2\",\"2\",\"02\",\"2\",\"1\",\"5\",\"3\",\"2\",\"2\",\"3\",\"02\",\"1\",\"1\",\"1\",\"1\",\"1\",\"1\",\"1\",\"04\",\"02\",\"02\"],\"2\":[\"2\",\"02\",\"2\",\"5\",\"1\",\"2\",\"3\",\"2\",\"2\",\"3\",\"02\",\"1\",\"1\",\"1\",\"1\",\"1\",\"1\",\"1\",\"04\",\"02\",\"02\"]},\"state\":{\"1\":[\"Active-Active\",\"Active-Active\",\"Active-Active\",\"Active-Active\",\"Active\",\"Active-Active\",\"Active-Passive\",\"Active-Active\",\"Active-Active\",\"Active-Active\",\"Active-Active\",\"Active\",\"Active\",\"Active\",\"Active\",\"Active\",\"Active\",\"Active\",\"Active-Active\",\"Active-Active\",\"Active-Active\"],\"2\":[\"Active-Active\",\"Active-Active\",\"Active-Active\",\"Active-Active\",\"Active\",\"Active-Active\",\"Active-Passive\",\"Active-Active\",\"Active-Active\",\"Active-Active\",\"Active-Active\",\"Active\",\"Active\",\"Active\",\"Active\",\"Active\",\"Active\",\"Active\",\"Active-Active\",\"Active-Active\",\"Active-Active\"]},\"publicipversion\":{\"1\":[\"Public IPv6\",\"Public IPv6\",\"Public IPv6\",\"Public IPv6\",\"Public IPv6\",\"Public IPv6\",\"Public IPv6\",\"Public IPv6\",\"Public IPv6\",\"Public IPv6\",\"Public IPv6\",\"Public IPv6\",\"Public IPv6\",\"Public IPv6\",\"Public IPv6\",\"Public IPv6\",\"Public IPv6\",\"Public IPv6\",\"Public IPv6\",\"Public IPv6\",\"Public IPv6\"],\"2\":[\"Public IPv6\",\"Public IPv6\",\"Public IPv6\",\"Public IPv6\",\"Public IPv6\",\"Public IPv6\",\"Public IPv6\",\"Public IPv6\",\"Public IPv6\",\"Public IPv6\",\"Public IPv6\",\"Public IPv6\",\"Public IPv6\",\"Public IPv6\",\"Public IPv6\",\"Public IPv6\",\"Public IPv6\",\"Public IPv6\",\"Public IPv6\",\"Public IPv6\",\"Public IPv6\"]},\"ip_public\":{\"1\":[\"on\"],\"2\":[\"on\"]},\"public_ipqty\":{\"1\":[\"20\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"2\":[\"20\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"]},\"virus_type\":{\"1\":[\"Anti-Virus + HIPS\",\"Anti-Virus + HIPS\",\"Anti-Virus + HIPS\",\"Anti-Virus + HIPS\",\"Anti-Virus + HIPS\",\"Anti-Virus + HIPS\",\"Anti-Virus + HIPS\",\"Anti-Virus + HIPS\",\"Anti-Virus + HIPS\",\"Anti-Virus + HIPS\",\"Anti-Virus + HIPS\",\"Anti-Virus + HIPS\",\"Anti-Virus + HIPS\",\"Anti-Virus + HIPS\",\"Anti-Virus + HIPS\",\"Anti-Virus + HIPS\",\"Anti-Virus + HIPS\",\"Anti-Virus + HIPS\",\"Anti-Virus + HIPS\",\"Anti-Virus + HIPS\",\"Anti-Virus + HIPS\"],\"2\":[\"Anti-Virus + HIPS\",\"Anti-Virus + HIPS\",\"Anti-Virus + HIPS\",\"Anti-Virus + HIPS\",\"Anti-Virus + HIPS\",\"Anti-Virus + HIPS\",\"Anti-Virus + HIPS\",\"Anti-Virus + HIPS\",\"Anti-Virus + HIPS\",\"Anti-Virus + HIPS\",\"Anti-Virus + HIPS\",\"Anti-Virus + HIPS\",\"Anti-Virus + HIPS\",\"Anti-Virus + HIPS\",\"Anti-Virus + HIPS\",\"Anti-Virus + HIPS\",\"Anti-Virus + HIPS\",\"Anti-Virus + HIPS\",\"Anti-Virus + HIPS\",\"Anti-Virus + HIPS\",\"Anti-Virus + HIPS\"]},\"03strgunit\":{\"1\":\"TB\",\"2\":\"TB\"},\"03iops\":{\"1\":\"on\",\"2\":\"on\"},\"03iopsqty\":{\"1\":\"186\",\"2\":\"186\"},\"1strgunit\":{\"1\":\"TB\",\"2\":\"TB\"},\"1iopsqty\":{\"1\":\"\",\"2\":\"\"},\"3strgunit\":{\"1\":\"TB\",\"2\":\"TB\"},\"3iopsqty\":{\"1\":\"\",\"2\":\"\"},\"5strgunit\":{\"1\":\"TB\",\"2\":\"TB\"},\"5iopsqty\":{\"1\":\"\",\"2\":\"\"},\"8strgunit\":{\"1\":\"TB\",\"2\":\"TB\"},\"8iopsqty\":{\"1\":\"\",\"2\":\"\"},\"10strgunit\":{\"1\":\"TB\",\"2\":\"TB\"},\"10iopsqty\":{\"1\":\"\",\"2\":\"\"},\"backup_strg\":{\"1\":\"5\",\"2\":\"5\"},\"backup_unit\":{\"1\":\"TB\",\"2\":\"TB\"},\"age_qty_type\":{\"1\":\"\",\"2\":\"\"},\"ageqty\":{\"1\":\"\",\"2\":\"\"},\"arc_strg\":{\"1\":\"\",\"2\":\"\"},\"archival_unit\":{\"1\":\"TB\",\"2\":\"TB\"},\"tlqty\":{\"1\":\"\",\"2\":\"\"},\"tcqty\":{\"1\":\"\",\"2\":\"\"},\"fcqty\":{\"1\":\"\",\"2\":\"\"},\"bandwidthType\":{\"1\":\"Speed Based Internet Bandwidth\",\"2\":\"Speed Based Internet Bandwidth\"},\"bandwidth\":{\"1\":\"200\",\"2\":\"200\"},\"load_balancer\":{\"1\":\"\",\"2\":\"\"},\"lbqty\":{\"1\":\"2\",\"2\":\"2\"},\"ccptqty\":{\"1\":\"2\",\"2\":\"2\"},\"sslvpnqty\":{\"1\":\"\",\"2\":\"\"},\"ipsecqty\":{\"1\":\"\",\"2\":\"\"},\"efv_throughput\":{\"1\":\"Fortinet- External vFirewall : 1GBPS\",\"2\":\"Fortinet- External vFirewall : 1GBPS\"},\"extfirewall\":{\"1\":\"on\",\"2\":\"on\"},\"extfvqty\":{\"1\":\"2\",\"2\":\"2\"},\"ifv_throughput\":{\"1\":\"Fortinet- Internal vFirewall : 1GBPS\",\"2\":\"Fortinet- Internal vFirewall : 1GBPS\"},\"intfirewall\":{\"1\":\"on\",\"2\":\"on\"},\"intfvqty\":{\"1\":\"2\",\"2\":\"2\"},\"utm\":{\"1\":\"on\",\"2\":\"on\"},\"ddos_throughput\":{\"1\":\"DDoS Mitigation - 1Gbps\",\"2\":\"DDoS Mitigation - 1Gbps\"},\"ddos\":{\"1\":\"on\",\"2\":\"on\"},\"waf_type\":{\"1\":\"eNlight : Web App Firewall\",\"2\":\"eNlight : Web App Firewall\"},\"waf\":{\"1\":\"on\",\"2\":\"on\"},\"wafqty\":{\"1\":\"2\",\"2\":\"\"},\"ssl\":{\"1\":\"Organisational Wildcard SSL Certificate\",\"2\":\"Organisational Wildcard SSL Certificate\"},\"ssl-check\":{\"1\":\"on\",\"2\":\"on\"},\"sslqty\":{\"1\":\"01\",\"2\":\"01\"},\"siem_name\":{\"1\":\"SECEON SIEM\",\"2\":\"SECEON SIEM\"},\"siem\":{\"1\":\"on\",\"2\":\"on\"},\"pimqty\":{\"1\":\"\",\"2\":\"\"},\"vtm\":{\"1\":\"on\",\"2\":\"on\"},\"vtmqty\":{\"1\":\"4 scans per month\",\"2\":\"4 scans per month\"},\"vapt_type\":{\"1\":\"CERTIN- VAPT Audit\",\"2\":\"CERTIN- VAPT Audit\"},\"vapt\":{\"1\":\"on\",\"2\":\"on\"},\"vaptqty\":{\"1\":\"02\",\"2\":\"02\"},\"vapt_frequency\":{\"1\":\"Yearly\",\"2\":\"Yearly\"},\"hsm_type\":{\"1\":\"\",\"2\":\"\"},\"hsmqty\":{\"1\":\"\",\"2\":\"\"},\"tfaqty\":{\"1\":\"\",\"2\":\"\"},\"iam\":{\"1\":\"on\",\"2\":\"on\"},\"iamqty\":{\"1\":\"30\",\"2\":\"30\"},\"dlpqty\":{\"1\":\"\",\"2\":\"\"},\"edrqty\":{\"1\":\"\",\"2\":\"\"},\"damqty\":{\"1\":\"\",\"2\":\"\"},\"sorqty\":{\"1\":\"\",\"2\":\"\"},\"osmgmt\":{\"1\":\"on\",\"2\":\"on\"},\"dbmgmt\":{\"1\":\"on\",\"2\":\"on\"},\"strgmgmt\":{\"1\":\"on\",\"2\":\"on\"},\"backmgmt\":{\"1\":\"on\",\"2\":\"on\"},\"lb_mgmt\":{\"1\":\"on\",\"2\":\"on\"},\"fv_mgmt\":{\"1\":\"on\",\"2\":\"on\"},\"wafmgmt\":{\"1\":\"on\",\"2\":\"on\"},\"emagic_type\":{\"1\":\"Basic\",\"2\":\"Basic\"},\"emagic\":{\"1\":\"on\",\"2\":\"on\"},\"drillqty\":{\"1\":\"\",\"2\":\"\"},\"rep_link_type\":{\"1\":\"\",\"2\":\"\"},\"rep_link_qty\":{\"1\":\"\",\"2\":\"\"},\"proceed\":\"\"}', ''),
(23, 3094, 8615, 'Testing Configurator', '2', 3094, 3094, '2023-08-14', '2023-08-14 09:38:51', 1, 111632, '{\"quot_type\":\"DC - DR\",\"price_list\":\"1\",\"pot_id\":\"8688\",\"project_name\":\"DMIC Noida\",\"version\":\"  \",\"count_of_est\":\"1\",\"EstType\":{\"1\":\"DC\"},\"estmtname\":{\"1\":\"DMIC Noida\"},\"period\":{\"1\":\"43\"},\"count_of_vm\":{\"1\":\"22\"},\"vmname\":{\"1\":[\"Variable Message Sign\",\"CCTV Surveillance\",\"ICCC\",\"ICCC\",\"ICCC\",\"ICCC\",\"EMS\",\"EMS\",\"AV\",\"Software Modules & ESB\",\"Software Modules & ESB\",\"Software Modules & ESB\",\"GIS\",\"GIS\",\"GIS\",\"E-LMS\",\"E-LMS\",\"E-LMS\",\"Others\",\"Others\",\"Others\"]},\"region\":{\"1\":[\"Nashik\",\"Nashik\",\"Nashik\",\"Nashik\",\"Nashik\",\"Nashik\",\"Nashik\",\"Nashik\",\"Nashik\",\"Nashik\",\"Nashik\",\"Nashik\",\"Nashik\",\"Nashik\",\"Nashik\",\"Nashik\",\"Nashik\",\"Nashik\",\"Nashik\",\"Nashik\",\"Nashik\"]},\"sector\":{\"1\":[\"Government\",\"Government\",\"Government\",\"Government\",\"Government\",\"Government\",\"Government\",\"Government\",\"Government\",\"Government\",\"Government\",\"Government\",\"Government\",\"Government\",\"Government\",\"Government\",\"Government\",\"Government\",\"Government\",\"Government\",\"Government\"]},\"os\":{\"1\":[\"Windows Standard Edition\",\"Linux : UBUNTU\",\"Windows Standard Edition\",\"Linux : UBUNTU\",\"Linux : UBUNTU\",\"Linux : UBUNTU\",\"\",\"Linux : UBUNTU\",\"Windows Standard Edition\",\"Linux : UBUNTU\",\"Linux : UBUNTU\",\"Linux : UBUNTU\",\"Windows Standard Edition\",\"Windows Standard Edition\",\"Windows Standard Edition\",\"Linux : UBUNTU\",\"Linux : UBUNTU\",\"Linux : UBUNTU\",\"Linux : UBUNTU\",\"Linux : UBUNTU\",\"Windows Standard Edition\"]},\"database\":{\"1\":[\"MY SQL Community\",\"NA\",\"\",\"NA\",\"NA\",\"NA\",\"\",\"MY SQL Community\",\"MY SQL Community\",\"NA\",\"Postgre SQL Community\",\"NA\",\"NA\",\"Postgre SQL Community\",\"NA\",\"\",\"MY SQL Community\",\"\",\"NA\",\"MY SQL Community\",\"NA\"]},\"series\":{\"1\":[\"Flexible Compute\",\"Flexible Compute\",\"Flexible Compute\",\"Flexible Compute\",\"Flexible Compute\",\"Flexible Compute\",\"Flexible Compute\",\"Flexible Compute\",\"Flexible Compute\",\"Flexible Compute\",\"Flexible Compute\",\"Flexible Compute\",\"Flexible Compute\",\"Flexible Compute\",\"Flexible Compute\",\"Flexible Compute\",\"Flexible Compute\",\"Flexible Compute\",\"Flexible Compute\",\"Flexible Compute\",\"Flexible Compute\"]},\"vcpu\":{\"1\":[\"8\",\"4\",\"16\",\"16\",\"12\",\"16\",\"8\",\"16\",\"8\",\"16\",\"16\",\"8\",\"16\",\"16\",\"16\",\"4\",\"4\",\"2\",\"16\",\"16\",\"16\"]},\"ram\":{\"1\":[\"16\",\"16\",\"64\",\"128\",\"128\",\"96\",\"64\",\"96\",\"24\",\"32\",\"32\",\"16\",\"64\",\"64\",\"64\",\"16\",\"16\",\"8\",\"64\",\"64\",\"64\"]},\"inst_disk\":{\"1\":[\"205\",\"410\",\"1229\",\"1229\",\"1229\",\"1229\",\"103\",\"103\",\"308\",\"410\",\"410\",\"410\",\"308\",\"308\",\"308\",\"205\",\"103\",\"205\",\"308\",\"308\",\"308\"]},\"instance\":{\"1\":[\"Flexi\",\"Flexi\",\"Flexi\",\"Flexi\",\"Flexi\",\"Flexi\",\"Flexi\",\"Flexi\",\"Flexi\",\"Flexi\",\"Flexi\",\"Flexi\",\"Flexi\",\"Flexi\",\"Flexi\",\"Flexi\",\"Flexi\",\"Flexi\",\"Flexi\",\"Flexi\",\"Flexi\"]},\"vmqty\":{\"1\":[\"2\",\"02\",\"2\",\"2\",\"5\",\"1\",\"3\",\"2\",\"2\",\"3\",\"02\",\"1\",\"1\",\"1\",\"1\",\"1\",\"1\",\"1\",\"04\",\"02\",\"02\"]},\"state\":{\"1\":[\"Active-Active\",\"Active-Active\",\"Active-Active\",\"Active-Active\",\"Active-Active\",\"Active\",\"Active-Passive\",\"Active-Active\",\"Active-Active\",\"Active-Active\",\"Active-Active\",\"Active\",\"Active\",\"Active\",\"Active\",\"Active\",\"Active\",\"Active\",\"Active-Active\",\"Active-Active\",\"Active-Active\"]},\"publicipversion\":{\"1\":[\"Public IPv6\",\"Public IPv6\",\"Public IPv6\",\"Public IPv6\",\"Public IPv6\",\"Public IPv6\",\"Public IPv6\",\"Public IPv6\",\"Public IPv6\",\"Public IPv6\",\"Public IPv6\",\"Public IPv6\",\"Public IPv6\",\"Public IPv6\",\"Public IPv6\",\"Public IPv6\",\"Public IPv6\",\"Public IPv6\",\"Public IPv6\",\"Public IPv6\",\"Public IPv6\"]},\"ip_public\":{\"1\":[\"on\"]},\"public_ipqty\":{\"1\":[\"20\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"]},\"virus_type\":{\"1\":[\"Anti-Virus + HIPS\",\"Anti-Virus + HIPS\",\"Anti-Virus + HIPS\",\"Anti-Virus + HIPS\",\"Anti-Virus + HIPS\",\"Anti-Virus + HIPS\",\"Anti-Virus + HIPS\",\"Anti-Virus + HIPS\",\"Anti-Virus + HIPS\",\"Anti-Virus + HIPS\",\"Anti-Virus + HIPS\",\"Anti-Virus + HIPS\",\"Anti-Virus + HIPS\",\"Anti-Virus + HIPS\",\"Anti-Virus + HIPS\",\"Anti-Virus + HIPS\",\"Anti-Virus + HIPS\",\"Anti-Virus + HIPS\",\"Anti-Virus + HIPS\",\"Anti-Virus + HIPS\",\"Anti-Virus + HIPS\"]},\"03strgunit\":{\"1\":\"TB\"},\"03iops\":{\"1\":\"on\"},\"03iopsqty\":{\"1\":\"186\"},\"1strgunit\":{\"1\":\"TB\"},\"1iopsqty\":{\"1\":\"\"},\"3strgunit\":{\"1\":\"TB\"},\"3iopsqty\":{\"1\":\"\"},\"5strgunit\":{\"1\":\"TB\"},\"5iopsqty\":{\"1\":\"\"},\"8strgunit\":{\"1\":\"TB\"},\"8iopsqty\":{\"1\":\"\"},\"10strgunit\":{\"1\":\"TB\"},\"10iopsqty\":{\"1\":\"\"},\"backup_strg\":{\"1\":\"5\"},\"backup_unit\":{\"1\":\"TB\"},\"age_qty_type\":{\"1\":\"\"},\"ageqty\":{\"1\":\"\"},\"arc_strg\":{\"1\":\"\"},\"archival_unit\":{\"1\":\"TB\"},\"tlqty\":{\"1\":\"\"},\"tcqty\":{\"1\":\"\"},\"fcqty\":{\"1\":\"\"},\"bandwidthType\":{\"1\":\"Speed Based Internet Bandwidth\"},\"bandwidth\":{\"1\":\"200\"},\"load_balancer\":{\"1\":\"\"},\"lbqty\":{\"1\":\"2\"},\"ccptqty\":{\"1\":\"2\"},\"sslvpnqty\":{\"1\":\"\"},\"ipsecqty\":{\"1\":\"\"},\"efv_throughput\":{\"1\":\"Fortinet- External vFirewall : 1GBPS\"},\"extfirewall\":{\"1\":\"on\"},\"extfvqty\":{\"1\":\"2\"},\"ifv_throughput\":{\"1\":\"Fortinet- Internal vFirewall : 1GBPS\"},\"intfirewall\":{\"1\":\"on\"},\"intfvqty\":{\"1\":\"2\"},\"utm\":{\"1\":\"on\"},\"ddos_throughput\":{\"1\":\"DDoS Mitigation - 1Gbps\"},\"ddos\":{\"1\":\"on\"},\"waf_type\":{\"1\":\"eNlight : Web App Firewall\"},\"waf\":{\"1\":\"on\"},\"wafqty\":{\"1\":\"2\"},\"ssl\":{\"1\":\"Organisational Wildcard SSL Certificate\"},\"ssl-check\":{\"1\":\"on\"},\"sslqty\":{\"1\":\"01\"},\"siem_name\":{\"1\":\"SECEON SIEM\"},\"siem\":{\"1\":\"on\"},\"pimqty\":{\"1\":\"\"},\"vtm\":{\"1\":\"on\"},\"vtmqty\":{\"1\":\"4 scans per month\"},\"vapt_type\":{\"1\":\"CERTIN- VAPT Audit\"},\"vapt\":{\"1\":\"on\"},\"vaptqty\":{\"1\":\"02\"},\"vapt_frequency\":{\"1\":\"Yearly\"},\"hsm_type\":{\"1\":\"\"},\"hsmqty\":{\"1\":\"\"},\"tfaqty\":{\"1\":\"\"},\"iam\":{\"1\":\"on\"},\"iamqty\":{\"1\":\"30\"},\"dlpqty\":{\"1\":\"\"},\"edrqty\":{\"1\":\"\"},\"damqty\":{\"1\":\"\"},\"sorqty\":{\"1\":\"\"},\"osmgmt\":{\"1\":\"on\"},\"dbmgmt\":{\"1\":\"on\"},\"strgmgmt\":{\"1\":\"on\"},\"backmgmt\":{\"1\":\"on\"},\"lb_mgmt\":{\"1\":\"on\"},\"fv_mgmt\":{\"1\":\"on\"},\"wafmgmt\":{\"1\":\"on\"},\"emagic_type\":{\"1\":\"Basic\"},\"emagic\":{\"1\":\"on\"},\"drillqty\":{\"1\":\"\"},\"rep_link_type\":{\"1\":\"\"},\"rep_link_qty\":{\"1\":\"\"},\"proceed\":\"\"}', ''),
(24, 3094, 1234, 'egrrrhthtr', '1', 3094, 3094, '2023-08-31', '2023-08-31 09:05:28', 0, 0, '{\"quot_type\":\"1\",\"price_list\":\"1\",\"pot_id\":\"1234\",\"project_name\":\"egrrrhthtr\",\"version\":\"  \",\"count_of_est\":\"1\",\"EstType\":{\"1\":\"\"},\"estmtname\":{\"1\":\"BOM DC\"},\"period\":{\"1\":\"\"},\"count_of_vm\":{\"1\":\"1\"},\"vmname\":{\"1\":[\"fefefe\"]},\"region\":{\"1\":[\"Bangalore\"]},\"sector\":{\"1\":[\"SAP\"]},\"os\":{\"1\":[\"\"]},\"database\":{\"1\":[\"\"]},\"series\":{\"1\":[\"\"]},\"instance\":{\"1\":[\"\"]},\"vmqty\":{\"1\":[\"0\"]},\"state\":{\"1\":[\"Standalone\"]},\"publicipversion\":{\"1\":[\"Public IPv6\"]},\"public_ipqty\":{\"1\":[\"\"]},\"virus_type\":{\"1\":[\"\"]},\"03strgunit\":{\"1\":\"TB\"},\"03iopsqty\":{\"1\":\"\"},\"1strgunit\":{\"1\":\"TB\"},\"1iopsqty\":{\"1\":\"\"},\"3strgunit\":{\"1\":\"TB\"},\"3iopsqty\":{\"1\":\"\"},\"5strgunit\":{\"1\":\"TB\"},\"5iopsqty\":{\"1\":\"\"},\"8strgunit\":{\"1\":\"TB\"},\"8iopsqty\":{\"1\":\"\"},\"10strgunit\":{\"1\":\"TB\"},\"10iopsqty\":{\"1\":\"\"},\"backup_strg\":{\"1\":\"\"},\"backup_unit\":{\"1\":\"TB\"},\"age_qty_type\":{\"1\":\"\"},\"ageqty\":{\"1\":\"\"},\"arc_strg\":{\"1\":\"\"},\"archival_unit\":{\"1\":\"TB\"},\"tape_lib\":{\"1\":\"on\"},\"tlqty\":{\"1\":\"\"},\"tcqty\":{\"1\":\"\"},\"fcqty\":{\"1\":\"\"},\"bandwidthType\":{\"1\":\"Speed Based Internet Bandwidth\"},\"bandwidth\":{\"1\":\"\"},\"load_balancer\":{\"1\":\"\"},\"lbqty\":{\"1\":\"\"},\"ccptqty\":{\"1\":\"\"},\"sslvpnqty\":{\"1\":\"\"},\"ipsecqty\":{\"1\":\"\"},\"rep_link_qty\":{\"1\":\"\"},\"efv_throughput\":{\"1\":\"\"},\"extfvqty\":{\"1\":\"\"},\"ifv_throughput\":{\"1\":\"\"},\"intfvqty\":{\"1\":\"\"},\"ddos_throughput\":{\"1\":\"\"},\"waf_type\":{\"1\":\"\"},\"wafqty\":{\"1\":\"\"},\"ssl\":{\"1\":\"\"},\"sslqty\":{\"1\":\"\"},\"siem_name\":{\"1\":\"\"},\"pimqty\":{\"1\":\"\"},\"vtmqty\":{\"1\":\"\"},\"vapt_type\":{\"1\":\"\"},\"vaptqty\":{\"1\":\"\"},\"vapt_frequency\":{\"1\":\"Quarterly\"},\"hsm_type\":{\"1\":\"\"},\"hsm\":{\"1\":\"on\"},\"hsmqty\":{\"1\":\"\"},\"tfaqty\":{\"1\":\"\"},\"iamqty\":{\"1\":\"\"},\"dlpqty\":{\"1\":\"\"},\"edrqty\":{\"1\":\"\"},\"damqty\":{\"1\":\"\"},\"sorqty\":{\"1\":\"\"},\"emagic_type\":{\"1\":\"Basic\"},\"emagic\":{\"1\":\"on\"},\"drillqty\":{\"1\":\"\"},\"rep_link_type\":{\"1\":\"\"}}', ''),
(25, 9999, 6669, 'PGCIL', '1', 9999, 9999, '2023-09-04', '2023-09-07 11:26:41', 2, 19311046, '{\"quot_type\":\"1\",\"price_list\":\"1\",\"pot_id\":\"6669\",\"project_name\":\"PGCIL\",\"old_pot\":\"6669\",\"version\":\" 1 \",\"count_of_est\":\"2\",\"EstType\":{\"1\":\"\",\"2\":\"\"},\"estmtname\":{\"1\":\"T1-T2 Months\",\"2\":\"T3-T6 Months\"},\"period\":{\"1\":\"2\",\"2\":\"4\"},\"count_of_vm\":{\"1\":\"5\",\"2\":\"18\"},\"vmname\":{\"1\":[\"App Server\",\"Main Database\",\"Master and Meter data DB (live data for 3 years)\",\"Kafka\",\"Application, Web, Integration services\"],\"2\":[\"Integration services\",\"Scheduler\",\"App Server (VEE, web, exeption)\",\"Master and Meter data DB (live data for 3 years)\",\"App Server\",\"Master and Meter data DB (live data for 3 years)\",\"Communication Servers P2P (PushPull)\",\"Communication Servers RF (PushPull)\",\"SLA Monitoring\",\"InfluxDB\",\"RabbitMQ\",\"Web and Integration Services\",\"App Services\",\"Main Database\",\"Kafka cluster (distributed among DC & DR Location)\",\"Application, Web, Integration services\",\"Main Database\",\"Kafka\"]},\"region\":{\"1\":[\"Nashik\",\"Nashik\",\"Nashik\",\"Nashik\",\"Nashik\"],\"2\":[\"Nashik\",\"Nashik\",\"Nashik\",\"Nashik\",\"Nashik\",\"Nashik\",\"Nashik\",\"Nashik\",\"Nashik\",\"Nashik\",\"Nashik\",\"Nashik\",\"Nashik\",\"Nashik\",\"Nashik\",\"Nashik\",\"Nashik\",\"Nashik\"]},\"sector\":{\"1\":[\"Government\",\"Government\",\"Government\",\"Government\",\"Government\"],\"2\":[\"Government\",\"Government\",\"Government\",\"Government\",\"Government\",\"Government\",\"Government\",\"Government\",\"Government\",\"Government\",\"Government\",\"Government\",\"Government\",\"Government\",\"Government\",\"Government\",\"Government\",\"Government\"]},\"os\":{\"1\":[\"Windows Standard Edition\",\"Windows Standard Edition\",\"Windows Standard Edition\",\"Linux : UBUNTU\",\"Windows Standard Edition\"],\"2\":[\"Windows Standard Edition\",\"Windows Standard Edition\",\"Windows Standard Edition\",\"Windows Standard Edition\",\"Windows Standard Edition\",\"Windows Standard Edition\",\"Windows Standard Edition\",\"Windows Standard Edition\",\"Windows Standard Edition\",\"Linux : UBUNTU\",\"Linux : UBUNTU\",\"Windows Standard Edition\",\"Windows Standard Edition\",\"Windows Standard Edition\",\"Linux : UBUNTU\",\"Windows Standard Edition\",\"Windows Standard Edition\",\"Linux : UBUNTU\"]},\"database\":{\"1\":[\"NA\",\"MS SQL Standard\",\"MS SQL Standard\",\"NA\",\"NA\"],\"2\":[\"NA\",\"NA\",\"NA\",\"MS SQL Standard\",\"NA\",\"MS SQL Standard\",\"NA\",\"NA\",\"NA\",\"NA\",\"NA\",\"NA\",\"NA\",\"MS SQL Standard\",\"NA\",\"NA\",\"MS SQL Standard\",\"NA\"]},\"series\":{\"1\":[\"All\",\"All\",\"All\",\"All\",\"All\"],\"2\":[\"All\",\"All\",\"All\",\"All\",\"All\",\"All\",\"All\",\"All\",\"All\",\"All\",\"All\",\"All\",\"All\",\"All\",\"All\",\"All\",\"All\",\"All\"]},\"instance\":{\"1\":[\"M7\",\"S11\",\"S11\",\"S3\",\"M7\"],\"2\":[\"M6\",\"M6\",\"M8\",\"L8\",\"M7\",\"S11\",\"S4\",\"S4\",\"M7\",\"S3\",\"S3\",\"S10\",\"S4\",\"L4\",\"S3\",\"M7\",\"S11\",\"S3\"]},\"vcpu\":{\"1\":[\"12\",\"8\",\"8\",\"4\",\"12\"],\"2\":[\"12\",\"12\",\"12\",\"32\",\"12\",\"8\",\"4\",\"4\",\"12\",\"4\",\"4\",\"8\",\"4\",\"16\",\"4\",\"12\",\"8\",\"\"]},\"ram\":{\"1\":[\"32\",\"32\",\"32\",\"8\",\"32\"],\"2\":[\"16\",\"16\",\"48\",\"128\",\"32\",\"32\",\"16\",\"16\",\"32\",\"8\",\"8\",\"16\",\"16\",\"128\",\"8\",\"32\",\"32\",\"\"]},\"inst_disk\":{\"1\":[\"100\",\"100\",\"100\",\"100\",\"100\"],\"2\":[\"100\",\"100\",\"100\",\"100\",\"100\",\"100\",\"100\",\"100\",\"100\",\"100\",\"100\",\"100\",\"100\",\"100\",\"100\",\"100\",\"100\",\"\"]},\"vmqty\":{\"1\":[\"01\",\"02\",\"02\",\"01\",\"01\"],\"2\":[\"02\",\"02\",\"04\",\"02\",\"01\",\"02\",\"05\",\"03\",\"02\",\"02\",\"02\",\"04\",\"04\",\"2\",\"04\",\"01\",\"2\",\"1\"]},\"state\":{\"1\":[\"Active\",\"Active\",\"Active\",\"Active\",\"Active\"],\"2\":[\"Active\",\"Active\",\"Active\",\"Active\",\"Active\",\"Active\",\"Active\",\"Active\",\"Active\",\"Active\",\"Active\",\"Active\",\"Active\",\"Active\",\"Active\",\"Active\",\"Active\",\"Active\"]},\"publicipversion\":{\"1\":[\"Public IPv6\",\"Public IPv6\",\"Public IPv6\",\"Public IPv6\",\"Public IPv6\"],\"2\":[\"Public IPv6\",\"Public IPv6\",\"Public IPv6\",\"Public IPv6\",\"Public IPv6\",\"Public IPv6\",\"Public IPv6\",\"Public IPv6\",\"Public IPv6\",\"Public IPv6\",\"Public IPv6\",\"Public IPv6\",\"Public IPv6\",\"Public IPv6\",\"Public IPv6\",\"Public IPv6\",\"Public IPv6\",\"Public IPv6\"]},\"ip_public\":{\"1\":[\"on\"],\"2\":[\"on\"]},\"public_ipqty\":{\"1\":[\"9\",\"\",\"\",\"\",\"\"],\"2\":[\"9\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"]},\"virus_type\":{\"1\":[\"Anti-Virus + HIPS\",\"Anti-Virus + HIPS\",\"Anti-Virus + HIPS\",\"Anti-Virus + HIPS\",\"Anti-Virus + HIPS\"],\"2\":[\"Anti-Virus + HIPS\",\"Anti-Virus + HIPS\",\"Anti-Virus + HIPS\",\"Anti-Virus + HIPS\",\"Anti-Virus + HIPS\",\"Anti-Virus + HIPS\",\"Anti-Virus + HIPS\",\"Anti-Virus + HIPS\",\"Anti-Virus + HIPS\",\"Anti-Virus + HIPS\",\"Anti-Virus + HIPS\",\"Anti-Virus + HIPS\",\"Anti-Virus + HIPS\",\"Anti-Virus + HIPS\",\"Anti-Virus + HIPS\",\"Anti-Virus + HIPS\",\"Anti-Virus + HIPS\",\"Anti-Virus + HIPS\"]},\"03strgunit\":{\"1\":\"TB\",\"2\":\"TB\"},\"03iopsqty\":{\"1\":\"2.7\",\"2\":\"27.4\"},\"1strgunit\":{\"1\":\"TB\",\"2\":\"TB\"},\"1iopsqty\":{\"1\":\"\",\"2\":\"\"},\"3strgunit\":{\"1\":\"TB\",\"2\":\"TB\"},\"3iopsqty\":{\"1\":\"\",\"2\":\"\"},\"5strgunit\":{\"1\":\"TB\",\"2\":\"TB\"},\"5iopsqty\":{\"1\":\"\",\"2\":\"\"},\"8strgunit\":{\"1\":\"TB\",\"2\":\"TB\"},\"8iopsqty\":{\"1\":\"\",\"2\":\"\"},\"10strgunit\":{\"1\":\"TB\",\"2\":\"TB\"},\"10iopsqty\":{\"1\":\"\",\"2\":\"\"},\"backup_strg\":{\"1\":\"0.8\",\"2\":\"3\"},\"backup_unit\":{\"1\":\"TB\",\"2\":\"TB\"},\"age_qty_type\":{\"1\":\"\",\"2\":\"\"},\"ageqty\":{\"1\":\"\",\"2\":\"\"},\"arc_strg\":{\"1\":\"\",\"2\":\"\"},\"archival_unit\":{\"1\":\"TB\",\"2\":\"TB\"},\"tlqty\":{\"1\":\"\",\"2\":\"\"},\"tcqty\":{\"1\":\"\",\"2\":\"\"},\"fcqty\":{\"1\":\"\",\"2\":\"\"},\"bandwidthType\":{\"1\":\"Speed Based Internet Bandwidth\",\"2\":\"Speed Based Internet Bandwidth\"},\"bandwidth\":{\"1\":\"50\",\"2\":\"50\"},\"load_balancer\":{\"1\":\"Load Balancer : HA Proxy\",\"2\":\"Load Balancer : HA Proxy\"},\"lbqty\":{\"1\":\"2\",\"2\":\"2\"},\"ccptqty\":{\"1\":\"2\",\"2\":\"2\"},\"sslvpnqty\":{\"1\":\"\",\"2\":\"\"},\"ipsecqty\":{\"1\":\"\",\"2\":\"\"},\"rep_link_qty\":{\"1\":\"\",\"2\":\"\"},\"efv_throughput\":{\"1\":\"Fortinet- External vFirewall : 1GBPS\",\"2\":\"Fortinet- External vFirewall : 1GBPS\"},\"extfvqty\":{\"1\":\"0\",\"2\":\"2\"},\"ifv_throughput\":{\"1\":\"Fortinet- Internal vFirewall : 1GBPS\",\"2\":\"Fortinet- Internal vFirewall : 1GBPS\"},\"intfvqty\":{\"1\":\"0\",\"2\":\"2\"},\"utm\":{\"1\":\"on\",\"2\":\"on\"},\"ddos_throughput\":{\"1\":\"DDoS Mitigation - 1Gbps\",\"2\":\"DDoS Mitigation - 1Gbps\"},\"waf_type\":{\"1\":\"eNlight : Web App Firewall\",\"2\":\"eNlight : Web App Firewall\"},\"wafqty\":{\"1\":\"0\",\"2\":\"2\"},\"ssl\":{\"1\":\"Domain WildCard SSL Certificate\",\"2\":\"Domain WildCard SSL Certificate\"},\"sslqty\":{\"1\":\"0\",\"2\":\"1\"},\"siem_name\":{\"1\":\"SECEON SIEM\",\"2\":\"SECEON SIEM\"},\"pimqty\":{\"1\":\"\",\"2\":\"\"},\"vtmqty\":{\"1\":\"4 scans per month\",\"2\":\"4 scans per month\"},\"vapt_type\":{\"1\":\"CERTIN- VAPT Audit\",\"2\":\"CERTIN- VAPT Audit\"},\"vaptqty\":{\"1\":\"0\",\"2\":\"2\"},\"vapt_frequency\":{\"1\":\"Year\",\"2\":\"Year\"},\"hsm_type\":{\"1\":\"\",\"2\":\"\"},\"hsmqty\":{\"1\":\"\",\"2\":\"\"},\"tfaqty\":{\"1\":\"\",\"2\":\"\"},\"iamqty\":{\"1\":\"0\",\"2\":\"50\"},\"dlpqty\":{\"1\":\"\",\"2\":\"\"},\"edrqty\":{\"1\":\"\",\"2\":\"\"},\"damqty\":{\"1\":\"\",\"2\":\"\"},\"sorqty\":{\"1\":\"\",\"2\":\"\"},\"osmgmt\":{\"1\":\"on\",\"2\":\"on\"},\"dbmgmt\":{\"1\":\"on\",\"2\":\"on\"},\"strgmgmt\":{\"1\":\"on\",\"2\":\"on\"},\"backmgmt\":{\"1\":\"on\",\"2\":\"on\"},\"lb_mgmt\":{\"1\":\"on\",\"2\":\"on\"},\"fv_mgmt\":{\"1\":\"on\",\"2\":\"on\"},\"wafmgmt\":{\"1\":\"on\",\"2\":\"on\"},\"emagic_type\":{\"1\":\"Basic\",\"2\":\"Basic\"},\"emagic\":{\"1\":\"on\",\"2\":\"on\"},\"drillqty\":{\"1\":\"\",\"2\":\"\"},\"rep_link_type\":{\"1\":\"\",\"2\":\"\"},\"03iops\":{\"2\":\"on\"},\"extfirewall\":{\"2\":\"on\"},\"intfirewall\":{\"2\":\"on\"},\"ddos\":{\"2\":\"on\"},\"waf\":{\"2\":\"on\"},\"ssl-check\":{\"2\":\"on\"},\"siem\":{\"2\":\"on\"},\"vtm\":{\"2\":\"on\"},\"vapt\":{\"2\":\"on\"},\"iam\":{\"2\":\"on\"},\"proceed\":\"\"}', '{\"1\":{\"VM0\":{\"Windows Standard Edition\":3120,\"App Server\":8408},\"VM1\":{\"MS SQL Standard\":135200,\"Windows Standard Edition\":4160,\"Main Database\":15816},\"VM2\":{\"MS SQL Standard\":135200,\"Windows Standard Edition\":4160,\"Master and Meter data DB (live data for 3 years)\":15816},\"VM3\":{\"Linux : UBUNTU\":0,\"Kafka\":5908},\"VM4\":{\"Windows Standard Edition\":3120,\"Application, Web, Integration services\":8408},\"Storage Solution\":{\"Backup Space\":3276.8},\"Network Solution\":{\"ip\":9000,\"bandwidth\":25000,\"ccpt\":4200,\"lb\":9600},\"Security Solution\":{\"av\":8400},\"Managed Services\":{\"st_mg\":3000,\"back_mg\":2100,\"rep_mgmt\":0,\"dr_drill\":0,\"lb_mgmt\":3000,\"fw_mgmt\":0,\"waf_mgmt\":0,\"emagic\":3600,\"win_os_mg\":6000,\"ms_db_mg\":22000},\"MonthlyTotal\":438492.8},\"2\":{\"VM0\":{\"Windows Standard Edition\":6240,\"Integration services\":14416},\"VM1\":{\"Windows Standard Edition\":6240,\"Scheduler\":14416},\"VM2\":{\"Windows Standard Edition\":12480,\"App Server (VEE, web, exeption)\":38432},\"VM3\":{\"MS SQL Standard\":540800,\"Windows Standard Edition\":16640,\"Master and Meter data DB (live data for 3 years)\":25216},\"VM4\":{\"Windows Standard Edition\":3120,\"App Server\":8408},\"VM5\":{\"MS SQL Standard\":135200,\"Windows Standard Edition\":4160,\"Master and Meter data DB (live data for 3 years)\":15816},\"VM6\":{\"Windows Standard Edition\":5200,\"Communication Servers P2P (PushPull)\":32540},\"VM7\":{\"Windows Standard Edition\":3120,\"Communication Servers RF (PushPull)\":19524},\"VM8\":{\"Windows Standard Edition\":6240,\"SLA Monitoring\":16816},\"VM9\":{\"Linux : UBUNTU\":0,\"InfluxDB\":11816},\"VM10\":{\"Linux : UBUNTU\":0,\"RabbitMQ\":11816},\"VM11\":{\"Windows Standard Edition\":8320,\"Web and Integration Services\":26832},\"VM12\":{\"Windows Standard Edition\":4160,\"App Services\":26032},\"VM13\":{\"MS SQL Standard\":270400,\"Windows Standard Edition\":8320,\"Main Database\":51016},\"VM14\":{\"Linux : UBUNTU\":0,\"Kafka cluster (distributed among DC & DR Location)\":23632},\"VM15\":{\"Windows Standard Edition\":3120,\"Application, Web, Integration services\":8408},\"VM16\":{\"MS SQL Standard\":135200,\"Windows Standard Edition\":4160,\"Main Database\":15816},\"VM17\":{\"Linux : UBUNTU\":0,\"Kafka\":5908},\"Storage Solution\":{\"Storage Space with 300 IOPS\":56115.2,\"Backup Space\":12288},\"Network Solution\":{\"ip\":9000,\"bandwidth\":25000,\"ccpt\":4200,\"lb\":9600},\"Security Solution\":{\"av\":54000,\"efw\":33350,\"ifw\":33350,\"ddos\":14583,\"waf\":21000,\"ssl\":2249,\"siem\":63600,\"vtm\":\"800\",\"vapt\":63600,\"iam\":2500000},\"Managed Services\":{\"st_mg\":40500,\"back_mg\":13500,\"rep_mgmt\":0,\"dr_drill\":0,\"lb_mgmt\":3000,\"fw_mgmt\":8000,\"waf_mgmt\":3000,\"emagic\":16800,\"win_os_mg\":15000,\"ms_db_mg\":66000},\"MonthlyTotal\":4608515.2}}');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_sector`
--

CREATE TABLE `tbl_sector` (
  `id` int(11) NOT NULL,
  `sector` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_sector`
--

INSERT INTO `tbl_sector` (`id`, `sector`) VALUES
(1, 'Enterprise'),
(2, 'BFSI'),
(3, 'SAP'),
(4, 'Government'),
(5, 'Public');

-- --------------------------------------------------------

--
-- Table structure for table `visitor_activity_logs`
--

CREATE TABLE `visitor_activity_logs` (
  `id` int(11) NOT NULL,
  `user_ip_address` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `emp_code` int(11) NOT NULL,
  `uname` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `page_url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_on` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `visitor_activity_logs`
--

INSERT INTO `visitor_activity_logs` (`id`, `user_ip_address`, `emp_code`, `uname`, `page_url`, `created_on`) VALUES
(1, '::1', 9999, 'admin', 'http://localhost/configurator/v2/estimate/index.php?allall', '2023-09-04 15:02:02'),
(2, '::1', 9999, 'admin', 'http://localhost/configurator/v2/estimate/index.php?edit_id=25edit_id=25', '2023-09-04 15:02:08'),
(3, '::1', 9999, 'admin', 'http://localhost/configurator/v2/estimate/index.php?edit_id=25&next&pot_id=6669&project_name=PGCIL&list=1&type=1edit_id=25&next&pot_id=6669&project_name=PGCIL&list=1&type=1', '2023-09-04 15:02:11'),
(4, '::1', 9999, 'admin', 'http://localhost/configurator/v2/estimate/index.php?allall', '2023-09-04 16:25:08'),
(5, '::1', 9999, 'admin', 'http://localhost/configurator/v2/estimate/index.php?edit_id=25edit_id=25', '2023-09-04 16:25:12'),
(6, '::1', 9999, 'admin', 'http://localhost/configurator/v2/estimate/index.php?edit_id=25&next&pot_id=6669&project_name=PGCIL&list=1&type=1edit_id=25&next&pot_id=6669&project_name=PGCIL&list=1&type=1', '2023-09-04 16:25:15'),
(7, '::1', 9999, 'admin', 'http://localhost/configurator/v2/estimate/index.php?edit_id=25&next&pot_id=6669&project_name=PGCIL&list=1&type=1edit_id=25&next&pot_id=6669&project_name=PGCIL&list=1&type=1', '2023-09-04 16:27:42'),
(8, '::1', 9999, 'admin', 'http://localhost/configurator/v2/estimate/index.php?edit_id=25&next&pot_id=6669&project_name=PGCIL&list=1&type=1edit_id=25&next&pot_id=6669&project_name=PGCIL&list=1&type=1', '2023-09-04 16:28:42'),
(9, '::1', 9999, 'admin', 'http://localhost/configurator/v2/estimate/index.php?edit_id=25&next&pot_id=6669&project_name=PGCIL&list=1&type=1edit_id=25&next&pot_id=6669&project_name=PGCIL&list=1&type=1', '2023-09-04 16:30:29'),
(10, '::1', 9999, 'admin', 'http://localhost/configurator/v2/estimate/index.php?edit_id=25&next&pot_id=6669&project_name=PGCIL&list=1&type=1edit_id=25&next&pot_id=6669&project_name=PGCIL&list=1&type=1', '2023-09-04 16:42:05'),
(11, '::1', 9999, 'admin', 'http://localhost/configurator/v2/estimate/index.php?edit_id=25&next&pot_id=6669&project_name=PGCIL&list=1&type=1edit_id=25&next&pot_id=6669&project_name=PGCIL&list=1&type=1', '2023-09-04 16:42:41'),
(12, '::1', 9999, 'admin', 'http://localhost/configurator/v2/estimate/index.php?edit_id=25&next&pot_id=6669&project_name=PGCIL&list=1&type=1edit_id=25&next&pot_id=6669&project_name=PGCIL&list=1&type=1', '2023-09-04 16:46:20'),
(13, '::1', 9999, 'admin', 'http://localhost/configurator/v2/estimate/index.php?edit_id=25&next&pot_id=6669&project_name=PGCIL&list=1&type=1edit_id=25&next&pot_id=6669&project_name=PGCIL&list=1&type=1', '2023-09-04 16:46:57'),
(14, '::1', 9999, 'admin', 'http://localhost/configurator/v2/estimate/index.php?edit_id=25&next&pot_id=6669&project_name=PGCIL&list=1&type=1edit_id=25&next&pot_id=6669&project_name=PGCIL&list=1&type=1', '2023-09-04 16:47:16'),
(15, '::1', 9999, 'admin', 'http://localhost/configurator/v2/estimate/index.php?edit_id=25&next&pot_id=6669&project_name=PGCIL&list=1&type=1edit_id=25&next&pot_id=6669&project_name=PGCIL&list=1&type=1', '2023-09-04 16:47:47'),
(16, '::1', 9999, 'admin', 'http://localhost/configurator/v2/estimate/index.php?edit_id=25&next&pot_id=6669&project_name=PGCIL&list=1&type=1edit_id=25&next&pot_id=6669&project_name=PGCIL&list=1&type=1', '2023-09-04 16:48:23'),
(17, '::1', 9999, 'admin', 'http://localhost/configurator/v2/estimate/index.php?edit_id=25&next&pot_id=6669&project_name=PGCIL&list=1&type=1edit_id=25&next&pot_id=6669&project_name=PGCIL&list=1&type=1', '2023-09-04 16:49:43'),
(18, '::1', 9999, 'admin', 'http://localhost/configurator/v2/estimate/index.php?edit_id=25&next&pot_id=6669&project_name=PGCIL&list=1&type=1edit_id=25&next&pot_id=6669&project_name=PGCIL&list=1&type=1', '2023-09-04 16:53:44'),
(19, '::1', 9999, 'admin', 'http://localhost/configurator/v2/estimate/index.php?edit_id=25&next&pot_id=6669&project_name=PGCIL&list=1&type=1edit_id=25&next&pot_id=6669&project_name=PGCIL&list=1&type=1', '2023-09-04 16:54:03'),
(20, '::1', 9999, 'admin', 'http://localhost/configurator/v2/estimate/index.php?edit_id=25&next&pot_id=6669&project_name=PGCIL&list=1&type=1edit_id=25&next&pot_id=6669&project_name=PGCIL&list=1&type=1', '2023-09-04 17:07:49'),
(21, '::1', 9999, 'admin', 'http://localhost/configurator/v2/estimate/index.php', '2023-09-06 10:14:44'),
(22, '::1', 9999, 'admin', 'http://localhost/configurator/v2/estimate/index.php?allall', '2023-09-06 10:14:48'),
(23, '::1', 9999, 'admin', 'http://localhost/configurator/v2/estimate/index.php?edit_id=25edit_id=25', '2023-09-06 10:14:51'),
(24, '::1', 9999, 'admin', 'http://localhost/configurator/v2/estimate/index.php?edit_id=25&next&pot_id=6669&project_name=PGCIL&list=1&type=1edit_id=25&next&pot_id=6669&project_name=PGCIL&list=1&type=1', '2023-09-06 10:14:57'),
(25, '::1', 9999, 'admin', 'http://localhost/configurator/v2/estimate/index.php?edit_id=25&next&pot_id=6669&project_name=PGCIL&list=1&type=1edit_id=25&next&pot_id=6669&project_name=PGCIL&list=1&type=1', '2023-09-06 12:24:47'),
(26, '::1', 9999, 'admin', 'http://localhost/configurator/v2/estimate/index.php?edit_id=25&next&pot_id=6669&project_name=PGCIL&list=1&type=1edit_id=25&next&pot_id=6669&project_name=PGCIL&list=1&type=1', '2023-09-06 12:25:11'),
(27, '::1', 9999, 'admin', 'http://localhost/configurator/v2/estimate/index.php?allall', '2023-09-06 12:25:29'),
(28, '::1', 9999, 'admin', 'http://localhost/configurator/v2/estimate/index.php?edit_id=25edit_id=25', '2023-09-06 12:25:33'),
(29, '::1', 9999, 'admin', 'http://localhost/configurator/v2/estimate/index.php?edit_id=25&next&pot_id=6669&project_name=PGCIL&list=1&type=1edit_id=25&next&pot_id=6669&project_name=PGCIL&list=1&type=1', '2023-09-06 12:25:37'),
(30, '::1', 3094, 'prathamesh.chavan', 'http://localhost/configurator/v2/estimate/index.php', '2023-09-06 16:24:50'),
(31, '::1', 3094, 'prathamesh.chavan', 'http://localhost/configurator/v2/estimate/index.php?allall', '2023-09-06 16:24:53'),
(32, '::1', 3094, 'prathamesh.chavan', 'http://localhost/configurator/v2/estimate/index.php?edit_id=21edit_id=21', '2023-09-06 16:24:56'),
(33, '::1', 3094, 'prathamesh.chavan', 'http://localhost/configurator/v2/estimate/index.php?edit_id=21&next&pot_id=8688&project_name=DMIC%20Noida&list=1&type=1edit_id=21&next&pot_id=8688&project_name=DMIC%20Noida&list=1&type=1', '2023-09-06 16:25:00'),
(34, '::1', 3094, 'prathamesh.chavan', 'http://localhost/configurator/v2/estimate/index.php', '2023-09-06 17:08:35'),
(35, '::1', 3094, 'prathamesh.chavan', 'http://localhost/configurator/v2/estimate/index.php', '2023-09-06 17:11:01'),
(36, '::1', 3094, 'prathamesh.chavan', 'http://localhost/configurator/v2/estimate/index.php?allall', '2023-09-06 17:11:36'),
(37, '::1', 3094, 'prathamesh.chavan', 'http://localhost/configurator/v2/estimate/index.php?edit_id=21edit_id=21', '2023-09-06 17:11:41'),
(38, '::1', 3094, 'prathamesh.chavan', 'http://localhost/configurator/v2/estimate/index.php?edit_id=21&next&pot_id=8688&project_name=DMIC%20Noida&list=1&type=1edit_id=21&next&pot_id=8688&project_name=DMIC%20Noida&list=1&type=1', '2023-09-06 17:11:48'),
(39, '::1', 3094, 'prathamesh.chavan', 'http://localhost/configurator/v2/estimate/index.php', '2023-09-06 17:21:59'),
(40, '::1', 9999, 'admin', 'http://localhost/configurator/v2/estimate/index.php', '2023-09-06 17:22:07'),
(41, '::1', 9999, 'admin', 'http://localhost/configurator/v2/estimate/index.php?allall', '2023-09-06 17:22:09'),
(42, '::1', 9999, 'admin', 'http://localhost/configurator/v2/estimate/index.php?edit_id=25edit_id=25', '2023-09-06 17:22:12'),
(43, '::1', 9999, 'admin', 'http://localhost/configurator/v2/estimate/index.php?edit_id=25&next&pot_id=6669&project_name=PGCIL&list=1&type=1edit_id=25&next&pot_id=6669&project_name=PGCIL&list=1&type=1', '2023-09-06 17:22:16'),
(44, '::1', 9999, 'admin', 'http://localhost/configurator/v2/estimate/index.php?edit_id=25&next&pot_id=6669&project_name=PGCIL&list=1&type=1edit_id=25&next&pot_id=6669&project_name=PGCIL&list=1&type=1', '2023-09-07 16:42:01'),
(45, '::1', 9999, 'admin', 'http://localhost/configurator/v2/estimate/index.php?allall', '2023-09-07 16:42:29'),
(46, '::1', 9999, 'admin', 'http://localhost/configurator/v2/estimate/index.php?edit_id=25edit_id=25', '2023-09-07 16:42:32'),
(47, '::1', 9999, 'admin', 'http://localhost/configurator/v2/estimate/index.php?edit_id=25&next&pot_id=6669&project_name=PGCIL&list=1&type=1edit_id=25&next&pot_id=6669&project_name=PGCIL&list=1&type=1', '2023-09-07 16:42:36');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `login_master`
--
ALTER TABLE `login_master`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `employee_code` (`employee_code`),
  ADD KEY `user_role` (`user_role`);

--
-- Indexes for table `permission_master`
--
ALTER TABLE `permission_master`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `price_list`
--
ALTER TABLE `price_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rate_card_prices`
--
ALTER TABLE `rate_card_prices`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`),
  ADD KEY `rate_card_fkc` (`rate_card_id`),
  ADD KEY `product_fkc` (`prod_id`);

--
-- Indexes for table `role_master`
--
ALTER TABLE `role_master`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `role_permissions`
--
ALTER TABLE `role_permissions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `role_id` (`role_id`),
  ADD KEY `permission_id` (`permission_id`);

--
-- Indexes for table `tbl_pack`
--
ALTER TABLE `tbl_pack`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `tbl_quot_type`
--
ALTER TABLE `tbl_quot_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_rate_cards`
--
ALTER TABLE `tbl_rate_cards`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_saved_estimates`
--
ALTER TABLE `tbl_saved_estimates`
  ADD PRIMARY KEY (`id`),
  ADD KEY `employee_code` (`emp_code`);

--
-- Indexes for table `tbl_sector`
--
ALTER TABLE `tbl_sector`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `visitor_activity_logs`
--
ALTER TABLE `visitor_activity_logs`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `login_master`
--
ALTER TABLE `login_master`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=120;

--
-- AUTO_INCREMENT for table `permission_master`
--
ALTER TABLE `permission_master`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `price_list`
--
ALTER TABLE `price_list`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=122;

--
-- AUTO_INCREMENT for table `rate_card_prices`
--
ALTER TABLE `rate_card_prices`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=103;

--
-- AUTO_INCREMENT for table `role_master`
--
ALTER TABLE `role_master`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `role_permissions`
--
ALTER TABLE `role_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_pack`
--
ALTER TABLE `tbl_pack`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=230;

--
-- AUTO_INCREMENT for table `tbl_quot_type`
--
ALTER TABLE `tbl_quot_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_rate_cards`
--
ALTER TABLE `tbl_rate_cards`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbl_saved_estimates`
--
ALTER TABLE `tbl_saved_estimates`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `tbl_sector`
--
ALTER TABLE `tbl_sector`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `visitor_activity_logs`
--
ALTER TABLE `visitor_activity_logs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `login_master`
--
ALTER TABLE `login_master`
  ADD CONSTRAINT `login_master_ibfk_1` FOREIGN KEY (`user_role`) REFERENCES `role_master` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `rate_card_prices`
--
ALTER TABLE `rate_card_prices`
  ADD CONSTRAINT `product_fkc` FOREIGN KEY (`prod_id`) REFERENCES `price_list` (`id`),
  ADD CONSTRAINT `rate_card_fkc` FOREIGN KEY (`rate_card_id`) REFERENCES `tbl_rate_cards` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `role_permissions`
--
ALTER TABLE `role_permissions`
  ADD CONSTRAINT `role_permissions_ibfk_1` FOREIGN KEY (`role_id`) REFERENCES `role_master` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
