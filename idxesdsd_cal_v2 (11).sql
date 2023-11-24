-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 24, 2023 at 10:43 AM
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
-- Table structure for table `product_list`
--

CREATE TABLE `product_list` (
  `id` int(11) NOT NULL,
  `sku_code` varchar(18) DEFAULT NULL,
  `region` int(11) NOT NULL,
  `primary_category` varchar(25) NOT NULL,
  `sec_category` varchar(25) NOT NULL,
  `default_name` text NOT NULL,
  `prod_int` varchar(30) NOT NULL,
  `product` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `product_list`
--

INSERT INTO `product_list` (`id`, `sku_code`, `region`, `primary_category`, `sec_category`, `default_name`, `prod_int`, `product`) VALUES
(0, 'OT00000000000000', 0, 'otc', 'otc', 'One Time Cost', 'otc', 'otc-5'),
(1, 'CCSTNKASP3000000', 1, 'storage', 'archival_storage', 'Archive Storage  ', 'arc_strg', 'Archive Storage  '),
(2, 'CCSTMUASP3000000', 2, 'storage', 'archival_storage', 'Archive Storage   ', 'arc_strg', 'Archive Storage   '),
(3, 'CCSTBNASP3000000', 3, 'storage', 'archival_storage', 'Archive Storage  ', 'arc_strg', 'Archive Storage  '),
(4, 'CCSTNKORP3000000', 1, 'storage', 'object_storage', 'Object Storage 0.3 IOPS per GB  ', 'obj_03', 'Object Storage 0.3 IOPS per GB  '),
(5, 'CCSTMUORP3000000', 2, 'storage', 'object_storage', 'Object Storage 0.3 IOPS per GB  ', 'obj_03', 'Object Storage 0.3 IOPS per GB  '),
(6, 'CCSTBNORP3000000', 3, 'storage', 'object_storage', 'Object Storage 0.3 IOPS per GB  ', 'obj_03', 'Object Storage 0.3 IOPS per GB  '),
(7, 'CCSTNKORP0000000', 1, 'storage', 'object_storage', 'Object Storage 10 IOPS per GB  ', 'obj_10', 'Object Storage 10 IOPS per GB  '),
(8, 'CCSTMUORP0000000', 2, 'storage', 'object_storage', 'Object Storage 10 IOPS per GB  ', 'obj_10', 'Object Storage 10 IOPS per GB  '),
(9, 'CCSTBNORP0000000', 3, 'storage', 'object_storage', 'Object Storage 10 IOPS per GB  ', 'obj_10', 'Object Storage 10 IOPS per GB  '),
(10, 'CCSTNKORP1000000', 1, 'storage', 'object_storage', 'Object Storage 1 IOPS per GB  ', 'obj_1', 'Object Storage 1 IOPS per GB  '),
(11, 'CCSTMUORP1000000', 2, 'storage', 'object_storage', 'Object Storage 1 IOPS per GB  ', 'obj_1', 'Object Storage 1 IOPS per GB  '),
(12, 'CCSTBNORP1000000', 3, 'storage', 'object_storage', 'Object Storage 1 IOPS per GB  ', 'obj_1', 'Object Storage 1 IOPS per GB  '),
(13, 'CCSTNKORI3000000', 1, 'storage', 'object_storage', 'Object Storage 3 IOPS per GB  ', 'obj_3', 'Object Storage 3 IOPS per GB  '),
(14, 'CCSTMUORI3000000', 2, 'storage', 'object_storage', 'Object Storage 3 IOPS per GB  ', 'obj_3', 'Object Storage 3 IOPS per GB  '),
(15, 'CCSTBNORI3000000', 3, 'storage', 'object_storage', 'Object Storage 3 IOPS per GB  ', 'obj_3', 'Object Storage 3 IOPS per GB  '),
(16, 'CCSTNKORI5000000', 1, 'storage', 'object_storage', 'Object Storage 5 IOPS per GB  ', 'obj_5', 'Object Storage 5 IOPS per GB  '),
(17, 'CCSTMUORI5000000', 2, 'storage', 'object_storage', 'Object Storage 5 IOPS per GB  ', 'obj_5', 'Object Storage 5 IOPS per GB  '),
(18, 'CCSTBNORI5000000', 3, 'storage', 'object_storage', 'Object Storage 5 IOPS per GB  ', 'obj_5', 'Object Storage 5 IOPS per GB  '),
(19, 'CCSTNKORI8000000', 1, 'storage', 'object_storage', 'Object Storage 8 IOPS per GB  ', 'obj_8', 'Object Storage 8 IOPS per GB  '),
(20, 'CCSTMUORI8000000', 2, 'storage', 'object_storage', 'Object Storage 8 IOPS per GB  ', 'obj_8', 'Object Storage 8 IOPS per GB  '),
(21, 'CCSTBNORI8000000', 3, 'storage', 'object_storage', 'Object Storage 8 IOPS per GB  ', 'obj_8', 'Object Storage 8 IOPS per GB  '),
(22, 'CCSTNKBTP3000000', 1, 'storage', 'block_storage', 'Block Storage 0.3 IOPS per GB ', 'block_03', 'Block Storage 0.3 IOPS per GB '),
(23, 'CCSTMUBTP3000000', 2, 'storage', 'block_storage', 'Block Storage 0.3 IOPS per GB  ', 'block_03', 'Block Storage 0.3 IOPS per GB  '),
(24, 'CCSTBNBTP3000000', 3, 'storage', 'block_storage', 'Block Storage 0.3 IOPS per GB ', 'block_03', 'Block Storage 0.3 IOPS per GB '),
(25, 'CCSTNKBTP0000000', 1, 'storage', 'block_storage', 'Block Storage 10 IOPS per GB  ', 'block_10', 'Block Storage 10 IOPS per GB  '),
(26, 'CCSTMUBTP0000000', 2, 'storage', 'block_storage', 'Block Storage 10 IOPS per GB   ', 'block_10', 'Block Storage 10 IOPS per GB   '),
(27, 'CCSTBNBTP0000000', 3, 'storage', 'block_storage', 'Block Storage 10 IOPS per GB  ', 'block_10', 'Block Storage 10 IOPS per GB  '),
(28, 'CCSTNKBTP1000000', 1, 'storage', 'block_storage', 'Block Storage  1 IOPS per GB  ', 'block_1', 'Block Storage  1 IOPS per GB  '),
(29, 'CCSTMUBTP1000000', 2, 'storage', 'block_storage', 'Block Storage  1 IOPS per GB   ', 'block_1', 'Block Storage  1 IOPS per GB   '),
(30, 'CCSTBNBTP1000000', 3, 'storage', 'block_storage', 'Block Storage  1 IOPS per GB  ', 'block_1', 'Block Storage  1 IOPS per GB  '),
(31, 'CCSTNKBTI3000000', 1, 'storage', 'block_storage', 'Block Storage 3 IOPS per GB  ', 'block_3', 'Block Storage 3 IOPS per GB  '),
(32, 'CCSTMUBTI3000000', 2, 'storage', 'block_storage', 'Block Storage 3 IOPS per GB   ', 'block_3', 'Block Storage 3 IOPS per GB   '),
(33, 'CCSTBNBTI3000000', 3, 'storage', 'block_storage', 'Block Storage 3 IOPS per GB  ', 'block_3', 'Block Storage 3 IOPS per GB  '),
(34, 'CCSTNKBTI5000000', 1, 'storage', 'block_storage', 'Block Storage 5 IOPS per GB  ', 'block_5', 'Block Storage 5 IOPS per GB  '),
(35, 'CCSTMUBTI5000000', 2, 'storage', 'block_storage', 'Block Storage 5 IOPS per GB   ', 'block_5', 'Block Storage 5 IOPS per GB   '),
(36, 'CCSTBNBTI5000000', 3, 'storage', 'block_storage', 'Block Storage 5 IOPS per GB  ', 'block_5', 'Block Storage 5 IOPS per GB  '),
(37, 'CCSTNKBTI8000000', 1, 'storage', 'block_storage', 'Block Storage 8 IOPS per GB  ', 'block_8', 'Block Storage 8 IOPS per GB  '),
(38, 'CCSTMUBTI8000000', 2, 'storage', 'block_storage', 'Block Storage 8 IOPS per GB   ', 'block_8', 'Block Storage 8 IOPS per GB   '),
(39, 'CCSTBNBTI8000000', 3, 'storage', 'block_storage', 'Block Storage 8 IOPS per GB  ', 'block_8', 'Block Storage 8 IOPS per GB  '),
(40, 'CCSTNKFSP3000000', 1, 'storage', 'file_storage', 'File Storage 0.3 IOPS per GB  ', 'file_03', 'File Storage 0.3 IOPS per GB  '),
(41, 'CCSTMUFSP3000000', 2, 'storage', 'file_storage', 'File Storage 0.3 IOPS per GB  ', 'file_03', 'File Storage 0.3 IOPS per GB  '),
(42, 'CCSTBNFSP3000000', 3, 'storage', 'file_storage', 'File Storage 0.3 IOPS per GB  ', 'file_03', 'File Storage 0.3 IOPS per GB  '),
(43, 'CCSTNKFSP0000000', 1, 'storage', 'file_storage', 'File Storage 10 IOPS per GB  ', 'file_10', 'File Storage 10 IOPS per GB  '),
(44, 'CCSTMUFSP0000000', 2, 'storage', 'file_storage', 'File Storage 10 IOPS per GB  ', 'file_10', 'File Storage 10 IOPS per GB  '),
(45, 'CCSTBNFSP0000000', 3, 'storage', 'file_storage', 'File Storage 10 IOPS per GB  ', 'file_10', 'File Storage 10 IOPS per GB  '),
(46, 'CCSTNKFSP1000000', 1, 'storage', 'file_storage', 'File Storage 1 IOPS per GB  ', 'file_1', 'File Storage 1 IOPS per GB  '),
(47, 'CCSTMUFSP1000000', 2, 'storage', 'file_storage', 'File Storage 1 IOPS per GB  ', 'file_1', 'File Storage 1 IOPS per GB  '),
(48, 'CCSTBNFSP1000000', 3, 'storage', 'file_storage', 'File Storage 1 IOPS per GB  ', 'file_1', 'File Storage 1 IOPS per GB  '),
(49, 'CCSTNKFSI3000000', 1, 'storage', 'file_storage', 'File Storage 3 IOPS per GB  ', 'file_3', 'File Storage 3 IOPS per GB  '),
(50, 'CCSTMUFSI3000000', 2, 'storage', 'file_storage', 'File Storage 3 IOPS per GB  ', 'file_3', 'File Storage 3 IOPS per GB  '),
(51, 'CCSTBNFSI3000000', 3, 'storage', 'file_storage', 'File Storage 3 IOPS per GB  ', 'file_3', 'File Storage 3 IOPS per GB  '),
(52, 'CCSTNKFSI5000000', 1, 'storage', 'file_storage', 'File Storage 5 IOPS per GB  ', 'file_5', 'File Storage 5 IOPS per GB  '),
(53, 'CCSTMUFSI5000000', 2, 'storage', 'file_storage', 'File Storage 5 IOPS per GB  ', 'file_5', 'File Storage 5 IOPS per GB  '),
(54, 'CCSTBNFSI5000000', 3, 'storage', 'file_storage', 'File Storage 5 IOPS per GB  ', 'file_5', 'File Storage 5 IOPS per GB  '),
(55, 'CCSTNKFSI8000000', 1, 'storage', 'file_storage', 'File Storage 8 IOPS per GB  ', 'file_8', 'File Storage 8 IOPS per GB  '),
(56, 'CCSTMUFSI8000000', 2, 'storage', 'file_storage', 'File Storage 8 IOPS per GB  ', 'file_8', 'File Storage 8 IOPS per GB  '),
(57, 'CCSTBNFSI8000000', 3, 'storage', 'file_storage', 'File Storage 8 IOPS per GB  ', 'file_8', 'File Storage 8 IOPS per GB  '),
(58, 'SOBANKCT00000000', 1, 'software', 'backup_soft', 'Backup Agent', 'carbonite', ' Backup Agent - Carbonite '),
(59, 'SOBAMUCT00000000', 2, 'software', 'backup_soft', 'Backup Agent', 'carbonite', ' Backup Agent - Carbonite '),
(60, 'SOBABNCT00000000', 3, 'software', 'backup_soft', 'Backup Agent', 'carbonite', ' Backup Agent - Carbonite '),
(61, 'SOBANKVE00000000', 1, 'software', 'backup_soft', 'Backup Agent', 'veeam', ' Backup Agent - Veeam '),
(62, 'SOBAMUVE00000000', 2, 'software', 'backup_soft', 'Backup Agent', 'veeam', ' Backup Agent - Veeam '),
(63, 'SOBABNVE00000000', 3, 'software', 'backup_soft', 'Backup Agent', 'veeam', ' Backup Agent - Veeam '),
(64, '0', 0, 'storage', 'offline_backup', 'Tape Library', 'tl', 'Tape Library'),
(65, '0', 0, 'storage', 'offline_backup', 'Tape Cartridge', 'tc', 'Tape Cartridge'),
(66, '0', 0, 'storage', 'offline_backup', 'Fireproof Cabinate', 'fc', 'Fireproof Cabinate'),
(67, 'ICSRNKDWGS000000', 1, 'security', 'ssl_certificate', 'SSL Certificate', 'domain_wild_ssl', 'Domain SSL Wild Card  '),
(68, 'ICSRMUDWGS000000', 2, 'security', 'ssl_certificate', 'SSL Certificate', 'domain_wild_ssl', 'Domain SSL Wild Card  '),
(69, 'ICSRBNDWGS000000', 3, 'security', 'ssl_certificate', 'SSL Certificate', 'domain_wild_ssl', 'Domain SSL Wild Card  '),
(70, 'MSEGNKFWVT000000', 1, 'managed', 'firewall_mgmt', 'Firewall Managed Services', 'vfirewall_mgmt', 'Virtual Firewall External - Managed Services '),
(71, 'MSEGMUFWVT000000', 2, 'managed', 'firewall_mgmt', 'Firewall Managed Services', 'vfirewall_mgmt', 'Virtual Firewall External - Managed Services  '),
(72, 'MSEGBNFWVT000000', 3, 'managed', 'firewall_mgmt', 'Firewall Managed Services', 'vfirewall_mgmt', 'Virtual Firewall External - Managed Services '),
(73, 'MSEGNKFWPF000000', 1, 'managed', 'firewall_mgmt', 'Firewall Managed Services', 'pfirewall_mgmt', 'Physical Firewall - Managed Services  '),
(74, 'MSEGMUFWPF000000', 2, 'managed', 'firewall_mgmt', 'Firewall Managed Services', 'pfirewall_mgmt', 'Physical Firewall - Managed Services   '),
(75, 'MSEGBNFWPF000000', 3, 'managed', 'firewall_mgmt', 'Firewall Managed Services', 'pfirewall_mgmt', 'Physical Firewall - Managed Services  '),
(76, 'ICSRNKAWGS000000', 1, 'security', 'ssl_certificate', 'SSL Certificate', 'alpha_wild_ssl', 'Alpha SSL Wild Card  '),
(77, 'ICSRMUAWGS000000', 2, 'security', 'ssl_certificate', 'SSL Certificate', 'alpha_wild_ssl', 'Alpha SSL Wild Card  '),
(78, 'ICSRBNAWGS000000', 3, 'security', 'ssl_certificate', 'SSL Certificate', 'alpha_wild_ssl', 'Alpha SSL Wild Card  '),
(79, 'ICVUNKFN1G000000', 1, 'security', 'utm', 'UTM', 'forti_vutm_1g', 'Fortinet  - Virtual UTM- 1 Gpbs'),
(80, 'ICVUMUFN1G000000', 2, 'security', 'utm', 'UTM', 'forti_vutm_1g', 'Fortinet  - Virtual UTM- 1 Gpbs'),
(81, 'ICVUBNFN1G000000', 3, 'security', 'utm', 'UTM', 'forti_vutm_1g', 'Fortinet  - Virtual UTM- 1 Gpbs'),
(82, 'ICVUNKFN2G000000', 1, 'security', 'utm', 'UTM', 'forti_vutm_2g', 'Fortinet  - Virtual UTM- 2 Gpbs'),
(83, 'ICVUMUFN2G000000', 2, 'security', 'utm', 'UTM', 'forti_vutm_2g', 'Fortinet  - Virtual UTM- 2 Gpbs'),
(84, 'ICVUBNFN2G000000', 3, 'security', 'utm', 'UTM', 'forti_vutm_2g', 'Fortinet  - Virtual UTM- 2 Gpbs'),
(85, 'ICVUNKCK1G000000', 1, 'security', 'utm', 'UTM', 'check_vutm_1g', 'CheckPoint  - Virtual UTM- 1 Gpbs'),
(86, 'ICVUMUCK1G000000', 2, 'security', 'utm', 'UTM', 'check_vutm_1g', 'CheckPoint  - Virtual UTM- 1 Gpbs'),
(87, 'ICVUBNCK1G000000', 3, 'security', 'utm', 'UTM', 'check_vutm_1g', 'CheckPoint  - Virtual UTM- 1 Gpbs'),
(88, 'ICVUNKCK2G000000', 1, 'security', 'utm', 'UTM', 'check_vutm_2g', 'CheckPoint  - Virtual UTM- 2 Gpbs'),
(89, 'ICVUMUCK2G000000', 2, 'security', 'utm', 'UTM', 'check_vutm_2g', 'CheckPoint  - Virtual UTM- 2 Gpbs'),
(90, 'ICVUBNCK2G000000', 3, 'security', 'utm', 'UTM', 'check_vutm_2g', 'CheckPoint  - Virtual UTM- 2 Gpbs'),
(91, 'ICVUNKPA1G000000', 1, 'security', 'utm', 'UTM', 'palo_vutm_1g', 'Palo alto - Virtual UTM- 1 Gpbs'),
(92, 'ICVUMUPA1G000000', 2, 'security', 'utm', 'UTM', 'palo_vutm_1g', 'Palo alto - Virtual UTM- 1 Gpbs'),
(93, 'ICVUBNPA1G000000', 3, 'security', 'utm', 'UTM', 'palo_vutm_1g', 'Palo alto - Virtual UTM- 1 Gpbs'),
(94, 'ICVUNKPA2G000000', 1, 'security', 'utm', 'UTM', 'palo_vutm_2g', 'Palo alto - Virtual UTM- 2 Gpbs'),
(95, 'ICVUMUPA2G000000', 2, 'security', 'utm', 'UTM', 'palo_vutm_2g', 'Palo alto - Virtual UTM- 2 Gpbs'),
(96, 'ICVUBNPA2G000000', 3, 'security', 'utm', 'UTM', 'palo_vutm_2g', 'Palo alto - Virtual UTM- 2 Gpbs'),
(97, 'ICVUNKSO1G000000', 1, 'security', 'utm', 'UTM', 'sopo_vutm_1g', 'Sopohs - Virtual UTM- 1 Gpbs'),
(98, 'ICVUMUSO1G000000', 2, 'security', 'utm', 'UTM', 'sopo_vutm_1g', 'Sopohs - Virtual UTM- 1 Gpbs'),
(99, 'ICVUBNSO1G000000', 3, 'security', 'utm', 'UTM', 'sopo_vutm_1g', 'Sopohs - Virtual UTM- 1 Gpbs'),
(100, 'ICVUNKSO2G000000', 1, 'security', 'utm', 'UTM', 'sopo_vutm_2g', 'Sopohs - Virtual UTM- 2 Gpbs'),
(101, 'ICVUMUSO2G000000', 2, 'security', 'utm', 'UTM', 'sopo_vutm_2g', 'Sopohs - Virtual UTM- 2 Gpbs'),
(102, 'ICVUBNSO2G000000', 3, 'security', 'utm', 'UTM', 'sopo_vutm_2g', 'Sopohs - Virtual UTM- 2 Gpbs'),
(103, 'ICVUNKJU1G000000', 1, 'security', 'utm', 'UTM', 'juni_vutm_1g', 'Juniper  - Virtual UTM- 1 Gpbs'),
(104, 'ICVUMUJU1G000000', 2, 'security', 'utm', 'UTM', 'juni_vutm_1g', 'Juniper  - Virtual UTM- 1 Gpbs'),
(105, 'ICVUBNJU1G000000', 3, 'security', 'utm', 'UTM', 'juni_vutm_1g', 'Juniper  - Virtual UTM- 1 Gpbs'),
(106, 'ICVUNKJU2G000000', 1, 'security', 'utm', 'UTM', 'juni_vutm_2g', 'Juniper  - Virtual UTM- 2 Gpbs'),
(107, 'ICVUMUJU2G000000', 2, 'security', 'utm', 'UTM', 'juni_vutm_2g', 'Juniper  - Virtual UTM- 2 Gpbs'),
(108, 'ICVUBNJU2G000000', 3, 'security', 'utm', 'UTM', 'juni_vutm_2g', 'Juniper  - Virtual UTM- 2 Gpbs'),
(109, 'ICVUNKC11G000000', 1, 'security', 'utm', 'UTM', 'clii_vutm_1g', 'Client Specific - Virtual UTM- 1 Gpbs'),
(110, 'ICVUMUC11G000000', 2, 'security', 'utm', 'UTM', 'clii_vutm_1g', 'Client Specific - Virtual UTM- 1 Gpbs'),
(111, 'ICVUBNC11G000000', 3, 'security', 'utm', 'UTM', 'clii_vutm_1g', 'Client Specific - Virtual UTM- 1 Gpbs'),
(112, 'ICVUNKC12G000000', 1, 'security', 'utm', 'UTM', 'clii_vutm_2g', 'Client Specific - Virtual UTM- 2 Gpbs'),
(113, 'ICVUMUC12G000000', 2, 'security', 'utm', 'UTM', 'clii_vutm_2g', 'Client Specific - Virtual UTM- 2 Gpbs'),
(114, 'ICVUBNC12G000000', 3, 'security', 'utm', 'UTM', 'clii_vutm_2g', 'Client Specific - Virtual UTM- 2 Gpbs'),
(115, 'ICSRNKOLGS000000', 1, 'security', 'ssl_certificate', 'SSL Certificate', 'org_wild_ssl', 'Organizational SSL Wild Card  '),
(116, 'ICSRMUOLGS000000', 2, 'security', 'ssl_certificate', 'SSL Certificate', 'org_wild_ssl', 'Organizational SSL Wild Card  '),
(117, 'ICSRBNOLGS000000', 3, 'security', 'ssl_certificate', 'SSL Certificate', 'org_wild_ssl', 'Organizational SSL Wild Card  '),
(118, 'ICVTNKTS3S000000', 1, 'security', 'vtm_scan', 'VTM Scan', 'vtm_scan_30', 'VTMScan -30Scan'),
(119, 'ICVTMUTS3S000000', 2, 'security', 'vtm_scan', 'VTM Scan', 'vtm_scan_30', 'VTMScan -30Scan'),
(120, 'ICVTBNTS3S000000', 3, 'security', 'vtm_scan', 'VTM Scan', 'vtm_scan_30', 'VTMScan -30Scan'),
(121, 'ICVTNKTS6S000000', 1, 'security', 'vtm_scan', 'VTM Scan', 'vtm_scan_60', 'VTMScan - 60Scan'),
(122, 'ICVTMUTS6S000000', 2, 'security', 'vtm_scan', 'VTM Scan', 'vtm_scan_60', 'VTMScan - 60Scan'),
(123, 'ICVTBNTS6S000000', 3, 'security', 'vtm_scan', 'VTM Scan', 'vtm_scan_60', 'VTMScan - 60Scan'),
(124, 'ICSRNKDRGS000000', 1, 'security', 'ssl_certificate', 'SSL Certificate', 'domain_ssl', 'Domain SSL  '),
(125, 'ICSRMUDRGS000000', 2, 'security', 'ssl_certificate', 'SSL Certificate', 'domain_ssl', 'Domain SSL  '),
(126, 'ICSRBNDRGS000000', 3, 'security', 'ssl_certificate', 'SSL Certificate', 'domain_ssl', 'Domain SSL  '),
(127, 'ICVTNKTS1S000000', 1, 'security', 'vtm_scan', 'VTM Scan', 'vtm_scan_1', 'VTMScan- 1Scan'),
(128, 'ICVTMUTS1S000000', 2, 'security', 'vtm_scan', 'VTM Scan', 'vtm_scan_1', 'VTMScan- 1Scan'),
(129, 'ICVTBNTS1S000000', 3, 'security', 'vtm_scan', 'VTM Scan', 'vtm_scan_1', 'VTMScan- 1Scan'),
(130, 'ICVTNKTS4S000000', 1, 'security', 'vtm_scan', 'VTM Scan', 'vtm_scan_4', 'VTMScan 4Scan'),
(131, 'ICVTMUTS4S000000', 2, 'security', 'vtm_scan', 'VTM Scan', 'vtm_scan_4', 'VTMScan 4Scan'),
(132, 'ICVTBNTS4S000000', 3, 'security', 'vtm_scan', 'VTM Scan', 'vtm_scan_4', 'VTMScan 4Scan'),
(133, 'ICSRNKALGS000000', 1, 'security', 'ssl_certificate', 'SSL Certificate', 'alpha_ssl', 'Alpha SSL  '),
(134, 'ICSRMUALGS000000', 2, 'security', 'ssl_certificate', 'SSL Certificate', 'alpha_ssl', 'Alpha SSL  '),
(135, 'ICSRBNALGS000000', 3, 'security', 'ssl_certificate', 'SSL Certificate', 'alpha_ssl', 'Alpha SSL  '),
(136, 'MSEGNKFWUM000000', 1, 'managed', 'firewall_mgmt', 'Firewall Managed Services', 'utm_mgmt', 'vUTM Firewall - Managed Services '),
(137, 'MSEGMUFWUM000000', 2, 'managed', 'firewall_mgmt', 'Firewall Managed Services', 'utm_mgmt', 'vUTM Firewall - Managed Services  '),
(138, 'MSEGBNFWUM000000', 3, 'managed', 'firewall_mgmt', 'Firewall Managed Services', 'utm_mgmt', 'vUTM Firewall - Managed Services '),
(139, 'ICSRNKOZGS000000', 1, 'security', 'ssl_certificate', 'SSL Certificate', 'org_ssl', 'Organizational SSL  '),
(140, 'ICSRMUOZGS000000', 2, 'security', 'ssl_certificate', 'SSL Certificate', 'org_ssl', 'Organizational SSL  '),
(141, 'ICSRBNOZGS000000', 3, 'security', 'ssl_certificate', 'SSL Certificate', 'org_ssl', 'Organizational SSL  '),
(142, 'ICSRNKXVGS000000', 1, 'security', 'ssl_certificate', 'SSL Certificate', 'ext_ssl', 'Extended SSL - SSL-Internal Security '),
(143, 'ICSRMUXVGS000000', 2, 'security', 'ssl_certificate', 'SSL Certificate', 'ext_ssl', 'Extended SSL - SSL-Internal Security '),
(144, 'ICSRBNXVGS000000', 3, 'security', 'ssl_certificate', 'SSL Certificate', 'ext_ssl', 'Extended SSL - SSL-Internal Security '),
(145, 'ICPUNKFN1G000000', 1, 'security', 'utm', 'UTM', 'forti_putm_1g', 'Fortinet  - Physical UTM- 1 Gpbs'),
(146, 'ICPUMUFN1G000000', 2, 'security', 'utm', 'UTM', 'forti_putm_1g', 'Fortinet  - Physical UTM- 1 Gpbs'),
(147, 'ICPUBNFN1G000000', 3, 'security', 'utm', 'UTM', 'forti_putm_1g', 'Fortinet  - Physical UTM- 1 Gpbs'),
(148, 'ICPUNKFN2G000000', 1, 'security', 'utm', 'UTM', 'forti_putm_2g', 'Fortinet  - Physical UTM- 2 Gpbs'),
(149, 'ICPUMUFN2G000000', 2, 'security', 'utm', 'UTM', 'forti_putm_2g', 'Fortinet  - Physical UTM- 2 Gpbs'),
(150, 'ICPUBNFN2G000000', 3, 'security', 'utm', 'UTM', 'forti_putm_2g', 'Fortinet  - Physical UTM- 2 Gpbs'),
(151, 'ICPUNKCK1G000000', 1, 'security', 'utm', 'UTM', 'check_putm_1g', 'CheckPoint  - Physical UTM- 1 Gpbs'),
(152, 'ICPUMUCK1G000000', 2, 'security', 'utm', 'UTM', 'check_putm_1g', 'CheckPoint  - Physical UTM- 1 Gpbs'),
(153, 'ICPUBNCK1G000000', 3, 'security', 'utm', 'UTM', 'check_putm_1g', 'CheckPoint  - Physical UTM- 1 Gpbs'),
(154, 'ICPUNKCK2G000000', 1, 'security', 'utm', 'UTM', 'check_putm_2g', 'CheckPoint  - Physical UTM- 2 Gpbs'),
(155, 'ICPUMUCK2G000000', 2, 'security', 'utm', 'UTM', 'check_putm_2g', 'CheckPoint  - Physical UTM- 2 Gpbs'),
(156, 'ICPUBNCK2G000000', 3, 'security', 'utm', 'UTM', 'check_putm_2g', 'CheckPoint  - Physical UTM- 2 Gpbs'),
(157, 'ICPUNKPA1G000000', 1, 'security', 'utm', 'UTM', 'palo_putm_1g', 'Palo alto - Physical UTM- 1 Gpbs'),
(158, 'ICPUMUPA1G000000', 2, 'security', 'utm', 'UTM', 'palo_putm_1g', 'Palo alto - Physical UTM- 1 Gpbs'),
(159, 'ICPUBNPA1G000000', 3, 'security', 'utm', 'UTM', 'palo_putm_1g', 'Palo alto - Physical UTM- 1 Gpbs'),
(160, 'ICPUNKPA2G000000', 1, 'security', 'utm', 'UTM', 'palo_putm_2g', 'Palo alto - Physical UTM- 2 Gpbs'),
(161, 'ICPUMUPA2G000000', 2, 'security', 'utm', 'UTM', 'palo_putm_2g', 'Palo alto - Physical UTM- 2 Gpbs'),
(162, 'ICPUBNPA2G000000', 3, 'security', 'utm', 'UTM', 'palo_putm_2g', 'Palo alto - Physical UTM- 2 Gpbs'),
(163, 'ICPUNKSO1G000000', 1, 'security', 'utm', 'UTM', 'sopo_putm_1g', 'Sopohs - Physical UTM- 1 Gpbs'),
(164, 'ICPUMUSO1G000000', 2, 'security', 'utm', 'UTM', 'sopo_putm_1g', 'Sopohs - Physical UTM- 1 Gpbs'),
(165, 'ICPUBNSO1G000000', 3, 'security', 'utm', 'UTM', 'sopo_putm_1g', 'Sopohs - Physical UTM- 1 Gpbs'),
(166, 'ICPUNKSO2G000000', 1, 'security', 'utm', 'UTM', 'sopo_putm_2g', 'Sopohs - Physical UTM- 2 Gpbs'),
(167, 'ICPUMUSO2G000000', 2, 'security', 'utm', 'UTM', 'sopo_putm_2g', 'Sopohs - Physical UTM- 2 Gpbs'),
(168, 'ICPUBNSO2G000000', 3, 'security', 'utm', 'UTM', 'sopo_putm_2g', 'Sopohs - Physical UTM- 2 Gpbs'),
(169, 'ICPUNKJU1G000000', 1, 'security', 'utm', 'UTM', 'juni_putm_1g', 'Juniper  - Physical UTM- 1 Gpbs'),
(170, 'ICPUMUJU1G000000', 2, 'security', 'utm', 'UTM', 'juni_putm_1g', 'Juniper  - Physical UTM- 1 Gpbs'),
(171, 'ICPUBNJU1G000000', 3, 'security', 'utm', 'UTM', 'juni_putm_1g', 'Juniper  - Physical UTM- 1 Gpbs'),
(172, 'ICPUNKJU2G000000', 1, 'security', 'utm', 'UTM', 'juni_putm_2g', 'Juniper  - Physical UTM- 2 Gpbs'),
(173, 'ICPUMUJU2G000000', 2, 'security', 'utm', 'UTM', 'juni_putm_2g', 'Juniper  - Physical UTM- 2 Gpbs'),
(174, 'ICPUBNJU2G000000', 3, 'security', 'utm', 'UTM', 'juni_putm_2g', 'Juniper  - Physical UTM- 2 Gpbs'),
(175, 'ICPUNKC11G000000', 1, 'security', 'utm', 'UTM', 'clii_putm_1g', 'Client Specific - Physical UTM- 1 Gpbs'),
(176, 'ICPUMUC11G000000', 2, 'security', 'utm', 'UTM', 'clii_putm_1g', 'Client Specific - Physical UTM- 1 Gpbs'),
(177, 'ICPUBNC11G000000', 3, 'security', 'utm', 'UTM', 'clii_putm_1g', 'Client Specific - Physical UTM- 1 Gpbs'),
(178, 'ICPUNKC12G000000', 1, 'security', 'utm', 'UTM', 'clii_putm_2g', 'Client Specific - Physical UTM- 2 Gpbs'),
(179, 'ICPUMUC12G000000', 2, 'security', 'utm', 'UTM', 'clii_putm_2g', 'Client Specific - Physical UTM- 2 Gpbs'),
(180, 'ICPUBNC12G000000', 3, 'security', 'utm', 'UTM', 'clii_putm_2g', 'Client Specific - Physical UTM- 2 Gpbs'),
(181, 'MSBMNKBR00000000', 1, 'managed', 'storage_mgmt', 'Backup Management', 'backup_mgmt', 'Backup Management - Managed Services '),
(182, 'MSBMMUBR00000000', 2, 'managed', 'storage_mgmt', 'Backup Management', 'backup_mgmt', 'Backup Management - Managed Services '),
(183, 'MSBMBNBR00000000', 3, 'managed', 'storage_mgmt', 'Backup Management', 'backup_mgmt', 'Backup Management - Managed Services '),
(184, 'MSTNNKPB00000000', 1, 'managed', 'storage_mgmt', 'Storage Management', 'strg_mgmt', 'Storage Management (Per TB)  Mng - Managed Services '),
(185, 'MSTNMUPB00000000', 2, 'managed', 'storage_mgmt', 'Storage Management', 'strg_mgmt', 'Storage Management (Per TB)  Mng - Managed Services  '),
(186, 'MSTNBNPB00000000', 3, 'managed', 'storage_mgmt', 'Storage Management', 'strg_mgmt', 'Storage Management (Per TB)  Mng - Managed Services '),
(187, 'CCSTNKBSP3000000', 1, 'storage', 'backup', 'Backup Storage', 'backup_gb_03', 'Backup Storage  - Per GB 0.3 IOPS'),
(188, 'CCSTMUBSP3000000', 2, 'storage', 'backup', 'Backup Storage', 'backup_gb_03', 'Backup Storage  - Per GB 0.3 IOPS'),
(189, 'CCSTBNBSP3000000', 3, 'storage', 'backup', 'Backup Storage', 'backup_gb_03', 'Backup Storage  - Per GB 0.3 IOPS'),
(190, 'CCSTNKBSP0000000', 1, 'storage', 'backup', 'Backup Storage', 'backup_gb_10', 'Backup Storage  - Per GB 10 IOPS'),
(191, 'CCSTMUBSP0000000', 2, 'storage', 'backup', 'Backup Storage', 'backup_gb_10', 'Backup Storage  - Per GB 10 IOPS'),
(192, 'CCSTBNBSP0000000', 3, 'storage', 'backup', 'Backup Storage', 'backup_gb_10', 'Backup Storage  - Per GB 10 IOPS'),
(193, 'CCSTNKBSP1000000', 1, 'storage', 'backup', 'Backup Storage', 'backup_gb_1', 'Backup Storage  - Per GB 1 IOPS'),
(194, 'CCSTMUBSP1000000', 2, 'storage', 'backup', 'Backup Storage', 'backup_gb_1', 'Backup Storage  - Per GB 1 IOPS'),
(195, 'CCSTBNBSP1000000', 3, 'storage', 'backup', 'Backup Storage', 'backup_gb_1', 'Backup Storage  - Per GB 1 IOPS'),
(196, 'CCSTNKBSI3000000', 1, 'storage', 'backup', 'Backup Storage', 'backup_gb_3', 'Backup Storage  - Per GB 3 IOPS'),
(197, 'CCSTMUBSI3000000', 2, 'storage', 'backup', 'Backup Storage', 'backup_gb_3', 'Backup Storage  - Per GB 3 IOPS'),
(198, 'CCSTBNBSI3000000', 3, 'storage', 'backup', 'Backup Storage', 'backup_gb_3', 'Backup Storage  - Per GB 3 IOPS'),
(199, 'CCSTNKBSI5000000', 1, 'storage', 'backup', 'Backup Storage', 'backup_gb_5', 'Backup Storage  - Per GB 5 IOPS'),
(200, 'CCSTMUBSI5000000', 2, 'storage', 'backup', 'Backup Storage', 'backup_gb_5', 'Backup Storage  - Per GB 5 IOPS'),
(201, 'CCSTBNBSI5000000', 3, 'storage', 'backup', 'Backup Storage', 'backup_gb_5', 'Backup Storage  - Per GB 5 IOPS'),
(202, 'CCSTNKBSI8000000', 1, 'storage', 'backup', 'Backup Storage', 'backup_gb_8', 'Backup Storage  - Per GB 8 IOPS'),
(203, 'CCSTMUBSI8000000', 2, 'storage', 'backup', 'Backup Storage', 'backup_gb_8', 'Backup Storage  - Per GB 8 IOPS'),
(204, 'CCSTBNBSI8000000', 3, 'storage', 'backup', 'Backup Storage', 'backup_gb_8', 'Backup Storage  - Per GB 8 IOPS'),
(205, 'MSDMNKMG00000000', 1, 'managed', 'db_mgmt', 'Database Managed Services', 'mong_db_mgmt', 'MongoDB Database Managed Services (Up to 100 GB) '),
(206, 'MSDMMUMG00000000', 2, 'managed', 'db_mgmt', 'Database Managed Services', 'mong_db_mgmt', 'MongoDB Database Managed Services (Up to 100 GB)  '),
(207, 'MSDMBNMG00000000', 3, 'managed', 'db_mgmt', 'Database Managed Services', 'mong_db_mgmt', 'MongoDB Database Managed Services (Up to 100 GB) '),
(208, 'MSDMNKOA00000000', 1, 'managed', 'db_mgmt', 'Database Managed Services', 'orc_db_mgmt', 'Oracle Database Managed Services (Up to 100 GB)  '),
(209, 'MSDMMUOA00000000', 2, 'managed', 'db_mgmt', 'Database Managed Services', 'orc_db_mgmt', 'Oracle Database Managed Services (Up to 100 GB)   '),
(210, 'MSDMBNOA00000000', 3, 'managed', 'db_mgmt', 'Database Managed Services', 'orc_db_mgmt', 'Oracle Database Managed Services (Up to 100 GB)  '),
(211, 'MSDMNKSD00000000', 1, 'managed', 'db_mgmt', 'Database Managed Services', 'syb_db_mgmt', 'Sybase Database Managed Services(Up to 100 GB)  '),
(212, 'MSDMMUSD00000000', 2, 'managed', 'db_mgmt', 'Database Managed Services', 'syb_db_mgmt', 'Sybase Database Managed Services(Up to 100 GB)   '),
(213, 'MSDMBNSD00000000', 3, 'managed', 'db_mgmt', 'Database Managed Services', 'syb_db_mgmt', 'Sybase Database Managed Services(Up to 100 GB)  '),
(214, 'MSOGNKDD00000000', 1, 'managed', 'dr_mng', 'DR Drill', 'dr_drill', 'DR Drill (Per Application) '),
(215, 'MSOGMUDD00000000', 2, 'managed', 'dr_mng', 'DR Drill', 'dr_drill', 'DR Drill (Per Application)  '),
(216, 'MSOGBNDD00000000', 3, 'managed', 'dr_mng', 'DR Drill', 'dr_drill', 'DR Drill (Per Application) '),
(217, 'MSOGNKRA00000000', 1, 'managed', 'dr_mng', 'Replication Link Management', 'rep_mgmt', 'Replication Mng - Managed Services  '),
(218, 'MSOGMURA00000000', 2, 'managed', 'dr_mng', 'Replication Link Management', 'rep_mgmt', 'Replication Mng - Managed Services   '),
(219, 'MSOGBNRA00000000', 3, 'managed', 'dr_mng', 'Replication Link Management', 'rep_mgmt', 'Replication Mng - Managed Services  '),
(220, 'MSDMNKMQ00000000', 1, 'managed', 'db_mgmt', 'Database Managed Services', 'ms_db_mgmt', 'MSSQL Database Managed Services (Up to 100 GB) '),
(221, 'MSDMMUMQ00000000', 2, 'managed', 'db_mgmt', 'Database Managed Services', 'ms_db_mgmt', 'MSSQL Database Managed Services (Up to 100 GB)  '),
(222, 'MSDMBNMQ00000000', 3, 'managed', 'db_mgmt', 'Database Managed Services', 'ms_db_mgmt', 'MSSQL Database Managed Services (Up to 100 GB) '),
(223, 'MSDMNKMY00000000', 1, 'managed', 'db_mgmt', 'Database Managed Services', 'my_db_mgmt', 'MYSQL Database  Managed Services (Up to 100 GB)  '),
(224, 'MSDMMUMY00000000', 2, 'managed', 'db_mgmt', 'Database Managed Services', 'my_db_mgmt', 'MYSQL Database  Managed Services (Up to 100 GB)   '),
(225, 'MSDMBNMY00000000', 3, 'managed', 'db_mgmt', 'Database Managed Services', 'my_db_mgmt', 'MYSQL Database  Managed Services (Up to 100 GB)  '),
(226, 'MSDMNKPS00000000', 1, 'managed', 'db_mgmt', 'Database Managed Services', 'post_db_mgmt', 'PostgresSQL Database Managed Services (Up to 100 GB) '),
(227, 'MSDMMUPS00000000', 2, 'managed', 'db_mgmt', 'Database Managed Services', 'post_db_mgmt', 'PostgresSQL Database Managed Services (Up to 100 GB)  '),
(228, 'MSDMBNPS00000000', 3, 'managed', 'db_mgmt', 'Database Managed Services', 'post_db_mgmt', 'PostgresSQL Database Managed Services (Up to 100 GB) '),
(229, 'CCVRNKAT00000000', 1, 'compute', 'vRAM', 'RAM', 'vram_static', 'vRAM Static- Compute '),
(230, 'CCVRMUAT00000000', 2, 'compute', 'vRAM', 'RAM', 'vram_static', 'vRAM Static- Compute '),
(231, 'CCVRBNAT00000000', 3, 'compute', 'vRAM', 'RAM', 'vram_static', 'vRAM Static- Compute '),
(232, 'CCVCNKVE00000000', 1, 'compute', 'vCPU', 'CPU', 'vcpu_elastic', 'vCPU Elastic Cloud - Compute '),
(233, 'CCVCMUVE00000000', 2, 'compute', 'vCPU', 'CPU', 'vcpu_elastic', 'vCPU Elastic Cloud - Compute '),
(234, 'CCVCBNVE00000000', 3, 'compute', 'vCPU', 'CPU', 'vcpu_elastic', 'vCPU Elastic Cloud - Compute '),
(235, 'CCVRNKRL00000000', 1, 'compute', 'vRAM', 'RAM', 'vram_elastic', 'vRAM Elastic Cloud- Compute '),
(236, 'CCVRMURL00000000', 2, 'compute', 'vRAM', 'RAM', 'vram_elastic', 'vRAM Elastic Cloud- Compute '),
(237, 'CCVRBNRL00000000', 3, 'compute', 'vRAM', 'RAM', 'vram_elastic', 'vRAM Elastic Cloud- Compute '),
(238, 'CCVCNKVS00000000', 1, 'compute', 'vCPU', 'CPU', 'vcpu_static', 'vCPU Static Cloud- Compute '),
(239, 'CCVCMUVS00000000', 2, 'compute', 'vCPU', 'CPU', 'vcpu_static', 'vCPU Static Cloud- Compute '),
(240, 'CCVCBNVS00000000', 3, 'compute', 'vCPU', 'CPU', 'vcpu_static', 'vCPU Static Cloud- Compute '),
(241, 'ICSINKLR00000000', 1, 'security', 'siem', 'SIEM', 'logrythm_siem', 'LogRythm OEM -SIEM-Internal Security '),
(242, 'ICSIMULR00000000', 2, 'security', 'siem', 'SIEM', 'logrythm_siem', 'LogRythm OEM -SIEM-Internal Security '),
(243, 'ICSIBNLR00000000', 3, 'security', 'siem', 'SIEM', 'logrythm_siem', 'LogRythm OEM -SIEM-Internal Security '),
(244, 'ESVANKNVQY000000', 1, 'security', 'vapt', 'VAPT Audit', 'noncert_vapt', 'NON CERT IN- VAPT Audit '),
(245, 'ESVAMUNVQY000000', 2, 'security', 'vapt', 'VAPT Audit', 'noncert_vapt', 'NON CERT IN- VAPT Audit '),
(246, 'ESVABNNVQY000000', 3, 'security', 'vapt', 'VAPT Audit', 'noncert_vapt', 'NON CERT IN- VAPT Audit '),
(247, 'ESVANKNVHY000000', 1, 'security', 'vapt', 'VAPT Audit', 'noncert_vapt', 'NON CERT IN- VAPT Audit '),
(248, 'ESVAMUNVHY000000', 2, 'security', 'vapt', 'VAPT Audit', 'noncert_vapt', 'NON CERT IN- VAPT Audit '),
(249, 'ESVABNNVHY000000', 3, 'security', 'vapt', 'VAPT Audit', 'noncert_vapt', 'NON CERT IN- VAPT Audit '),
(250, 'ESVANKNVYE000000', 1, 'security', 'vapt', 'VAPT Audit', 'noncert_vapt', 'NON CERT IN- VAPT Audit '),
(251, 'ESVAMUNVYE000000', 2, 'security', 'vapt', 'VAPT Audit', 'noncert_vapt', 'NON CERT IN- VAPT Audit '),
(252, 'ESVABNNVYE000000', 3, 'security', 'vapt', 'VAPT Audit', 'noncert_vapt', 'NON CERT IN- VAPT Audit '),
(253, 'CNIBNKVO00000000', 1, 'network', 'bandwidth', 'Bandwidth', 'volume_band', 'Volume Based : Internet Bandwidth '),
(254, 'CNIBMUVO00000000', 2, 'network', 'bandwidth', 'Bandwidth', 'volume_band', 'Volume Based : Internet Bandwidth '),
(255, 'CNIBBNVO00000000', 3, 'network', 'bandwidth', 'Bandwidth', 'volume_band', 'Volume Based : Internet Bandwidth '),
(256, 'CNIBNKVO00000000', 1, 'network', 'bandwidth', 'Bandwidth', 'speed_band', 'Speed Based : Internet Bandwidth'),
(257, 'CNIBMUVO00000000', 2, 'network', 'bandwidth', 'Bandwidth', 'speed_band', 'Speed Based : Internet Bandwidth'),
(258, 'CNIBBNVO00000000', 3, 'network', 'bandwidth', 'Bandwidth', 'speed_band', 'Speed Based : Internet Bandwidth'),
(259, 'ESDINKIDTT000000', 1, 'security', 'ddos', 'DDOS Mitigation', 'ddos_1gbps', 'DDOS Mitigation - 1Gbps'),
(260, 'ESDIMUIDTT000000', 2, 'security', 'ddos', 'DDOS Mitigation', 'ddos_1gbps', 'DDOS Mitigation - 1Gbps'),
(261, 'ESDIBNIDTT000000', 3, 'security', 'ddos', 'DDOS Mitigation', 'ddos_1gbps', 'DDOS Mitigation - 1Gbps'),
(262, 'ESDINKIDTT000000', 1, 'security', 'ddos', 'DDOS Mitigation', 'ddos_2gbps', 'DDOS Mitigation - 2Gbps'),
(263, 'ESDIMUIDTT000000', 2, 'security', 'ddos', 'DDOS Mitigation', 'ddos_2gbps', 'DDOS Mitigation - 2Gbps'),
(264, 'ESDIBNIDTT000000', 3, 'security', 'ddos', 'DDOS Mitigation', 'ddos_2gbps', 'DDOS Mitigation - 2Gbps'),
(265, 'ICSINKCS00000000', 1, 'security', 'siem', 'SIEM', 'secon_siem', 'SECEON - SIEM-Internal Security '),
(266, 'ICSIMUCS00000000', 2, 'security', 'siem', 'SIEM', 'secon_siem', 'SECEON - SIEM-Internal Security '),
(267, 'ICSIBNCS00000000', 3, 'security', 'siem', 'SIEM', 'secon_siem', 'SECEON - SIEM-Internal Security '),
(268, 'ICSINKKA00000000', 1, 'security', 'siem', 'SIEM', 'khika_siem', 'KHIKA - SIEM-Internal Security '),
(269, 'ICSIMUKA00000000', 2, 'security', 'siem', 'SIEM', 'khika_siem', 'KHIKA - SIEM-Internal Security '),
(270, 'ICSIBNKA00000000', 3, 'security', 'siem', 'SIEM', 'khika_siem', 'KHIKA - SIEM-Internal Security '),
(271, 'CNMSNKAR00000000', 0, 'network', 'link', 'Replication Link', 'mpls_link', 'MPLS Link'),
(272, 'ESVANKCVQY000000', 1, 'security', 'vapt', 'VAPT Audit', 'cert_vapt', 'CERTIN- VAPT Audit '),
(273, 'ESVAMUCVQY000000', 2, 'security', 'vapt', 'VAPT Audit', 'cert_vapt', 'CERTIN- VAPT Audit '),
(274, 'ESVABNCVQY000000', 3, 'security', 'vapt', 'VAPT Audit', 'cert_vapt', 'CERTIN- VAPT Audit '),
(275, 'ESVANKCVHY000000', 1, 'security', 'vapt', 'VAPT Audit', 'cert_vapt', 'CERTIN- VAPT Audit '),
(276, 'ESVAMUCVHY000000', 2, 'security', 'vapt', 'VAPT Audit', 'cert_vapt', 'CERTIN- VAPT Audit '),
(277, 'ESVABNCVHY000000', 3, 'security', 'vapt', 'VAPT Audit', 'cert_vapt', 'CERTIN- VAPT Audit '),
(278, 'ESVANKCVYE000000', 1, 'security', 'vapt', 'VAPT Audit', 'cert_vapt', 'CERTIN- VAPT Audit '),
(279, 'ESVAMUCVYE000000', 2, 'security', 'vapt', 'VAPT Audit', 'cert_vapt', 'CERTIN- VAPT Audit '),
(280, 'ESVABNCVYE000000', 3, 'security', 'vapt', 'VAPT Audit', 'cert_vapt', 'CERTIN- VAPT Audit '),
(281, 'CNPRNMPP00000000', 0, 'network', 'link', 'Replication Link', 'p2p_link', 'P2P Link'),
(282, 'ICSONKSOSO000000', 1, 'security', 'soar', 'Security orchestration, automation and response ', 'soar', 'Security orchestration, automation and response '),
(283, 'ICSOMUSOSO000000', 2, 'security', 'soar', 'Security orchestration, automation and response ', 'soar', 'Security orchestration, automation and response '),
(284, 'ICSOBNSOSO000000', 3, 'security', 'soar', 'Security orchestration, automation and response ', 'soar', 'Security orchestration, automation and response '),
(285, 'SODSNKPLVA000000', 1, 'software', 'drm', 'DRM Tool', 'veeam_drm', 'DRM -Software- veeam '),
(286, 'SODSMUPLVA000000', 2, 'software', 'drm', 'DRM Tool', 'veeam_drm', 'DRM -Software- veeam  '),
(287, 'SODSBNPLVA000000', 3, 'software', 'drm', 'DRM Tool', 'veeam_drm', 'DRM -Software- veeam '),
(288, 'SODSNKVICT000000', 1, 'software', 'drm', 'DRM Tool', 'carb_drm', 'DRM -Software- Carbonite '),
(289, 'SODSMUVICT000000', 2, 'software', 'drm', 'DRM Tool', 'carb_drm', 'DRM -Software- carbonite  '),
(290, 'SODSBNVICT000000', 3, 'software', 'drm', 'DRM Tool', 'carb_drm', 'DRM -Software- carbonite '),
(291, 'ICWFNKCK1G000000', 1, 'security', 'waf', 'Web App Firewall', 'checkpoint _vwaf_1gbps', 'Checkpoint -VWAF - 1Gbps'),
(292, 'ICWFMUCK1G000000', 2, 'security', 'waf', 'Web App Firewall', 'checkpoint _vwaf_1gbps', 'Checkpoint -VWAF - 1Gbps'),
(293, 'ICWFBNCK1G000000', 3, 'security', 'waf', 'Web App Firewall', 'checkpoint _vwaf_1gbps', 'Checkpoint -VWAF - 1Gbps'),
(294, 'ICWFNKCK2G000000', 1, 'security', 'waf', 'Web App Firewall', 'checkpoint _vwaf_2gbps', 'Checkpoint -VWAF - 2Gbps'),
(295, 'ICWFMUCK2G000000', 2, 'security', 'waf', 'Web App Firewall', 'checkpoint _vwaf_2gbps', 'Checkpoint -VWAF - 2Gbps'),
(296, 'ICWFBNCK2G000000', 3, 'security', 'waf', 'Web App Firewall', 'checkpoint _vwaf_2gbps', 'Checkpoint -VWAF - 2Gbps'),
(297, 'ICWFNKFN1G000000', 1, 'security', 'waf', 'Web App Firewall', 'fortinet _ vwaf_1gbps', 'Fortinet - VWAF - 1Gbps'),
(298, 'ICWFMUFN1G000000', 2, 'security', 'waf', 'Web App Firewall', 'fortinet _ vwaf_1gbps', 'Fortinet - VWAF - 1Gbps'),
(299, 'ICWFBNFN1G000000', 3, 'security', 'waf', 'Web App Firewall', 'fortinet _ vwaf_1gbps', 'Fortinet - VWAF - 1Gbps'),
(300, 'ICWFNKFN2G000000', 1, 'security', 'waf', 'Web App Firewall', 'fortinet _ vwaf_2gbps', 'Fortinet - VWAF - 2Gbps'),
(301, 'ICWFMUFN2G000000', 2, 'security', 'waf', 'Web App Firewall', 'fortinet _ vwaf_2gbps', 'Fortinet - VWAF - 2Gbps'),
(302, 'ICWFBNFN2G000000', 3, 'security', 'waf', 'Web App Firewall', 'fortinet _ vwaf_2gbps', 'Fortinet - VWAF - 2Gbps'),
(303, 'ICWFNKRD1G000000', 1, 'security', 'waf', 'Web App Firewall', 'radware _ vwaf_1gbps', 'RADWARE - VWAF - 1Gbps'),
(304, 'ICWFMURD1G000000', 2, 'security', 'waf', 'Web App Firewall', 'radware _ vwaf_1gbps', 'RADWARE - VWAF - 1Gbps'),
(305, 'ICWFBNRD1G000000', 3, 'security', 'waf', 'Web App Firewall', 'radware _ vwaf_1gbps', 'RADWARE - VWAF - 1Gbps'),
(306, 'ICWFNKRD2G000000', 1, 'security', 'waf', 'Web App Firewall', 'radware _ vwaf_2gbps', 'RADWARE - VWAF - 2Gbps'),
(307, 'ICWFMURD2G000000', 2, 'security', 'waf', 'Web App Firewall', 'radware _ vwaf_2gbps', 'RADWARE - VWAF - 2Gbps'),
(308, 'ICWFBNRD2G000000', 3, 'security', 'waf', 'Web App Firewall', 'radware _ vwaf_2gbps', 'RADWARE - VWAF - 2Gbps'),
(309, 'ICFWNKFN1G000000', 1, 'security', 'ifw', 'Internal Firewall', 'ifw_fortinet_1gbps', 'Fortinet - Virtual Internal Firewall - 1 Gpbs'),
(310, 'ICFWMUFN1G000000', 2, 'security', 'ifw', 'Internal Firewall', 'ifw_fortinet_1gbps', 'Fortinet - Virtual Internal Firewall - 1 Gpbs'),
(311, 'ICFWBNFN1G000000', 3, 'security', 'ifw', 'Internal Firewall', 'ifw_fortinet_1gbps', 'Fortinet - Virtual Internal Firewall - 1 Gpbs'),
(312, 'ICFWNKFN2G000000', 1, 'security', 'ifw', 'Internal Firewall', 'ifw_fortinet_2gbps', 'Fortinet - Virtual Internal Firewall - 2 Gpbs'),
(313, 'ICFWMUFN2G000000', 2, 'security', 'ifw', 'Internal Firewall', 'ifw_fortinet_2gbps', 'Fortinet - Virtual Internal Firewall - 2 Gpbs'),
(314, 'ICFWBNFN2G000000', 3, 'security', 'ifw', 'Internal Firewall', 'ifw_fortinet_2gbps', 'Fortinet - Virtual Internal Firewall - 2 Gpbs'),
(315, 'ICFWNKFN1G000000', 1, 'security', 'efw', 'External Firewall', 'efw_fortinet_1gbps', 'Fortinet - Virtual External Firewall - 1 Gpbs'),
(316, 'ICFWMUFN1G000000', 2, 'security', 'efw', 'External Firewall', 'efw_fortinet_1gbps', 'Fortinet - Virtual External Firewall - 1 Gpbs'),
(317, 'ICFWBNFN1G000000', 3, 'security', 'efw', 'External Firewall', 'efw_fortinet_1gbps', 'Fortinet - Virtual External Firewall - 1 Gpbs'),
(318, 'ICFWNKFN2G000000', 1, 'security', 'efw', 'External Firewall', 'efw_fortinet_2gbps', 'Fortinet - Virtual External Firewall - 2 Gpbs'),
(319, 'ICFWMUFN2G000000', 2, 'security', 'efw', 'External Firewall', 'efw_fortinet_2gbps', 'Fortinet - Virtual External Firewall - 2 Gpbs'),
(320, 'ICFWBNFN2G000000', 3, 'security', 'efw', 'External Firewall', 'efw_fortinet_2gbps', 'Fortinet - Virtual External Firewall - 2 Gpbs'),
(321, 'ICWFNKE31G000000', 1, 'security', 'waf', 'Web App Firewall', 'enligh_vwaf_1gbps', 'eNlight - VWAF - 1Gbps'),
(322, 'ICWFMUE31G000000', 2, 'security', 'waf', 'Web App Firewall', 'enligh_vwaf_1gbps', 'eNlight - VWAF - 1Gbps'),
(323, 'ICWFBNE31G000000', 3, 'security', 'waf', 'Web App Firewall', 'enligh_vwaf_1gbps', 'eNlight - VWAF - 1Gbps'),
(324, 'ICWFNKE32G000000', 1, 'security', 'waf', 'Web App Firewall', 'enligh_vwaf_2gbps', 'eNlight - VWAF - 2Gbps'),
(325, 'ICWFMUE32G000000', 2, 'security', 'waf', 'Web App Firewall', 'enligh_vwaf_2gbps', 'eNlight - VWAF - 2Gbps'),
(326, 'ICWFBNE32G000000', 3, 'security', 'waf', 'Web App Firewall', 'enligh_vwaf_2gbps', 'eNlight - VWAF - 2Gbps'),
(327, 'ICWFNKC11G000000', 1, 'security', 'waf', 'Web App Firewall', 'other_ vwaf_1gbps', 'Other- VWAF - 1Gbps'),
(328, 'ICWFMUC11G000000', 2, 'security', 'waf', 'Web App Firewall', 'other_ vwaf_1gbps', 'Other- VWAF - 1Gbps'),
(329, 'ICWFBNC11G000000', 3, 'security', 'waf', 'Web App Firewall', 'other_ vwaf_1gbps', 'Other- VWAF - 1Gbps'),
(330, 'ICWFNKC12G000000', 1, 'security', 'waf', 'Web App Firewall', 'other_ vwaf_2gbps', 'Other- VWAF - 2Gbps'),
(331, 'ICWFMUC12G000000', 2, 'security', 'waf', 'Web App Firewall', 'other_ vwaf_2gbps', 'Other- VWAF - 2Gbps'),
(332, 'ICWFBNC12G000000', 3, 'security', 'waf', 'Web App Firewall', 'other_ vwaf_2gbps', 'Other- VWAF - 2Gbps'),
(333, 'CNPTNKCPG1000000', 1, 'network', 'net', 'Port Termination', 'copper_port_10g', 'Copper -10 Gig-Port Termination - Connectivity '),
(334, 'CNPTMUCPG1000000', 2, 'network', 'net', 'Port Termination', 'copper_port_10g', 'Copper -10 Gig-Port Termination - Connectivity '),
(335, 'CNPTBNCPG1000000', 3, 'network', 'net', 'Port Termination', 'copper_port_10g', 'Copper -10 Gig-Port Termination - Connectivity '),
(336, 'ICFWNKCK1G000000', 1, 'security', 'ifw', 'Internal Firewall', 'ifw_check_1gbps', 'CHECKPOINT - Virtual Firewall - 1 Gpbs'),
(337, 'ICFWMUCK1G000000', 2, 'security', 'ifw', 'Internal Firewall', 'ifw_check_1gbps', 'CHECKPOINT - Virtual Firewall - 1 Gpbs'),
(338, 'ICFWBNCK1G000000', 3, 'security', 'ifw', 'Internal Firewall', 'ifw_check_1gbps', 'CHECKPOINT - Virtual Firewall - 1 Gpbs'),
(339, 'ICFWNKCK2G000000', 1, 'security', 'ifw', 'Internal Firewall', 'ifw_check_2gbps', 'CHECKPOINT - Virtual Firewall - 2 Gpbs'),
(340, 'ICFWMUCK2G000000', 2, 'security', 'ifw', 'Internal Firewall', 'ifw_check_2gbps', 'CHECKPOINT - Virtual Firewall - 2 Gpbs'),
(341, 'ICFWBNCK2G000000', 3, 'security', 'ifw', 'Internal Firewall', 'ifw_check_2gbps', 'CHECKPOINT - Virtual Firewall - 2 Gpbs'),
(342, 'ICFWNKCK1G000000', 1, 'security', 'efw', 'External Firewall', 'efw_check_1gbps', 'CHECKPOINT - Virtual Firewall - 1 Gpbs'),
(343, 'ICFWMUCK1G000000', 2, 'security', 'efw', 'External Firewall', 'efw_check_1gbps', 'CHECKPOINT - Virtual Firewall - 1 Gpbs'),
(344, 'ICFWBNCK1G000000', 3, 'security', 'efw', 'External Firewall', 'efw_check_1gbps', 'CHECKPOINT - Virtual Firewall - 1 Gpbs'),
(345, 'ICFWNKCK2G000000', 1, 'security', 'efw', 'External Firewall', 'efw_check_2gbps', 'CHECKPOINT - Virtual Firewall - 2 Gpbs'),
(346, 'ICFWMUCK2G000000', 2, 'security', 'efw', 'External Firewall', 'efw_check_2gbps', 'CHECKPOINT - Virtual Firewall - 2 Gpbs'),
(347, 'ICFWBNCK2G000000', 3, 'security', 'efw', 'External Firewall', 'efw_check_2gbps', 'CHECKPOINT - Virtual Firewall - 2 Gpbs'),
(348, 'CNPTNKCP1G000000', 1, 'network', 'net', 'Port Termination', 'copper_port_1g', 'Copper-1 Gig -Port Termination - Connectivity '),
(349, 'CNPTMUCP1G000000', 2, 'network', 'net', 'Port Termination', 'copper_port_1g', 'Copper-1 Gig -Port Termination - Connectivity '),
(350, 'CNPTBNCP1G000000', 3, 'network', 'net', 'Port Termination', 'copper_port_1g', 'Copper-1 Gig -Port Termination - Connectivity '),
(351, 'CNPTNKFBG1000000', 1, 'network', 'net', 'Port Termination', 'fiber_port_10g', 'Fiber-10 Gig - Port Termination - Connectivity '),
(352, 'CNPTMUFBG1000000', 2, 'network', 'net', 'Port Termination', 'fiber_port_10g', 'Fiber-10 Gig - Port Termination - Connectivity '),
(353, 'CNPTBNFBG1000000', 3, 'network', 'net', 'Port Termination', 'fiber_port_10g', 'Fiber-10 Gig - Port Termination - Connectivity '),
(354, 'ICFWNKPA1G000000', 1, 'security', 'ifw', 'Internal Firewall', 'ifw_palo_1gbps', 'PALO ALTO - Virtual Internal Firewall - 1 Gpbs'),
(355, 'ICFWMUPA1G000000', 2, 'security', 'ifw', 'Internal Firewall', 'ifw_palo_1gbps', 'PALO ALTO - Virtual Internal Firewall - 1 Gpbs'),
(356, 'ICFWBNPA1G000000', 3, 'security', 'ifw', 'Internal Firewall', 'ifw_palo_1gbps', 'PALO ALTO - Virtual Internal Firewall - 1 Gpbs'),
(357, 'ICFWNKPA2G000000', 1, 'security', 'ifw', 'Internal Firewall', 'ifw_palo_2gbps', 'PALO ALTO - Virtual Internal Firewall - 2 Gpbs'),
(358, 'ICFWMUPA2G000000', 2, 'security', 'ifw', 'Internal Firewall', 'ifw_palo_2gbps', 'PALO ALTO - Virtual Internal Firewall - 2 Gpbs'),
(359, 'ICFWBNPA2G000000', 3, 'security', 'ifw', 'Internal Firewall', 'ifw_palo_2gbps', 'PALO ALTO - Virtual Internal Firewall - 2 Gpbs'),
(360, 'ICFWNKPA1G000000', 1, 'security', 'efw', 'External Firewall', 'efw_palo_1gbps', 'PALO ALTO -Virtual External Firewall - 1 Gpbs'),
(361, 'ICFWMUPA1G000000', 2, 'security', 'efw', 'External Firewall', 'efw_palo_1gbps', 'PALO ALTO -Virtual External Firewall - 1 Gpbs'),
(362, 'ICFWBNPA1G000000', 3, 'security', 'efw', 'External Firewall', 'efw_palo_1gbps', 'PALO ALTO -Virtual External Firewall - 1 Gpbs'),
(363, 'ICFWNKPA2G000000', 1, 'security', 'efw', 'External Firewall', 'efw_palo_2gbps', 'PALO ALTO -Virtual External Firewall - 2 Gpbs'),
(364, 'ICFWMUPA2G000000', 2, 'security', 'efw', 'External Firewall', 'efw_palo_2gbps', 'PALO ALTO -Virtual External Firewall - 2 Gpbs'),
(365, 'ICFWBNPA2G000000', 3, 'security', 'efw', 'External Firewall', 'efw_palo_2gbps', 'PALO ALTO -Virtual External Firewall - 2 Gpbs'),
(366, 'ICWFNKF51G000000', 1, 'security', 'waf', 'Web App Firewall', 'f5 _vwaf_1gbps', 'F5 -VWAF - 1Gbps'),
(367, 'ICWFMUF51G000000', 2, 'security', 'waf', 'Web App Firewall', 'f5 _vwaf_1gbps', 'F5 -VWAF - 1Gbps'),
(368, 'ICWFBNF51G000000', 3, 'security', 'waf', 'Web App Firewall', 'f5 _vwaf_1gbps', 'F5 -VWAF - 1Gbps'),
(369, 'ICWFNKF52G000000', 1, 'security', 'waf', 'Web App Firewall', 'f5 _vwaf_2gbps', 'F5 -VWAF - 2Gbps'),
(370, 'ICWFMUF52G000000', 2, 'security', 'waf', 'Web App Firewall', 'f5 _vwaf_2gbps', 'F5 -VWAF - 2Gbps'),
(371, 'ICWFBNF52G000000', 3, 'security', 'waf', 'Web App Firewall', 'f5 _vwaf_2gbps', 'F5 -VWAF - 2Gbps'),
(372, 'MSEGNKEVWB000000', 1, 'managed', 'waf_mgmt', 'Web App Firewall Managed Services', 'esds_waf_mgmt', 'ESDS vWAF - Managed Services '),
(373, 'MSEGMUEVWB000000', 2, 'managed', 'waf_mgmt', 'Web App Firewall Managed Services', 'esds_waf_mgmt', 'ESDS vWAF - Managed Services  '),
(374, 'MSEGBNEVWB000000', 3, 'managed', 'waf_mgmt', 'Web App Firewall Managed Services', 'esds_waf_mgmt', 'ESDS vWAF - Managed Services '),
(375, 'CNPTNKFB1G000000', 1, 'network', 'net', 'Port Termination', 'fiber_port_1g', 'Fiber- 1 Gig-Port Termination - Connectivity '),
(376, 'CNPTMUFB1G000000', 2, 'network', 'net', 'Port Termination', 'fiber_port_1g', 'Fiber- 1 Gig-Port Termination - Connectivity '),
(377, 'CNPTBNFB1G000000', 3, 'network', 'net', 'Port Termination', 'fiber_port_1g', 'Fiber- 1 Gig-Port Termination - Connectivity '),
(378, 'CNNR000000000000', 0, 'network', 'net', 'Cross Connect', 'cross_connect', 'Cross-connect'),
(379, 'MSEGNKEVPH000000', 1, 'managed', 'waf_mgmt', 'Web App Firewall Managed Services', 'phy_waf_mgmt', 'Physical WAF - Managed Services  '),
(380, 'MSEGMUEVPH000000', 2, 'managed', 'waf_mgmt', 'Web App Firewall Managed Services', 'phy_waf_mgmt', 'Physical WAF - Managed Services   '),
(381, 'MSEGBNEVPH000000', 3, 'managed', 'waf_mgmt', 'Web App Firewall Managed Services', 'phy_waf_mgmt', 'Physical WAF - Managed Services  '),
(382, 'ICHSNKDHHS000000', 1, 'security', 'hsm', 'Hardware Security Module', 'dedicate_hsm', 'Hardware Security Module - Dedicated '),
(383, 'ICHSMUDHHS000000', 2, 'security', 'hsm', 'Hardware Security Module', 'dedicate_hsm', 'Hardware Security Module - Dedicated '),
(384, 'ICHSBNDHHS000000', 3, 'security', 'hsm', 'Hardware Security Module', 'dedicate_hsm', 'Hardware Security Module - Dedicated '),
(385, 'ESDLNKDVFN000000', 1, 'security', 'dlp', 'DLP', 'dlp_fortinet', 'DLP VM - Fortinet  '),
(386, 'ESDLMUDVFN000000', 2, 'security', 'dlp', 'DLP', 'dlp_fortinet', 'DLP VM - Fortinet  '),
(387, 'ESDLBNDVFN000000', 3, 'security', 'dlp', 'DLP', 'dlp_fortinet', 'DLP VM - Fortinet  '),
(388, 'ESDLNKDVEP000000', 1, 'security', 'dlp', 'DLP', 'dlp_endpoint', 'DLP VM - End Point '),
(389, 'ESDLMUDVEP000000', 2, 'security', 'dlp', 'DLP', 'dlp_endpoint', 'DLP VM - End Point '),
(390, 'ESDLBNDVEP000000', 3, 'security', 'dlp', 'DLP', 'dlp_endpoint', 'DLP VM - End Point '),
(391, 'ICHSNKSMHS000000', 1, 'security', 'hsm', 'Hardware Security Module', 'shared_hsm', 'Hardware Security Module - Shared '),
(392, 'ICHSNKSMHS000000', 2, 'security', 'hsm', 'Hardware Security Module', 'shared_hsm', 'Hardware Security Module - Shared '),
(393, 'ICHSNKSMHS000000', 3, 'security', 'hsm', 'Hardware Security Module', 'shared_hsm', 'Hardware Security Module - Shared '),
(394, 'ESDLNKDVMA000000', 1, 'security', 'dlp', 'DLP', 'dlp_mcafee', 'DLP VM - McAfee   '),
(395, 'ESDLMUDVMA000000', 2, 'security', 'dlp', 'DLP', 'dlp_mcafee', 'DLP VM - McAfee   '),
(396, 'ESDLBNDVMA000000', 3, 'security', 'dlp', 'DLP', 'dlp_mcafee', 'DLP VM - McAfee   '),
(397, 'CNVNNKIV00000000', 1, 'network', 'vpn', 'IPSEC VPN', 'ipsec_vpn', 'IPSEC-VPN - Connectivity '),
(398, 'CNVNMUIV00000000', 2, 'network', 'vpn', 'IPSEC VPN', 'ipsec_vpn', 'IPSEC-VPN - Connectivity '),
(399, 'CNVNBNIV00000000', 3, 'network', 'vpn', 'IPSEC VPN', 'ipsec_vpn', 'IPSEC-VPN - Connectivity '),
(400, 'ESPDNKAR00000000', 1, 'security', 'pim', 'Priviledge Identity Management', 'arcon_pim', 'ARCON- Priviledge Identity Management-OEM '),
(401, 'ESPDMUAR00000000', 2, 'security', 'pim', 'Priviledge Identity Management', 'arcon_pim', 'ARCON- Priviledge Identity Management-OEM '),
(402, 'ESPDBNAR00000000', 3, 'security', 'pim', 'Priviledge Identity Management', 'arcon_pim', 'ARCON- Priviledge Identity Management-OEM '),
(403, 'ESPDNKIR00000000', 1, 'security', 'pim', 'Priviledge Identity Management', 'iraje_pim', 'iRaje- Priviledge Identity Management-OEM '),
(404, 'ESPDMUIR00000000', 2, 'security', 'pim', 'Priviledge Identity Management', 'iraje_pim', 'iRaje- Priviledge Identity Management-OEM '),
(405, 'ESPDBNIR00000000', 3, 'security', 'pim', 'Priviledge Identity Management', 'iraje_pim', 'iRaje- Priviledge Identity Management-OEM '),
(406, 'CNVNNKSV00000000', 1, 'network', 'vpn', 'SSL VPN', 'ssl_vpn', 'SSL-VPN - Connectivity '),
(407, 'CNVNMUSV00000000', 2, 'network', 'vpn', 'SSL VPN', 'ssl_vpn', 'SSL-VPN - Connectivity '),
(408, 'CNVNBNSV00000000', 3, 'network', 'vpn', 'SSL VPN', 'ssl_vpn', 'SSL-VPN - Connectivity '),
(409, 'CNVNNKWV00000000', 1, 'network', 'vpn', 'WEB VPN', 'web_vpn', 'ESDS-WEB VPN -VPN - Connectivity '),
(410, 'CNVNMUWV00000000', 2, 'network', 'vpn', 'WEB VPN', 'web_vpn', 'ESDS-WEB VPN -VPN - Connectivity '),
(411, 'CNVNBNWV00000000', 3, 'network', 'vpn', 'WEB VPN', 'web_vpn', 'ESDS-WEB VPN -VPN - Connectivity '),
(412, 'SOCMNKEO00000000', 1, 'managed', 'emagic', 'eMagic', 'emagic', 'eMagic- Cloud Monitoring  '),
(413, 'SOCMMUEO00000000', 2, 'managed', 'emagic', 'eMagic', 'emagic', 'eMagic- Cloud Monitoring   '),
(414, 'SOCMBNEO00000000', 3, 'managed', 'emagic', 'eMagic', 'emagic', 'eMagic- Cloud Monitoring  '),
(415, 'ICIMNKIMIM000000', 1, 'security', 'iam', 'Identity Access Management ', 'iam', 'Identity Access Management '),
(416, 'ICIMMUIMIM000000', 2, 'security', 'iam', 'Identity Access Management ', 'iam', 'Identity Access Management '),
(417, 'ICIMBNIMIM000000', 3, 'security', 'iam', 'Identity Access Management ', 'iam', 'Identity Access Management '),
(418, 'ICEDNKERER000000', 1, 'security', 'edr', 'Endpoint Detection & Response Service ', 'edr', 'Endpoint Detection & Response Service '),
(419, 'ICEDMUERER000000', 2, 'security', 'edr', 'Endpoint Detection & Response Service ', 'edr', 'Endpoint Detection & Response Service ');
INSERT INTO `product_list` (`id`, `sku_code`, `region`, `primary_category`, `sec_category`, `default_name`, `prod_int`, `product`) VALUES
(420, 'ICEDBNERER000000', 3, 'security', 'edr', 'Endpoint Detection & Response Service ', 'edr', 'Endpoint Detection & Response Service '),
(421, 'ESDMNKMf00000000', 1, 'security', 'dam', 'Database activity monitoring  ', 'mc_dam', 'McAfee - Database activity monitoring  '),
(422, 'ESDMMUMf00000000', 2, 'security', 'dam', 'Database activity monitoring  ', 'mc_dam', 'McAfee - Database activity monitoring  '),
(423, 'ESDMBNMf00000000', 3, 'security', 'dam', 'Database activity monitoring  ', 'mc_dam', 'McAfee - Database activity monitoring  '),
(424, 'ICDMNKDMDA000000', 1, 'security', 'dam', 'Database activity monitoring  ', 'enlight_dam', 'ESDS - Database activity monitoring  '),
(425, 'ICDMMUDMDA000000', 2, 'security', 'dam', 'Database activity monitoring  ', 'enlight_dam', 'ESDS - Database activity monitoring  '),
(426, 'ICDMBNDMDA000000', 3, 'security', 'dam', 'Database activity monitoring  ', 'enlight_dam', 'ESDS - Database activity monitoring  '),
(427, 'ESMFNKFN00000000', 1, 'security', 'mfa', 'Multi Factor Authentication', 'mfa', 'OEM MFA Fortinet '),
(428, 'ESMFMUFN00000000', 2, 'security', 'mfa', 'Multi Factor Authentication', 'mfa', 'OEM MFA Fortinet '),
(429, 'ESMFBNFN00000000', 3, 'security', 'mfa', 'Multi Factor Authentication', 'mfa', 'OEM MFA Fortinet '),
(430, 'SOMQNKEX00000000', 1, 'software', 'db', 'Database', 'ms_express', 'MSSQL-Express-Software '),
(431, 'SOMQMUEX00000000', 2, 'software', 'db', 'Database', 'ms_express', 'MSSQL-Express-Software  '),
(432, 'SOMQBNEX00000000', 3, 'software', 'db', 'Database', 'ms_express', 'MSSQL-Express-Software '),
(433, 'SOPSNKCE00000000', 1, 'software', 'db', 'Database', 'post_com', 'PostgreSQL-DB-Community  '),
(434, 'SOPSMUCE00000000', 2, 'software', 'db', 'Database', 'post_com', 'PostgreSQL-DB-Community   '),
(435, 'SOPSBNCE00000000', 3, 'software', 'db', 'Database', 'post_com', 'PostgreSQL-DB-Community  '),
(436, 'SOPSNKSE00000000', 1, 'software', 'db', 'Database', 'post_ent', 'PostgreSQL-DB-Enterprise  '),
(437, 'SOPSMUSE00000000', 2, 'software', 'db', 'Database', 'post_ent', 'PostgreSQL-DB-Enterprise   '),
(438, 'SOPSBNSE00000000', 3, 'software', 'db', 'Database', 'post_ent', 'PostgreSQL-DB-Enterprise  '),
(439, 'SOMGNKCE00000000', 1, 'software', 'db', 'Database', 'mong_com', 'MongoDB - Community  '),
(440, 'SOMGMUCE00000000', 2, 'software', 'db', 'Database', 'mong_com', 'MongoDB - Community   '),
(441, 'SOMGBNCE00000000', 3, 'software', 'db', 'Database', 'mong_com', 'MongoDB - Community  '),
(442, 'SOMGNKSE00000000', 1, 'software', 'db', 'Database', 'mong_std', 'MongoDB - Standard '),
(443, 'SOMGMUSE00000000', 2, 'software', 'db', 'Database', 'mong_std', 'MongoDB - Standard  '),
(444, 'SOMGBNSE00000000', 3, 'software', 'db', 'Database', 'mong_std', 'MongoDB - Standard '),
(445, 'SOMGNKEE00000000', 1, 'software', 'db', 'Database', 'mong_ent', 'MongoDB - Enterprise '),
(446, 'SOMGMUEE00000000', 2, 'software', 'db', 'Database', 'mong_ent', 'MongoDB - Enterprise  '),
(447, 'SOMGBNEE00000000', 3, 'software', 'db', 'Database', 'mong_ent', 'MongoDB - Enterprise '),
(448, 'SOD2NKCE00000000', 1, 'software', 'db', 'Database', 'db2_comm', 'DB2 - Community  '),
(449, 'SOD2MUCE00000000', 2, 'software', 'db', 'Database', 'db2_comm', 'DB2 - Community   '),
(450, 'SOD2BNCE00000000', 3, 'software', 'db', 'Database', 'db2_comm', 'DB2 - Community  '),
(451, 'SOOANKNU00000000', 1, 'software', 'db', 'Database', 'orc_nup', 'OracleDB-NUP   '),
(452, 'SOOAMUNU00000000', 2, 'software', 'db', 'Database', 'orc_nup', 'OracleDB-NUP    '),
(453, 'SOOABNNU00000000', 3, 'software', 'db', 'Database', 'orc_nup', 'OracleDB-NUP   '),
(454, 'SOOANKSE00000000', 1, 'software', 'db', 'Database', 'orc_std', 'OracleDB-Standard  '),
(455, 'SOOAMUSE00000000', 2, 'software', 'db', 'Database', 'orc_std', 'OracleDB-Standard   '),
(456, 'SOOABNSE00000000', 3, 'software', 'db', 'Database', 'orc_std', 'OracleDB-Standard  '),
(457, 'SOOANKEE00000000', 1, 'software', 'db', 'Database', 'orc_ent', 'OracleDB-Enterprise   '),
(458, 'SOOAMUEE00000000', 2, 'software', 'db', 'Database', 'orc_ent', 'OracleDB-Enterprise    '),
(459, 'SOOABNEE00000000', 3, 'software', 'db', 'Database', 'orc_ent', 'OracleDB-Enterprise   '),
(460, 'SOSDNKEE00000000', 1, 'software', 'db', 'Database', 'syb_ent', 'SybaseDB -Enterprise  '),
(461, 'SOSDMUEE00000000', 2, 'software', 'db', 'Database', 'syb_ent', 'SybaseDB -Enterprise   '),
(462, 'SOSDBNEE00000000', 3, 'software', 'db', 'Database', 'syb_ent', 'SybaseDB -Enterprise  '),
(463, 'SOSDNKSL00000000', 1, 'software', 'db', 'Database', 'syb_smb', 'SybaseDB -SmallBusinnes  '),
(464, 'SOSDMUSL00000000', 2, 'software', 'db', 'Database', 'syb_smb', 'SybaseDB -SmallBusinnes   '),
(465, 'SOSDBNSL00000000', 3, 'software', 'db', 'Database', 'syb_smb', 'SybaseDB -SmallBusinnes  '),
(466, 'SOSDNKED00000000', 1, 'software', 'db', 'Database', 'syb_eva', 'SybaseDB -Evaluation '),
(467, 'SOSDMUED00000000', 2, 'software', 'db', 'Database', 'syb_eva', 'SybaseDB -Evaluation  '),
(468, 'SOSDBNED00000000', 3, 'software', 'db', 'Database', 'syb_eva', 'SybaseDB -Evaluation '),
(469, 'SOSDNKEJ00000000', 1, 'software', 'db', 'Database', 'syb_exp', 'SybaseDB -Express  '),
(470, 'SOSDMUEJ00000000', 2, 'software', 'db', 'Database', 'syb_exp', 'SybaseDB -Express   '),
(471, 'SOSDBNEJ00000000', 3, 'software', 'db', 'Database', 'syb_exp', 'SybaseDB -Express  '),
(472, 'SOD2NKSE00000000', 1, 'software', 'db', 'Database', 'db2_std', 'DB2 - Standard '),
(473, 'SOD2MUSE00000000', 2, 'software', 'db', 'Database', 'db2_std', 'DB2 - Standard  '),
(474, 'SOD2BNSE00000000', 3, 'software', 'db', 'Database', 'db2_std', 'DB2 - Standard '),
(475, 'SOD2NKAE00000000', 1, 'software', 'db', 'Database', 'db2_adv', 'DB2 - Advanced '),
(476, 'SOD2MUAE00000000', 2, 'software', 'db', 'Database', 'db2_adv', 'DB2 - Advanced  '),
(477, 'SOD2BNAE00000000', 3, 'software', 'db', 'Database', 'db2_adv', 'DB2 - Advanced '),
(478, 'SOWINKSN00000000', 1, 'software', 'os', 'Operating System', 'win_se', 'Windows Standard Edition  '),
(479, 'SOWIMUSN00000000', 2, 'software', 'os', 'Operating System', 'win_se', 'Windows Standard Edition   '),
(480, 'SOWIBNSN00000000', 3, 'software', 'os', 'Operating System', 'win_se', 'Windows Standard Edition  '),
(481, 'SOWINKDE00000000', 1, 'software', 'os', 'Operating System', 'win_dc', 'Windows Data Center Edition  '),
(482, 'SOWIMUDE00000000', 2, 'software', 'os', 'Operating System', 'win_dc', 'Windows Data Center Edition   '),
(483, 'SOWIBNDE00000000', 3, 'software', 'os', 'Operating System', 'win_dc', 'Windows Data Center Edition  '),
(484, 'SOCONKCO00000000', 1, 'software', 'os', 'Operating System', 'centos', 'Linux : CentOS  '),
(485, 'SOCOMUCO00000000', 2, 'software', 'os', 'Operating System', 'centos', 'Linux : CentOS   '),
(486, 'SOCOBNCO00000000', 3, 'software', 'os', 'Operating System', 'centos', 'Linux : CentOS '),
(487, 'SOUBNKUB00000000', 1, 'software', 'os', 'Operating System', 'ubuntu', 'Linux : Ubuntu  '),
(488, 'SOUBMUUB00000000', 2, 'software', 'os', 'Operating System', 'ubuntu', 'Linux : Ubuntu   '),
(489, 'SOUBBNUB00000000', 3, 'software', 'os', 'Operating System', 'ubuntu', 'Linux : Ubuntu  '),
(490, 'SODNNKDE00000000', 1, 'software', 'os', 'Operating System', 'debian', 'Linux : Debian  '),
(491, 'SODNMUDE00000000', 2, 'software', 'os', 'Operating System', 'debian', 'Linux : Debian   '),
(492, 'SODNBNDE00000000', 3, 'software', 'os', 'Operating System', 'debian', 'Linux : Debian '),
(493, 'SOMQNKSE00000000', 1, 'software', 'db', 'Database', 'ms_std', 'MSSQL-STD   '),
(494, 'SOMQMUSE00000000', 2, 'software', 'db', 'Database', 'ms_std', 'MSSQL-STD    '),
(495, 'SOMQBNSE00000000', 3, 'software', 'db', 'Database', 'ms_std', 'MSSQL-STD   '),
(496, 'SOMQNKEE00000000', 1, 'software', 'db', 'Database', 'ms_ent', 'MSSQL-Enterprise   '),
(497, 'SOMQMUEE00000000', 2, 'software', 'db', 'Database', 'ms_ent', 'MSSQL-Enterprise    '),
(498, 'SOMQBNEE00000000', 3, 'software', 'db', 'Database', 'ms_ent', 'MSSQL-Enterprise   '),
(499, 'SOMQNKDE00000000', 1, 'software', 'db', 'Database', 'ms_dev', 'MSSQL-Development-Software '),
(500, 'SOMQMUDE00000000', 2, 'software', 'db', 'Database', 'ms_dev', 'MSSQL-Development-Software  '),
(501, 'SOMQBNDE00000000', 3, 'software', 'db', 'Database', 'ms_dev', 'MSSQL-Development-Software '),
(502, 'SOMQNKWE00000000', 1, 'software', 'db', 'Database', 'ms_web', 'MSSQL-Web-Software '),
(503, 'SOMQMUWE00000000', 2, 'software', 'db', 'Database', 'ms_web', 'MSSQL-Web-Software  '),
(504, 'SOMQBNWE00000000', 3, 'software', 'db', 'Database', 'ms_web', 'MSSQL-Web-Software '),
(505, 'SOMYNKCE00000000', 1, 'software', 'db', 'Database', 'my_com', 'MYSQL-Community   '),
(506, 'SOMYMUCE00000000', 2, 'software', 'db', 'Database', 'my_com', 'MYSQL-Community    '),
(507, 'SOMYBNCE00000000', 3, 'software', 'db', 'Database', 'my_com', 'MYSQL-Community   '),
(508, 'SOMYNKSE00000000', 1, 'software', 'db', 'Database', 'my_std', 'MYSQL-Standard   '),
(509, 'SOMYMUSE00000000', 2, 'software', 'db', 'Database', 'my_std', 'MYSQL-Standard    '),
(510, 'SOMYBNSE00000000', 3, 'software', 'db', 'Database', 'my_std', 'MYSQL-Standard   '),
(511, 'SOMYNKEE00000000', 1, 'software', 'db', 'Database', 'my_ent', 'MYSQL-Enterprise   '),
(512, 'SOMYMUEE00000000', 2, 'software', 'db', 'Database', 'my_ent', 'MYSQL-Enterprise   '),
(513, 'SOMYBNEE00000000', 3, 'software', 'db', 'Database', 'my_ent', 'MYSQL-Enterprise   '),
(514, 'SOLONKRI00000000', 1, 'software', 'os', 'Operating System', 'rhel', 'Linux : RHEL  '),
(515, 'SOLOMURI00000000', 2, 'software', 'os', 'Operating System', 'rhel', 'Linux : RHEL   '),
(516, 'SOLOBNRI00000000', 3, 'software', 'os', 'Operating System', 'rhel', 'Linux : RHEL '),
(517, 'SOSUNKSU00000000', 1, 'software', 'os', 'Operating System', 'suse', 'Linux : SUSE  '),
(518, 'SOSUNKSU00000000', 2, 'software', 'os', 'Operating System', 'suse', 'Linux : SUSE  '),
(519, 'SOSUNKSU00000000', 3, 'software', 'os', 'Operating System', 'suse', 'Linux : SUSE  '),
(520, 'MSNMNKLMVI000000', 1, 'managed', 'lb_mgmt', 'Load Balancer Management', 'virt_lb_mgmt', 'Virtual Load Balancer Management'),
(521, 'MSNMMULMVI000000', 2, 'managed', 'lb_mgmt', 'Load Balancer Management', 'virt_lb_mgmt', 'Virtual Load Balancer Management '),
(522, 'MSNMBNLMVI000000', 3, 'managed', 'lb_mgmt', 'Load Balancer Management', 'virt_lb_mgmt', 'Virtual Load Balancer Management'),
(523, 'ESAVNKBASM000000', 1, 'software', 'av', 'Anti Virus', 'sym_av_basic', 'SYMENTEC - Basic Antivirus '),
(524, 'ESAVMUBASM000000', 2, 'software', 'av', 'Anti Virus', 'sym_av_basic', 'SYMENTEC - Basic Antivirus '),
(525, 'ESAVBNBASM000000', 3, 'software', 'av', 'Anti Virus', 'sym_av_basic', 'SYMENTEC - Basic Antivirus '),
(526, 'MSOYNKNU00000000', 1, 'managed', 'os_mgmt', 'Operating System', 'centos_mgmt', 'CENTOS Operating System Managed Services'),
(527, 'MSOYMUNU00000000', 2, 'managed', 'os_mgmt', 'Operating System', 'centos_mgmt', 'CENTOS Operating System Managed Services '),
(528, 'MSOYBNNU00000000', 3, 'managed', 'os_mgmt', 'Operating System', 'centos_mgmt', 'CENTOS Operating System Managed Services'),
(529, 'MSOYNKUB00000000', 1, 'managed', 'os_mgmt', 'Operating System', 'ubuntu_mgmt', 'UBUNTU Operating System Managed Services'),
(530, 'MSOYMUUB00000000', 2, 'managed', 'os_mgmt', 'Operating System', 'ubuntu_mgmt', 'UBUNTU Operating System Managed Services '),
(531, 'MSOYBNUB00000000', 3, 'managed', 'os_mgmt', 'Operating System', 'ubuntu_mgmt', 'UBUNTU Operating System Managed Services'),
(532, 'MSNMNKLMPB000000', 1, 'managed', 'lb_mgmt', 'Load Balancer Management', 'phy_lb_mgmt', 'Physical Load Balancer Management'),
(533, 'MSNMMULMPB000000', 2, 'managed', 'lb_mgmt', 'Load Balancer Management', 'phy_lb_mgmt', 'Physical Load Balancer Management '),
(534, 'MSNMBNLMPB000000', 3, 'managed', 'lb_mgmt', 'Load Balancer Management', 'phy_lb_mgmt', 'Physical Load Balancer Management'),
(535, 'ESAVNKBATM000000', 1, 'software', 'av', 'Anti Virus', 'tm_av_basic', 'Trend Micro - Basic Antivirus '),
(536, 'ESAVMUBATM000000', 2, 'software', 'av', 'Anti Virus', 'tm_av_basic', 'Trend Micro - Basic Antivirus '),
(537, 'ESAVBNBATM000000', 3, 'software', 'av', 'Anti Virus', 'tm_av_basic', 'Trend Micro - Basic Antivirus '),
(538, 'ESAVNKBAMA000000', 1, 'software', 'av', 'Anti Virus', 'mc_av_basic', 'McAfee - Basic Antivirus '),
(539, 'ESAVMUBAMA000000', 2, 'software', 'av', 'Anti Virus', 'mc_av_basic', 'McAfee - Basic Antivirus '),
(540, 'ESAVBNBAMA000000', 3, 'software', 'av', 'Anti Virus', 'mc_av_basic', 'McAfee - Basic Antivirus '),
(541, 'ESAVNKAHSM000000', 1, 'software', 'av', 'Anti Virus', 'sym_av_hips', 'SYMENTEC - AV + HIPS '),
(542, 'ESAVMUAHSM000000', 2, 'software', 'av', 'Anti Virus', 'sym_av_hips', 'SYMENTEC - AV + HIPS '),
(543, 'ESAVBNAHSM000000', 3, 'software', 'av', 'Anti Virus', 'sym_av_hips', 'SYMENTEC - AV + HIPS '),
(544, 'ESAVNKAHTM000000', 1, 'software', 'av', 'Anti Virus', 'tm_av_hips', 'Trend Micro - AV + HIPS '),
(545, 'ESAVMUAHTM000000', 2, 'software', 'av', 'Anti Virus', 'tm_av_hips', 'Trend Micro - AV + HIPS '),
(546, 'ESAVBNAHTM000000', 3, 'software', 'av', 'Anti Virus', 'tm_av_hips', 'Trend Micro - AV + HIPS '),
(547, 'ESAVNKAHMA000000', 1, 'software', 'av', 'Anti Virus', 'mc_av_hips', 'McAfee - AV + HIPS '),
(548, 'ESAVMUAHMA000000', 2, 'software', 'av', 'Anti Virus', 'mc_av_hips', 'McAfee - AV + HIPS '),
(549, 'ESAVBNAHMA000000', 3, 'software', 'av', 'Anti Virus', 'mc_av_hips', 'McAfee - AV + HIPS '),
(550, 'MSOYNKRE00000000', 1, 'managed', 'os_mgmt', 'OS Management', 'rhel_mgmt', 'RHEL - OSMng- Managed Services '),
(551, 'MSOYMURE00000000', 2, 'managed', 'os_mgmt', 'OS Management', 'rhel_mgmt', 'RHEL - OSMng- Managed Services  '),
(552, 'MSOYBNRE00000000', 3, 'managed', 'os_mgmt', 'OS Management', 'rhel_mgmt', 'RHEL - OSMng- Managed Services '),
(553, 'MSOYNKSU00000000', 1, 'managed', 'os_mgmt', 'OS Management', 'suse_mgmt', 'SUSE - OSMng- Managed Services '),
(554, 'MSOYMUSU00000000', 2, 'managed', 'os_mgmt', 'OS Management', 'suse_mgmt', 'SUSE - OSMng- Managed Services  '),
(555, 'MSOYBNSU00000000', 3, 'managed', 'os_mgmt', 'OS Management', 'suse_mgmt', 'SUSE - OSMng- Managed Services '),
(556, 'MSOYNKSH00000000', 1, 'managed', 'os_mgmt', 'OS Management', 'hana_mgmt', 'SUSE HANA Failover OSMng - Managed Services '),
(557, 'MSOYMUSH00000000', 2, 'managed', 'os_mgmt', 'OS Management', 'hana_mgmt', 'SUSE HANA Failover OSMng - Managed Services  '),
(558, 'MSOYBNSH00000000', 3, 'managed', 'os_mgmt', 'OS Management', 'hana_mgmt', 'SUSE HANA Failover OSMng - Managed Services '),
(559, 'MSOYNKWI00000000', 1, 'managed', 'os_mgmt', 'OS Management', 'win_mgmt', 'Windows Operating System Managed Services'),
(560, 'MSOYMUWI00000000', 2, 'managed', 'os_mgmt', 'OS Management', 'win_mgmt', 'Windows Operating System Managed Services '),
(561, 'MSOYBNWI00000000', 3, 'managed', 'os_mgmt', 'OS Management', 'win_mgmt', 'Windows Operating System Managed Services'),
(562, 'CNVLNKHP5M000000', 1, 'network', 'lb', 'Load Balancer', 'vlb_proxy_512', 'HA Proxy - Virtual Load Balancer - 512 Mbps'),
(563, 'CNVLMUHP5M000000', 2, 'network', 'lb', 'Load Balancer', 'vlb_proxy_512', 'HA Proxy - Virtual Load Balancer - 512 Mbps'),
(564, 'CNVLBNHP5M000000', 3, 'network', 'lb', 'Load Balancer', 'vlb_proxy_512', 'HA Proxy - Virtual Load Balancer - 512 Mbps'),
(565, 'CNVLNKHP1G000000', 1, 'network', 'lb', 'Load Balancer', 'vlb_proxy_1G', 'HA Proxy - Virtual Load Balancer - 1 Gpbs'),
(566, 'CNVLMUHP1G000000', 2, 'network', 'lb', 'Load Balancer', 'vlb_proxy_1G', 'HA Proxy - Virtual Load Balancer - 1 Gpbs'),
(567, 'CNVLBNHP1G000000', 3, 'network', 'lb', 'Load Balancer', 'vlb_proxy_1G', 'HA Proxy - Virtual Load Balancer - 1 Gpbs'),
(568, 'CNVLNKF55M000000', 1, 'network', 'lb', 'Load Balancer', 'vlb_f5_512', 'F5-Virtual Load Balancer   - 512 Mbps'),
(569, 'CNVLMUF55M000000', 2, 'network', 'lb', 'Load Balancer', 'vlb_f5_512', 'F5-Virtual Load Balancer   - 512 Mbps'),
(570, 'CNVLBNF55M000000', 3, 'network', 'lb', 'Load Balancer', 'vlb_f5_512', 'F5-Virtual Load Balancer   - 512 Mbps'),
(571, 'CNVLNKF51G000000', 1, 'network', 'lb', 'Load Balancer', 'vlb_f5_1G', 'F5-Virtual Load Balancer   - 1 Gpbs'),
(572, 'CNVLMUF51G000000', 2, 'network', 'lb', 'Load Balancer', 'vlb_f5_1G', 'F5-Virtual Load Balancer   - 1 Gpbs'),
(573, 'CNVLBNF51G000000', 3, 'network', 'lb', 'Load Balancer', 'vlb_f5_1G', 'F5-Virtual Load Balancer   - 1 Gpbs'),
(574, 'CNVLNKNX5M000000', 1, 'network', 'lb', 'Load Balancer', 'vlb_nginx_512', 'NGINX -Virtual Load Balancer   - 512 Mbps'),
(575, 'CNVLMUNX5M000000', 2, 'network', 'lb', 'Load Balancer', 'vlb_nginx_512', 'NGINX -Virtual Load Balancer   - 512 Mbps'),
(576, 'CNVLBNNX5M000000', 3, 'network', 'lb', 'Load Balancer', 'vlb_nginx_512', 'NGINX -Virtual Load Balancer   - 512 Mbps'),
(577, 'CNVLNKNX1G000000', 1, 'network', 'lb', 'Load Balancer', 'vlb_nginx_1G', 'NGINX -Virtual Load Balancer   - 1 Gpbs'),
(578, 'CNVLMUNX1G000000', 2, 'network', 'lb', 'Load Balancer', 'vlb_nginx_1G', 'NGINX -Virtual Load Balancer   - 1 Gpbs'),
(579, 'CNVLBNNX1G000000', 3, 'network', 'lb', 'Load Balancer', 'vlb_nginx_1G', 'NGINX -Virtual Load Balancer   - 1 Gpbs'),
(580, 'CNVLNKCI5M000000', 1, 'network', 'lb', 'Load Balancer', 'vlb_citrix_512', 'CITRIX - Virtual Load Balancer - 512 Mbps'),
(581, 'CNVLMUCI5M000000', 2, 'network', 'lb', 'Load Balancer', 'vlb_citrix_512', 'CITRIX - Virtual Load Balancer - 512 Mbps'),
(582, 'CNVLBNCI5M000000', 3, 'network', 'lb', 'Load Balancer', 'vlb_citrix_512', 'CITRIX - Virtual Load Balancer - 512 Mbps'),
(583, 'CNVLNKCI1G000000', 1, 'network', 'lb', 'Load Balancer', 'vlb_citrix_1G', 'CITRIX - Virtual Load Balancer - 1 Gpbs'),
(584, 'CNVLMUCI1G000000', 2, 'network', 'lb', 'Load Balancer', 'vlb_citrix_1G', 'CITRIX - Virtual Load Balancer - 1 Gpbs'),
(585, 'CNVLBNCI1G000000', 3, 'network', 'lb', 'Load Balancer', 'vlb_citrix_1G', 'CITRIX - Virtual Load Balancer - 1 Gpbs'),
(586, 'CNVLNKAY5M000000', 1, 'network', 'lb', 'Load Balancer', 'vlb_array_512', 'ARRAY - Virtual Load Balancer   - 512 Mbps'),
(587, 'CNVLMUAY5M000000', 2, 'network', 'lb', 'Load Balancer', 'vlb_array_512', 'ARRAY - Virtual Load Balancer   - 512 Mbps'),
(588, 'CNVLBNAY5M000000', 3, 'network', 'lb', 'Load Balancer', 'vlb_array_512', 'ARRAY - Virtual Load Balancer   - 512 Mbps'),
(589, 'CNVLNKAY1G000000', 1, 'network', 'lb', 'Load Balancer', 'vlb_array_1G', 'ARRAY - Virtual Load Balancer   - 1 Gpbs'),
(590, 'CNVLMUAY1G000000', 2, 'network', 'lb', 'Load Balancer', 'vlb_array_1G', 'ARRAY - Virtual Load Balancer   - 1 Gpbs'),
(591, 'CNVLBNAY1G000000', 3, 'network', 'lb', 'Load Balancer', 'vlb_array_1G', 'ARRAY - Virtual Load Balancer   - 1 Gpbs'),
(592, 'CNPLNKF55M000000', 1, 'network', 'lb', 'Load Balancer', 'plb_f5_512', 'F5-Physical Load Balancer   - 512 Mbps'),
(593, 'CNPLMUF55M000000', 2, 'network', 'lb', 'Load Balancer', 'plb_f5_512', 'F5-Physical Load Balancer   - 512 Mbps'),
(594, 'CNPLBNF55M000000', 3, 'network', 'lb', 'Load Balancer', 'plb_f5_512', 'F5-Physical Load Balancer   - 512 Mbps'),
(595, 'CNPLNKF51G000000', 1, 'network', 'lb', 'Load Balancer', 'plb_f5_1G', 'F5-Physical Load Balancer   - 1 Gpbs'),
(596, 'CNPLMUF51G000000', 2, 'network', 'lb', 'Load Balancer', 'plb_f5_1G', 'F5-Physical Load Balancer   - 1 Gpbs'),
(597, 'CNPLBNF51G000000', 3, 'network', 'lb', 'Load Balancer', 'plb_f5_1G', 'F5-Physical Load Balancer   - 1 Gpbs'),
(598, 'CNPLNKCI5M000000', 1, 'network', 'lb', 'Load Balancer', 'plb_citrix_512', 'CITRIX - Physical Load Balancer - 512 Mbps'),
(599, 'CNPLMUCI5M000000', 2, 'network', 'lb', 'Load Balancer', 'plb_citrix_512', 'CITRIX - Physical Load Balancer - 512 Mbps'),
(600, 'CNPLBNCI5M000000', 3, 'network', 'lb', 'Load Balancer', 'plb_citrix_512', 'CITRIX - Physical Load Balancer - 512 Mbps'),
(601, 'CNPLNKCI1G000000', 1, 'network', 'lb', 'Load Balancer', 'plb_citrix_1G', 'CITRIX - Physical Load Balancer - 1 Gpbs'),
(602, 'CNPLMUCI1G000000', 2, 'network', 'lb', 'Load Balancer', 'plb_citrix_1G', 'CITRIX - Physical Load Balancer - 1 Gpbs'),
(603, 'CNPLBNCI1G000000', 3, 'network', 'lb', 'Load Balancer', 'plb_citrix_1G', 'CITRIX - Physical Load Balancer - 1 Gpbs'),
(604, 'CNPLNKAY5M000000', 1, 'network', 'lb', 'Load Balancer', 'plb_array_512', 'ARRAY - Physical Load Balancer   - 512 Mbps'),
(605, 'CNPLMUAY5M000000', 2, 'network', 'lb', 'Load Balancer', 'plb_array_512', 'ARRAY - Physical Load Balancer   - 512 Mbps'),
(606, 'CNPLBNAY5M000000', 3, 'network', 'lb', 'Load Balancer', 'plb_array_512', 'ARRAY - Physical Load Balancer   - 512 Mbps'),
(607, 'CNPLNKAY1G000000', 1, 'network', 'lb', 'Load Balancer', 'plb_array_1G', 'ARRAY - Physical Load Balancer   - 1 Gpbs'),
(608, 'CNPLMUAY1G000000', 2, 'network', 'lb', 'Load Balancer', 'plb_array_1G', 'ARRAY - Physical Load Balancer   - 1 Gpbs'),
(609, 'CNPLBNAY1G000000', 3, 'network', 'lb', 'Load Balancer', 'plb_array_1G', 'ARRAY - Physical Load Balancer   - 1 Gpbs'),
(610, 'CNIPNKPPI4000000', 1, 'network', 'ip', 'IP Address', 'ipv4', 'IPv4- Public IP  '),
(611, 'CNIPMUPPI4000000', 2, 'network', 'ip', 'IP Address', 'ipv4', 'IPv4- Public IP  '),
(612, 'CNIPBNPPI4000000', 3, 'network', 'ip', 'IP Address', 'ipv4', 'IPv4- Public IP  '),
(613, 'CNIPNKPPI6000000', 1, 'network', 'ip', 'IP Address', 'ipv6', 'IPv6 - Public IP  '),
(614, 'CNIPMUPPI6000000', 2, 'network', 'ip', 'IP Address', 'ipv6', 'IPv6 - Public IP  '),
(615, 'CNIPBNPPI6000000', 3, 'network', 'ip', 'IP Address', 'ipv6', 'IPv6 - Public IP  '),
(616, 'CCSTNKBT15000000', 0, 'storage', 'block_storage', 'Block Storage 15 IOPS per GB ', 'block_15', 'Block Storage 15 IOPS per GB '),
(617, 'CCSTNKBTP2000000', 0, 'storage', 'block_storage', 'Block Storage 20 IOPS per GB ', 'block_20', 'Block Storage 20 IOPS per GB '),
(618, 'CCSTNKBT25000000', 0, 'storage', 'block_storage', 'Block Storage 25 IOPS per GB ', 'block_25', 'Block Storage 25 IOPS per GB '),
(619, 'CCSTNKBTP3000000', 0, 'storage', 'block_storage', 'Block Storage 30 IOPS per GB ', 'block_30', 'Block Storage 30 IOPS per GB '),
(620, 'CCSTNKBTP4000000', 0, 'storage', 'block_storage', 'Block Storage 40 IOPS per GB ', 'block_40', 'Block Storage 40 IOPS per GB '),
(621, 'CCSTNKBTP5000000', 0, 'storage', 'block_storage', 'Block Storage 50 IOPS per GB ', 'block_50', 'Block Storage 50 IOPS per GB '),
(622, 'CCSTNKBTH1000000', 0, 'storage', 'block_storage', 'Block Storage 100 IOPS per GB ', 'block_100', 'Block Storage 100 IOPS per GB ');

-- --------------------------------------------------------

--
-- Table structure for table `rate_card_prices`
--

CREATE TABLE `rate_card_prices` (
  `id` int(11) NOT NULL,
  `rate_card_id` int(11) NOT NULL,
  `prod_id` int(11) NOT NULL,
  `input_price` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `discountable_price` float NOT NULL,
  `date_created` datetime NOT NULL,
  `is_active` enum('True','False') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `rate_card_prices`
--

INSERT INTO `rate_card_prices` (`id`, `rate_card_id`, `prod_id`, `input_price`, `price`, `discountable_price`, `date_created`, `is_active`) VALUES
(1, 1, 1, 1, 1, 0.4, '2023-09-20 14:03:28', 'True'),
(2, 1, 2, 1, 2, 0.4, '2023-09-20 14:03:28', 'True'),
(3, 1, 3, 1, 2, 0.4, '2023-09-20 14:03:28', 'True'),
(4, 1, 4, 1, 2, 0.4, '2023-09-20 14:03:28', 'True'),
(5, 1, 5, 1, 2, 0.4, '2023-09-20 14:03:28', 'True'),
(6, 1, 6, 1, 2, 0.4, '2023-09-20 14:03:28', 'True'),
(7, 1, 7, 7, 12, 2.4, '2023-09-20 14:03:28', 'True'),
(8, 1, 8, 7, 12, 2.4, '2023-09-20 14:03:28', 'True'),
(9, 1, 9, 7, 12, 2.4, '2023-09-20 14:03:28', 'True'),
(10, 1, 10, 2, 3, 0.6, '2023-09-20 14:03:28', 'True'),
(11, 1, 11, 2, 3, 0.6, '2023-09-20 14:03:28', 'True'),
(12, 1, 12, 2, 3, 0.6, '2023-09-20 14:03:28', 'True'),
(13, 1, 13, 2, 4, 0.8, '2023-09-20 14:03:28', 'True'),
(14, 1, 14, 2, 4, 0.8, '2023-09-20 14:03:28', 'True'),
(15, 1, 15, 2, 4, 0.8, '2023-09-20 14:03:28', 'True'),
(16, 1, 16, 4, 6, 1.2, '2023-09-20 14:03:28', 'True'),
(17, 1, 17, 4, 6, 1.2, '2023-09-20 14:03:28', 'True'),
(18, 1, 18, 4, 6, 1.2, '2023-09-20 14:03:28', 'True'),
(19, 1, 19, 6, 10, 2, '2023-09-20 14:03:28', 'True'),
(20, 1, 20, 6, 10, 2, '2023-09-20 14:03:28', 'True'),
(21, 1, 21, 6, 10, 2, '2023-09-20 14:03:28', 'True'),
(22, 1, 22, 1, 2, 0.4, '2023-09-20 14:03:28', 'True'),
(23, 1, 23, 1, 2, 0.4, '2023-09-20 14:03:28', 'True'),
(24, 1, 24, 1, 2, 0.4, '2023-09-20 14:03:28', 'True'),
(25, 1, 25, 7, 12, 2.4, '2023-09-20 14:03:28', 'True'),
(26, 1, 26, 7, 12, 2.4, '2023-09-20 14:03:28', 'True'),
(27, 1, 27, 7, 12, 2.4, '2023-09-20 14:03:28', 'True'),
(28, 1, 28, 2, 3, 0.6, '2023-09-20 14:03:28', 'True'),
(29, 1, 29, 2, 3, 0.6, '2023-09-20 14:03:28', 'True'),
(30, 1, 30, 2, 3, 0.6, '2023-09-20 14:03:28', 'True'),
(31, 1, 31, 2, 4, 0.8, '2023-09-20 14:03:28', 'True'),
(32, 1, 32, 2, 4, 0.8, '2023-09-20 14:03:28', 'True'),
(33, 1, 33, 2, 4, 0.8, '2023-09-20 14:03:28', 'True'),
(34, 1, 34, 4, 6, 1.2, '2023-09-20 14:03:28', 'True'),
(35, 1, 35, 4, 6, 1.2, '2023-09-20 14:03:28', 'True'),
(36, 1, 36, 4, 6, 1.2, '2023-09-20 14:03:28', 'True'),
(37, 1, 37, 6, 10, 2, '2023-09-20 14:03:28', 'True'),
(38, 1, 38, 6, 10, 2, '2023-09-20 14:03:28', 'True'),
(39, 1, 39, 6, 10, 2, '2023-09-20 14:03:28', 'True'),
(40, 1, 40, 1, 2, 0.4, '2023-09-20 14:03:28', 'True'),
(41, 1, 41, 1, 2, 0.4, '2023-09-20 14:03:28', 'True'),
(42, 1, 42, 1, 2, 0.4, '2023-09-20 14:03:28', 'True'),
(43, 1, 43, 7, 12, 2.4, '2023-09-20 14:03:28', 'True'),
(44, 1, 44, 7, 12, 2.4, '2023-09-20 14:03:28', 'True'),
(45, 1, 45, 7, 12, 2.4, '2023-09-20 14:03:28', 'True'),
(46, 1, 46, 2, 3, 0.6, '2023-09-20 14:03:28', 'True'),
(47, 1, 47, 2, 3, 0.6, '2023-09-20 14:03:28', 'True'),
(48, 1, 48, 2, 3, 0.6, '2023-09-20 14:03:28', 'True'),
(49, 1, 49, 2, 4, 0.8, '2023-09-20 14:03:28', 'True'),
(50, 1, 50, 2, 4, 0.8, '2023-09-20 14:03:28', 'True'),
(51, 1, 51, 2, 4, 0.8, '2023-09-20 14:03:28', 'True'),
(52, 1, 52, 4, 6, 1.2, '2023-09-20 14:03:28', 'True'),
(53, 1, 53, 4, 6, 1.2, '2023-09-20 14:03:28', 'True'),
(54, 1, 54, 4, 6, 1.2, '2023-09-20 14:03:28', 'True'),
(55, 1, 55, 6, 10, 2, '2023-09-20 14:03:28', 'True'),
(56, 1, 56, 6, 10, 2, '2023-09-20 14:03:28', 'True'),
(57, 1, 57, 6, 10, 2, '2023-09-20 14:03:28', 'True'),
(58, 1, 58, 300, 500, 100, '2023-09-20 14:03:28', 'True'),
(59, 1, 59, 300, 500, 100, '2023-09-20 14:03:28', 'True'),
(60, 1, 60, 300, 500, 100, '2023-09-20 14:03:28', 'True'),
(61, 1, 61, 300, 500, 100, '2023-09-20 14:03:28', 'True'),
(62, 1, 62, 300, 500, 100, '2023-09-20 14:03:28', 'True'),
(63, 1, 63, 300, 500, 100, '2023-09-20 14:03:28', 'True'),
(64, 1, 64, 10500, 17500, 3500, '2023-09-20 14:03:28', 'True'),
(65, 1, 65, 9000, 15000, 3000, '2023-09-20 14:03:28', 'True'),
(66, 1, 66, 12000, 20000, 4000, '2023-09-20 14:03:28', 'True'),
(67, 1, 67, 1349, 2249, 449.8, '2023-09-20 14:03:28', 'True'),
(68, 1, 68, 1349, 2249, 449.8, '2023-09-20 14:03:28', 'True'),
(69, 1, 69, 1349, 2249, 449.8, '2023-09-20 14:03:28', 'True'),
(70, 1, 70, 1200, 2000, 400, '2023-09-20 14:03:28', 'True'),
(71, 1, 71, 1200, 2000, 400, '2023-09-20 14:03:28', 'True'),
(72, 1, 72, 1200, 2000, 400, '2023-09-20 14:03:28', 'True'),
(73, 1, 73, 1200, 2000, 400, '2023-09-20 14:03:28', 'True'),
(74, 1, 74, 1200, 2000, 400, '2023-09-20 14:03:28', 'True'),
(75, 1, 75, 1200, 2000, 400, '2023-09-20 14:03:28', 'True'),
(76, 1, 76, 125, 208, 41.6, '2023-09-20 14:03:28', 'True'),
(77, 1, 77, 125, 208, 41.6, '2023-09-20 14:03:28', 'True'),
(78, 1, 78, 125, 208, 41.6, '2023-09-20 14:03:28', 'True'),
(79, 1, 79, 9900, 16500, 3300, '2023-09-20 14:03:28', 'True'),
(80, 1, 80, 9900, 16500, 3300, '2023-09-20 14:03:28', 'True'),
(81, 1, 81, 9900, 16500, 3300, '2023-09-20 14:03:28', 'True'),
(82, 1, 82, 9900, 16500, 3300, '2023-09-20 14:03:28', 'True'),
(83, 1, 83, 9900, 16500, 3300, '2023-09-20 14:03:28', 'True'),
(84, 1, 84, 9900, 16500, 3300, '2023-09-20 14:03:28', 'True'),
(85, 1, 85, 9900, 16500, 3300, '2023-09-20 14:03:28', 'True'),
(86, 1, 86, 9900, 16500, 3300, '2023-09-20 14:03:28', 'True'),
(87, 1, 87, 9900, 16500, 3300, '2023-09-20 14:03:28', 'True'),
(88, 1, 88, 9900, 16500, 3300, '2023-09-20 14:03:28', 'True'),
(89, 1, 89, 9900, 16500, 3300, '2023-09-20 14:03:28', 'True'),
(90, 1, 90, 9900, 16500, 3300, '2023-09-20 14:03:28', 'True'),
(91, 1, 91, 9900, 16500, 3300, '2023-09-20 14:03:28', 'True'),
(92, 1, 92, 9900, 16500, 3300, '2023-09-20 14:03:28', 'True'),
(93, 1, 93, 9900, 16500, 3300, '2023-09-20 14:03:28', 'True'),
(94, 1, 94, 9900, 16500, 3300, '2023-09-20 14:03:28', 'True'),
(95, 1, 95, 9900, 16500, 3300, '2023-09-20 14:03:28', 'True'),
(96, 1, 96, 9900, 16500, 3300, '2023-09-20 14:03:28', 'True'),
(97, 1, 97, 9900, 16500, 3300, '2023-09-20 14:03:28', 'True'),
(98, 1, 98, 9900, 16500, 3300, '2023-09-20 14:03:28', 'True'),
(99, 1, 99, 9900, 16500, 3300, '2023-09-20 14:03:28', 'True'),
(100, 1, 100, 9900, 16500, 3300, '2023-09-20 14:03:28', 'True'),
(101, 1, 101, 9900, 16500, 3300, '2023-09-20 14:03:28', 'True'),
(102, 1, 102, 9900, 16500, 3300, '2023-09-20 14:03:28', 'True'),
(103, 1, 103, 9900, 16500, 3300, '2023-09-20 14:03:28', 'True'),
(104, 1, 104, 9900, 16500, 3300, '2023-09-20 14:03:28', 'True'),
(105, 1, 105, 9900, 16500, 3300, '2023-09-20 14:03:28', 'True'),
(106, 1, 106, 9900, 16500, 3300, '2023-09-20 14:03:28', 'True'),
(107, 1, 107, 9900, 16500, 3300, '2023-09-20 14:03:28', 'True'),
(108, 1, 108, 9900, 16500, 3300, '2023-09-20 14:03:28', 'True'),
(109, 1, 109, 9900, 16500, 3300, '2023-09-20 14:03:28', 'True'),
(110, 1, 110, 9900, 16500, 3300, '2023-09-20 14:03:28', 'True'),
(111, 1, 111, 9900, 16500, 3300, '2023-09-20 14:03:28', 'True'),
(112, 1, 112, 9900, 16500, 3300, '2023-09-20 14:03:28', 'True'),
(113, 1, 113, 9900, 16500, 3300, '2023-09-20 14:03:28', 'True'),
(114, 1, 114, 9900, 16500, 3300, '2023-09-20 14:03:28', 'True'),
(115, 1, 115, 1499, 2499, 499.8, '2023-09-20 14:03:28', 'True'),
(116, 1, 116, 1499, 2499, 499.8, '2023-09-20 14:03:28', 'True'),
(117, 1, 117, 1499, 2499, 499.8, '2023-09-20 14:03:28', 'True'),
(118, 1, 118, 600, 1000, 200, '2023-09-20 14:03:28', 'True'),
(119, 1, 119, 600, 1000, 200, '2023-09-20 14:03:28', 'True'),
(120, 1, 120, 600, 1000, 200, '2023-09-20 14:03:28', 'True'),
(121, 1, 121, 900, 1500, 300, '2023-09-20 14:03:28', 'True'),
(122, 1, 122, 900, 1500, 300, '2023-09-20 14:03:28', 'True'),
(123, 1, 123, 900, 1500, 300, '2023-09-20 14:03:28', 'True'),
(124, 1, 124, 449, 749, 149.8, '2023-09-20 14:03:28', 'True'),
(125, 1, 125, 449, 749, 149.8, '2023-09-20 14:03:28', 'True'),
(126, 1, 126, 449, 749, 149.8, '2023-09-20 14:03:28', 'True'),
(127, 1, 127, 300, 500, 100, '2023-09-20 14:03:28', 'True'),
(128, 1, 128, 300, 500, 100, '2023-09-20 14:03:28', 'True'),
(129, 1, 129, 300, 500, 100, '2023-09-20 14:03:28', 'True'),
(130, 1, 130, 480, 800, 160, '2023-09-20 14:03:28', 'True'),
(131, 1, 131, 480, 800, 160, '2023-09-20 14:03:28', 'True'),
(132, 1, 132, 480, 800, 160, '2023-09-20 14:03:28', 'True'),
(133, 1, 133, 125, 208, 41.6, '2023-09-20 14:03:28', 'True'),
(134, 1, 134, 125, 208, 41.6, '2023-09-20 14:03:28', 'True'),
(135, 1, 135, 125, 208, 41.6, '2023-09-20 14:03:28', 'True'),
(136, 1, 136, 1200, 2000, 400, '2023-09-20 14:03:28', 'True'),
(137, 1, 137, 1200, 2000, 400, '2023-09-20 14:03:28', 'True'),
(138, 1, 138, 1200, 2000, 400, '2023-09-20 14:03:28', 'True'),
(139, 1, 139, 650, 1083, 216.6, '2023-09-20 14:03:28', 'True'),
(140, 1, 140, 650, 1083, 216.6, '2023-09-20 14:03:28', 'True'),
(141, 1, 141, 650, 1083, 216.6, '2023-09-20 14:03:28', 'True'),
(142, 1, 142, 1000, 1666, 333.2, '2023-09-20 14:03:28', 'True'),
(143, 1, 143, 1000, 1666, 333.2, '2023-09-20 14:03:28', 'True'),
(144, 1, 144, 1000, 1666, 333.2, '2023-09-20 14:03:28', 'True'),
(145, 1, 145, 9900, 16500, 3300, '2023-09-20 14:03:28', 'True'),
(146, 1, 146, 9900, 16500, 3300, '2023-09-20 14:03:28', 'True'),
(147, 1, 147, 9900, 16500, 3300, '2023-09-20 14:03:28', 'True'),
(148, 1, 148, 9900, 16500, 3300, '2023-09-20 14:03:28', 'True'),
(149, 1, 149, 9900, 16500, 3300, '2023-09-20 14:03:28', 'True'),
(150, 1, 150, 9900, 16500, 3300, '2023-09-20 14:03:28', 'True'),
(151, 1, 151, 9900, 16500, 3300, '2023-09-20 14:03:28', 'True'),
(152, 1, 152, 9900, 16500, 3300, '2023-09-20 14:03:28', 'True'),
(153, 1, 153, 9900, 16500, 3300, '2023-09-20 14:03:28', 'True'),
(154, 1, 154, 9900, 16500, 3300, '2023-09-20 14:03:28', 'True'),
(155, 1, 155, 9900, 16500, 3300, '2023-09-20 14:03:28', 'True'),
(156, 1, 156, 9900, 16500, 3300, '2023-09-20 14:03:28', 'True'),
(157, 1, 157, 9900, 16500, 3300, '2023-09-20 14:03:28', 'True'),
(158, 1, 158, 9900, 16500, 3300, '2023-09-20 14:03:28', 'True'),
(159, 1, 159, 9900, 16500, 3300, '2023-09-20 14:03:28', 'True'),
(160, 1, 160, 9900, 16500, 3300, '2023-09-20 14:03:28', 'True'),
(161, 1, 161, 9900, 16500, 3300, '2023-09-20 14:03:28', 'True'),
(162, 1, 162, 9900, 16500, 3300, '2023-09-20 14:03:28', 'True'),
(163, 1, 163, 9900, 16500, 3300, '2023-09-20 14:03:28', 'True'),
(164, 1, 164, 9900, 16500, 3300, '2023-09-20 14:03:28', 'True'),
(165, 1, 165, 9900, 16500, 3300, '2023-09-20 14:03:28', 'True'),
(166, 1, 166, 9900, 16500, 3300, '2023-09-20 14:03:28', 'True'),
(167, 1, 167, 9900, 16500, 3300, '2023-09-20 14:03:28', 'True'),
(168, 1, 168, 9900, 16500, 3300, '2023-09-20 14:03:28', 'True'),
(169, 1, 169, 9900, 16500, 3300, '2023-09-20 14:03:28', 'True'),
(170, 1, 170, 9900, 16500, 3300, '2023-09-20 14:03:28', 'True'),
(171, 1, 171, 9900, 16500, 3300, '2023-09-20 14:03:28', 'True'),
(172, 1, 172, 9900, 16500, 3300, '2023-09-20 14:03:28', 'True'),
(173, 1, 173, 9900, 16500, 3300, '2023-09-20 14:03:28', 'True'),
(174, 1, 174, 9900, 16500, 3300, '2023-09-20 14:03:28', 'True'),
(175, 1, 175, 9900, 16500, 3300, '2023-09-20 14:03:28', 'True'),
(176, 1, 176, 9900, 16500, 3300, '2023-09-20 14:03:28', 'True'),
(177, 1, 177, 9900, 16500, 3300, '2023-09-20 14:03:28', 'True'),
(178, 1, 178, 9900, 16500, 3300, '2023-09-20 14:03:28', 'True'),
(179, 1, 179, 9900, 16500, 3300, '2023-09-20 14:03:28', 'True'),
(180, 1, 180, 9900, 16500, 3300, '2023-09-20 14:03:28', 'True'),
(181, 1, 181, 180, 300, 60, '2023-09-20 14:03:28', 'True'),
(182, 1, 182, 180, 300, 60, '2023-09-20 14:03:28', 'True'),
(183, 1, 183, 180, 300, 60, '2023-09-20 14:03:28', 'True'),
(184, 1, 184, 900, 1500, 300, '2023-09-20 14:03:28', 'True'),
(185, 1, 185, 900, 1500, 300, '2023-09-20 14:03:28', 'True'),
(186, 1, 186, 900, 1500, 300, '2023-09-20 14:03:28', 'True'),
(187, 1, 187, 2, 2, 0.4, '2023-09-20 14:03:28', 'True'),
(188, 1, 188, 1, 2, 0.4, '2023-09-20 14:03:28', 'True'),
(189, 1, 189, 1, 2, 0.4, '2023-09-20 14:03:28', 'True'),
(190, 1, 190, 7, 12, 2.4, '2023-09-20 14:03:28', 'True'),
(191, 1, 191, 7, 12, 2.4, '2023-09-20 14:03:28', 'True'),
(192, 1, 192, 7, 12, 2.4, '2023-09-20 14:03:28', 'True'),
(193, 1, 193, 2, 3, 0.6, '2023-09-20 14:03:28', 'True'),
(194, 1, 194, 2, 3, 0.6, '2023-09-20 14:03:28', 'True'),
(195, 1, 195, 2, 3, 0.6, '2023-09-20 14:03:28', 'True'),
(196, 1, 196, 2, 4, 0.8, '2023-09-20 14:03:28', 'True'),
(197, 1, 197, 2, 4, 0.8, '2023-09-20 14:03:28', 'True'),
(198, 1, 198, 2, 4, 0.8, '2023-09-20 14:03:28', 'True'),
(199, 1, 199, 4, 6, 1.2, '2023-09-20 14:03:28', 'True'),
(200, 1, 200, 4, 6, 1.2, '2023-09-20 14:03:28', 'True'),
(201, 1, 201, 4, 6, 1.2, '2023-09-20 14:03:28', 'True'),
(202, 1, 202, 6, 10, 2, '2023-09-20 14:03:28', 'True'),
(203, 1, 203, 6, 10, 2, '2023-09-20 14:03:28', 'True'),
(204, 1, 204, 6, 10, 2, '2023-09-20 14:03:28', 'True'),
(205, 1, 205, 4500, 7500, 1500, '2023-09-20 14:03:28', 'True'),
(206, 1, 206, 4500, 7500, 1500, '2023-09-20 14:03:28', 'True'),
(207, 1, 207, 4500, 7500, 1500, '2023-09-20 14:03:28', 'True'),
(208, 1, 208, 4500, 7500, 1500, '2023-09-20 14:03:28', 'True'),
(209, 1, 209, 4500, 7500, 1500, '2023-09-20 14:03:28', 'True'),
(210, 1, 210, 4500, 7500, 1500, '2023-09-20 14:03:28', 'True'),
(211, 1, 211, 4500, 7500, 1500, '2023-09-20 14:03:28', 'True'),
(212, 1, 212, 4500, 7500, 1500, '2023-09-20 14:03:28', 'True'),
(213, 1, 213, 4500, 7500, 1500, '2023-09-20 14:03:28', 'True'),
(214, 1, 214, 3300, 5500, 1100, '2023-09-20 14:03:28', 'True'),
(215, 1, 215, 3300, 5500, 1100, '2023-09-20 14:03:28', 'True'),
(216, 1, 216, 3300, 5500, 1100, '2023-09-20 14:03:28', 'True'),
(217, 1, 217, 900, 1500, 300, '2023-09-20 14:03:28', 'True'),
(218, 1, 218, 900, 1500, 300, '2023-09-20 14:03:28', 'True'),
(219, 1, 219, 900, 1500, 300, '2023-09-20 14:03:28', 'True'),
(220, 1, 220, 4500, 7500, 1500, '2023-09-20 14:03:28', 'True'),
(221, 1, 221, 4500, 7500, 1500, '2023-09-20 14:03:28', 'True'),
(222, 1, 222, 4500, 7500, 1500, '2023-09-20 14:03:28', 'True'),
(223, 1, 223, 4500, 7500, 1500, '2023-09-20 14:03:28', 'True'),
(224, 1, 224, 4500, 7500, 1500, '2023-09-20 14:03:28', 'True'),
(225, 1, 225, 4500, 7500, 1500, '2023-09-20 14:03:28', 'True'),
(226, 1, 226, 4500, 7500, 1500, '2023-09-20 14:03:28', 'True'),
(227, 1, 227, 4500, 7500, 1500, '2023-09-20 14:03:28', 'True'),
(228, 1, 228, 4500, 7500, 1500, '2023-09-20 14:03:28', 'True'),
(229, 1, 229, 45, 75, 15, '2023-09-20 14:03:28', 'True'),
(230, 1, 230, 45, 75, 15, '2023-09-20 14:03:28', 'True'),
(231, 1, 231, 45, 75, 15, '2023-09-20 14:03:28', 'True'),
(232, 1, 232, 57, 95, 19, '2023-09-20 14:03:28', 'True'),
(233, 1, 233, 57, 95, 19, '2023-09-20 14:03:28', 'True'),
(234, 1, 234, 57, 95, 19, '2023-09-20 14:03:28', 'True'),
(235, 1, 235, 45, 75, 15, '2023-09-20 14:03:28', 'True'),
(236, 1, 236, 45, 75, 15, '2023-09-20 14:03:28', 'True'),
(237, 1, 237, 45, 75, 15, '2023-09-20 14:03:28', 'True'),
(238, 1, 238, 57, 75, 19, '2023-09-20 14:03:28', 'True'),
(239, 1, 239, 57, 95, 19, '2023-09-20 14:03:28', 'True'),
(240, 1, 240, 57, 95, 19, '2023-09-20 14:03:28', 'True'),
(241, 1, 241, 720, 1200, 240, '2023-09-20 14:03:28', 'True'),
(242, 1, 242, 720, 1200, 240, '2023-09-20 14:03:28', 'True'),
(243, 1, 243, 720, 1200, 240, '2023-09-20 14:03:28', 'True'),
(244, 1, 244, 300, 500, 100, '2023-09-20 14:03:28', 'True'),
(245, 1, 245, 300, 500, 100, '2023-09-20 14:03:28', 'True'),
(246, 1, 246, 300, 500, 100, '2023-09-20 14:03:28', 'True'),
(247, 1, 247, 300, 500, 100, '2023-09-20 14:03:28', 'True'),
(248, 1, 248, 300, 500, 100, '2023-09-20 14:03:28', 'True'),
(249, 1, 249, 300, 500, 100, '2023-09-20 14:03:28', 'True'),
(250, 1, 250, 300, 500, 100, '2023-09-20 14:03:28', 'True'),
(251, 1, 251, 300, 500, 100, '2023-09-20 14:03:28', 'True'),
(252, 1, 252, 300, 500, 100, '2023-09-20 14:03:28', 'True'),
(253, 1, 253, 4, 6, 1.2, '2023-09-20 14:03:28', 'True'),
(254, 1, 254, 4, 6, 1.2, '2023-09-20 14:03:28', 'True'),
(255, 1, 255, 4, 6, 1.2, '2023-09-20 14:03:28', 'True'),
(256, 1, 256, 300, 500, 100, '2023-09-20 14:03:28', 'True'),
(257, 1, 257, 300, 500, 100, '2023-09-20 14:03:28', 'True'),
(258, 1, 258, 300, 500, 100, '2023-09-20 14:03:28', 'True'),
(259, 1, 259, 8750, 14583, 2916.6, '2023-09-20 14:03:28', 'True'),
(260, 1, 260, 8750, 14583, 2916.6, '2023-09-20 14:03:28', 'True'),
(261, 1, 261, 8750, 14583, 2916.6, '2023-09-20 14:03:28', 'True'),
(262, 1, 262, 8750, 14583, 2916.6, '2023-09-20 14:03:28', 'True'),
(263, 1, 263, 8750, 14583, 2916.6, '2023-09-20 14:03:28', 'True'),
(264, 1, 264, 8750, 14583, 2916.6, '2023-09-20 14:03:28', 'True'),
(265, 1, 265, 720, 1200, 240, '2023-09-20 14:03:28', 'True'),
(266, 1, 266, 720, 1200, 240, '2023-09-20 14:03:28', 'True'),
(267, 1, 267, 720, 1200, 240, '2023-09-20 14:03:28', 'True'),
(268, 1, 268, 900, 1500, 300, '2023-09-20 14:03:28', 'True'),
(269, 1, 269, 900, 1500, 300, '2023-09-20 14:03:28', 'True'),
(270, 1, 270, 900, 1500, 300, '2023-09-20 14:03:28', 'True'),
(271, 1, 271, 0, 0, 0, '2023-09-20 14:03:28', 'True'),
(272, 1, 272, 3600, 6000, 1200, '2023-09-20 14:03:28', 'True'),
(273, 1, 273, 3600, 6000, 1200, '2023-09-20 14:03:28', 'True'),
(274, 1, 274, 3600, 6000, 1200, '2023-09-20 14:03:28', 'True'),
(275, 1, 275, 3600, 6000, 1200, '2023-09-20 14:03:28', 'True'),
(276, 1, 276, 3600, 6000, 1200, '2023-09-20 14:03:28', 'True'),
(277, 1, 277, 3600, 6000, 1200, '2023-09-20 14:03:28', 'True'),
(278, 1, 278, 3600, 6000, 1200, '2023-09-20 14:03:28', 'True'),
(279, 1, 279, 3600, 6000, 1200, '2023-09-20 14:03:28', 'True'),
(280, 1, 280, 3600, 6000, 1200, '2023-09-20 14:03:28', 'True'),
(281, 1, 281, 0, 0, 0, '2023-09-20 14:03:28', 'True'),
(282, 1, 282, 0, 500, 0, '2023-09-20 14:03:28', 'True'),
(283, 1, 283, 0, 500, 0, '2023-09-20 14:03:28', 'True'),
(284, 1, 284, 0, 500, 0, '2023-09-20 14:03:28', 'True'),
(285, 1, 285, 1350, 2250, 450, '2023-09-20 14:03:28', 'True'),
(286, 1, 286, 1350, 2250, 450, '2023-09-20 14:03:28', 'True'),
(287, 1, 287, 1350, 2250, 450, '2023-09-20 14:03:28', 'True'),
(288, 1, 288, 3000, 5000, 1000, '2023-09-20 14:03:28', 'True'),
(289, 1, 289, 3000, 5000, 1000, '2023-09-20 14:03:28', 'True'),
(290, 1, 290, 3000, 5000, 1000, '2023-09-20 14:03:28', 'True'),
(291, 1, 291, 720, 1200, 240, '2023-09-20 14:03:28', 'True'),
(292, 1, 292, 720, 1200, 240, '2023-09-20 14:03:28', 'True'),
(293, 1, 293, 720, 1200, 240, '2023-09-20 14:03:28', 'True'),
(294, 1, 294, 720, 1200, 240, '2023-09-20 14:03:28', 'True'),
(295, 1, 295, 720, 1200, 240, '2023-09-20 14:03:28', 'True'),
(296, 1, 296, 720, 1200, 240, '2023-09-20 14:03:28', 'True'),
(297, 1, 297, 9900, 16500, 3300, '2023-09-20 14:03:28', 'True'),
(298, 1, 298, 9900, 16500, 3300, '2023-09-20 14:03:28', 'True'),
(299, 1, 299, 9900, 16500, 3300, '2023-09-20 14:03:28', 'True'),
(300, 1, 300, 9900, 16500, 3300, '2023-09-20 14:03:28', 'True'),
(301, 1, 301, 9900, 16500, 3300, '2023-09-20 14:03:28', 'True'),
(302, 1, 302, 9900, 16500, 3300, '2023-09-20 14:03:28', 'True'),
(303, 1, 303, 9900, 16500, 3300, '2023-09-20 14:03:28', 'True'),
(304, 1, 304, 9900, 16500, 3300, '2023-09-20 14:03:28', 'True'),
(305, 1, 305, 9900, 16500, 3300, '2023-09-20 14:03:28', 'True'),
(306, 1, 306, 9900, 16500, 3300, '2023-09-20 14:03:28', 'True'),
(307, 1, 307, 9900, 16500, 3300, '2023-09-20 14:03:28', 'True'),
(308, 1, 308, 9900, 16500, 3300, '2023-09-20 14:03:28', 'True'),
(309, 1, 309, 9900, 16500, 3300, '2023-09-20 14:03:28', 'True'),
(310, 1, 310, 9900, 16500, 3300, '2023-09-20 14:03:28', 'True'),
(311, 1, 311, 9900, 16500, 3300, '2023-09-20 14:03:28', 'True'),
(312, 1, 312, 9900, 16500, 3300, '2023-09-20 14:03:28', 'True'),
(313, 1, 313, 9900, 16500, 3300, '2023-09-20 14:03:28', 'True'),
(314, 1, 314, 9900, 16500, 3300, '2023-09-20 14:03:28', 'True'),
(315, 1, 315, 9900, 16500, 3300, '2023-09-20 14:03:28', 'True'),
(316, 1, 316, 9900, 16500, 3300, '2023-09-20 14:03:28', 'True'),
(317, 1, 317, 9900, 16500, 3300, '2023-09-20 14:03:28', 'True'),
(318, 1, 318, 9900, 16500, 3300, '2023-09-20 14:03:28', 'True'),
(319, 1, 319, 9900, 16500, 3300, '2023-09-20 14:03:28', 'True'),
(320, 1, 320, 9900, 16500, 3300, '2023-09-20 14:03:28', 'True'),
(321, 1, 321, 6300, 10500, 2100, '2023-09-20 14:03:28', 'True'),
(322, 1, 322, 6300, 10500, 2100, '2023-09-20 14:03:28', 'True'),
(323, 1, 323, 6300, 10500, 2100, '2023-09-20 14:03:28', 'True'),
(324, 1, 324, 6300, 10500, 2100, '2023-09-20 14:03:28', 'True'),
(325, 1, 325, 6300, 10500, 2100, '2023-09-20 14:03:28', 'True'),
(326, 1, 326, 6300, 10500, 2100, '2023-09-20 14:03:28', 'True'),
(327, 1, 327, 0, 0, 0, '2023-09-20 14:03:28', 'True'),
(328, 1, 328, 0, 0, 0, '2023-09-20 14:03:28', 'True'),
(329, 1, 329, 0, 0, 0, '2023-09-20 14:03:28', 'True'),
(330, 1, 330, 0, 0, 0, '2023-09-20 14:03:28', 'True'),
(331, 1, 331, 0, 0, 0, '2023-09-20 14:03:28', 'True'),
(332, 1, 332, 0, 0, 0, '2023-09-20 14:03:28', 'True'),
(333, 1, 333, 1500, 2500, 500, '2023-09-20 14:03:28', 'True'),
(334, 1, 334, 1500, 2500, 500, '2023-09-20 14:03:28', 'True'),
(335, 1, 335, 1500, 2500, 500, '2023-09-20 14:03:28', 'True'),
(336, 1, 336, 720, 1200, 240, '2023-09-20 14:03:28', 'True'),
(337, 1, 337, 720, 1200, 240, '2023-09-20 14:03:28', 'True'),
(338, 1, 338, 720, 1200, 240, '2023-09-20 14:03:28', 'True'),
(339, 1, 339, 720, 1200, 240, '2023-09-20 14:03:28', 'True'),
(340, 1, 340, 720, 1200, 240, '2023-09-20 14:03:28', 'True'),
(341, 1, 341, 720, 1200, 240, '2023-09-20 14:03:28', 'True'),
(342, 1, 342, 720, 1200, 240, '2023-09-20 14:03:28', 'True'),
(343, 1, 343, 720, 1200, 240, '2023-09-20 14:03:28', 'True'),
(344, 1, 344, 720, 1200, 240, '2023-09-20 14:03:28', 'True'),
(345, 1, 345, 720, 1200, 240, '2023-09-20 14:03:28', 'True'),
(346, 1, 346, 720, 1200, 240, '2023-09-20 14:03:28', 'True'),
(347, 1, 347, 720, 1200, 240, '2023-09-20 14:03:28', 'True'),
(348, 1, 348, 1260, 2100, 420, '2023-09-20 14:03:28', 'True'),
(349, 1, 349, 1260, 2100, 420, '2023-09-20 14:03:28', 'True'),
(350, 1, 350, 1260, 2100, 420, '2023-09-20 14:03:28', 'True'),
(351, 1, 351, 1500, 2500, 500, '2023-09-20 14:03:28', 'True'),
(352, 1, 352, 1500, 2500, 500, '2023-09-20 14:03:28', 'True'),
(353, 1, 353, 1500, 2500, 500, '2023-09-20 14:03:28', 'True'),
(354, 1, 354, 5100, 8500, 1700, '2023-09-20 14:03:28', 'True'),
(355, 1, 355, 5100, 8500, 1700, '2023-09-20 14:03:28', 'True'),
(356, 1, 356, 5100, 8500, 1700, '2023-09-20 14:03:28', 'True'),
(357, 1, 357, 5100, 8500, 1700, '2023-09-20 14:03:28', 'True'),
(358, 1, 358, 5100, 8500, 1700, '2023-09-20 14:03:28', 'True'),
(359, 1, 359, 5100, 8500, 1700, '2023-09-20 14:03:28', 'True'),
(360, 1, 360, 5100, 8500, 1700, '2023-09-20 14:03:28', 'True'),
(361, 1, 361, 5100, 8500, 1700, '2023-09-20 14:03:28', 'True'),
(362, 1, 362, 5100, 8500, 1700, '2023-09-20 14:03:28', 'True'),
(363, 1, 363, 5100, 8500, 1700, '2023-09-20 14:03:28', 'True'),
(364, 1, 364, 5100, 8500, 1700, '2023-09-20 14:03:28', 'True'),
(365, 1, 365, 5100, 8500, 1700, '2023-09-20 14:03:28', 'True'),
(366, 1, 366, 9900, 16500, 3300, '2023-09-20 14:03:28', 'True'),
(367, 1, 367, 9900, 16500, 3300, '2023-09-20 14:03:28', 'True'),
(368, 1, 368, 9900, 16500, 3300, '2023-09-20 14:03:28', 'True'),
(369, 1, 369, 9900, 16500, 3300, '2023-09-20 14:03:28', 'True'),
(370, 1, 370, 9900, 16500, 3300, '2023-09-20 14:03:28', 'True'),
(371, 1, 371, 9900, 16500, 3300, '2023-09-20 14:03:28', 'True'),
(372, 1, 372, 900, 1500, 300, '2023-09-20 14:03:28', 'True'),
(373, 1, 373, 900, 1500, 300, '2023-09-20 14:03:28', 'True'),
(374, 1, 374, 900, 1500, 300, '2023-09-20 14:03:28', 'True'),
(375, 1, 375, 1260, 2100, 420, '2023-09-20 14:03:28', 'True'),
(376, 1, 376, 1260, 2100, 420, '2023-09-20 14:03:28', 'True'),
(377, 1, 377, 1260, 2100, 420, '2023-09-20 14:03:28', 'True'),
(378, 1, 378, 1260, 2100, 420, '2023-09-20 14:03:28', 'True'),
(379, 1, 379, 92580, 154300, 30860, '2023-09-20 14:03:28', 'True'),
(380, 1, 380, 92580, 154300, 30860, '2023-09-20 14:03:28', 'True'),
(381, 1, 381, 92580, 154300, 30860, '2023-09-20 14:03:28', 'True'),
(382, 1, 382, 0, 0, 0, '2023-09-20 14:03:28', 'True'),
(383, 1, 383, 0, 0, 0, '2023-09-20 14:03:28', 'True'),
(384, 1, 384, 0, 0, 0, '2023-09-20 14:03:28', 'True'),
(385, 1, 385, 4500, 7500, 1500, '2023-09-20 14:03:28', 'True'),
(386, 1, 386, 4500, 7500, 1500, '2023-09-20 14:03:28', 'True'),
(387, 1, 387, 4500, 7500, 1500, '2023-09-20 14:03:28', 'True'),
(388, 1, 388, 6000, 10000, 2000, '2023-09-20 14:03:28', 'True'),
(389, 1, 389, 6000, 10000, 2000, '2023-09-20 14:03:28', 'True'),
(390, 1, 390, 6000, 10000, 2000, '2023-09-20 14:03:28', 'True'),
(391, 1, 391, 0, 0, 0, '2023-09-20 14:03:28', 'True'),
(392, 1, 392, 0, 0, 0, '2023-09-20 14:03:28', 'True'),
(393, 1, 393, 0, 0, 0, '2023-09-20 14:03:28', 'True'),
(394, 1, 394, 6972, 11620, 2324, '2023-09-20 14:03:28', 'True'),
(395, 1, 395, 6972, 11620, 2324, '2023-09-20 14:03:28', 'True'),
(396, 1, 396, 6972, 11620, 2324, '2023-09-20 14:03:28', 'True'),
(397, 1, 397, 300, 500, 100, '2023-09-20 14:03:28', 'True'),
(398, 1, 398, 300, 500, 100, '2023-09-20 14:03:28', 'True'),
(399, 1, 399, 300, 500, 100, '2023-09-20 14:03:28', 'True'),
(400, 1, 400, 1200, 2000, 400, '2023-09-20 14:03:28', 'True'),
(401, 1, 401, 1200, 2000, 400, '2023-09-20 14:03:28', 'True'),
(402, 1, 402, 1200, 2000, 400, '2023-09-20 14:03:28', 'True'),
(403, 1, 403, 54, 90, 18, '2023-09-20 14:03:28', 'True'),
(404, 1, 404, 54, 90, 18, '2023-09-20 14:03:28', 'True'),
(405, 1, 405, 54, 90, 18, '2023-09-20 14:03:28', 'True'),
(406, 1, 406, 180, 300, 60, '2023-09-20 14:03:28', 'True'),
(407, 1, 407, 180, 300, 60, '2023-09-20 14:03:28', 'True'),
(408, 1, 408, 180, 300, 60, '2023-09-20 14:03:28', 'True'),
(409, 1, 409, 180, 300, 60, '2023-09-20 14:03:28', 'True'),
(410, 1, 410, 180, 300, 60, '2023-09-20 14:03:28', 'True'),
(411, 1, 411, 180, 300, 60, '2023-09-20 14:03:28', 'True'),
(412, 1, 412, 300, 500, 100, '2023-09-20 14:03:28', 'True'),
(413, 1, 413, 300, 500, 100, '2023-09-20 14:03:28', 'True'),
(414, 1, 414, 300, 500, 100, '2023-09-20 14:03:28', 'True'),
(415, 1, 415, 600, 1000, 200, '2023-09-20 14:03:28', 'True'),
(416, 1, 416, 600, 1000, 200, '2023-09-20 14:03:28', 'True'),
(417, 1, 417, 600, 1000, 200, '2023-09-20 14:03:28', 'True'),
(418, 1, 418, 768, 1280, 256, '2023-09-20 14:03:28', 'True'),
(419, 1, 419, 768, 1280, 256, '2023-09-20 14:03:28', 'True'),
(420, 1, 420, 768, 1280, 256, '2023-09-20 14:03:28', 'True'),
(421, 1, 421, 28800, 48000, 9600, '2023-09-20 14:03:28', 'True'),
(422, 1, 422, 28800, 48000, 9600, '2023-09-20 14:03:28', 'True'),
(423, 1, 423, 28800, 48000, 9600, '2023-09-20 14:03:28', 'True'),
(424, 1, 424, 3600, 6000, 1200, '2023-09-20 14:03:28', 'True'),
(425, 1, 425, 3600, 6000, 1200, '2023-09-20 14:03:28', 'True'),
(426, 1, 426, 3600, 6000, 1200, '2023-09-20 14:03:28', 'True'),
(427, 1, 427, 360, 600, 120, '2023-09-20 14:03:28', 'True'),
(428, 1, 428, 360, 600, 120, '2023-09-20 14:03:28', 'True'),
(429, 1, 429, 360, 600, 120, '2023-09-20 14:03:28', 'True'),
(430, 1, 430, 0, 0, 0, '2023-09-20 14:03:28', 'True'),
(431, 1, 431, 0, 0, 0, '2023-09-20 14:03:28', 'True'),
(432, 1, 432, 0, 0, 0, '2023-09-20 14:03:28', 'True'),
(433, 1, 433, 0, 0, 0, '2023-09-20 14:03:28', 'True'),
(434, 1, 434, 0, 0, 0, '2023-09-20 14:03:28', 'True'),
(435, 1, 435, 0, 0, 0, '2023-09-20 14:03:28', 'True'),
(436, 1, 436, 21835, 36391, 7278.2, '2023-09-20 14:03:28', 'True'),
(437, 1, 437, 21835, 36391, 7278.2, '2023-09-20 14:03:28', 'True'),
(438, 1, 438, 21835, 36391, 7278.2, '2023-09-20 14:03:28', 'True'),
(439, 1, 439, 0, 0, 0, '2023-09-20 14:03:28', 'True'),
(440, 1, 440, 0, 0, 0, '2023-09-20 14:03:28', 'True'),
(441, 1, 441, 0, 0, 0, '2023-09-20 14:03:28', 'True'),
(442, 1, 442, 2839, 4731, 946.2, '2023-09-20 14:03:28', 'True'),
(443, 1, 443, 2839, 4731, 946.2, '2023-09-20 14:03:28', 'True'),
(444, 1, 444, 2839, 4731, 946.2, '2023-09-20 14:03:28', 'True'),
(445, 1, 445, 26976, 44959, 8991.8, '2023-09-20 14:03:28', 'True'),
(446, 1, 446, 26976, 44959, 8991.8, '2023-09-20 14:03:28', 'True'),
(447, 1, 447, 26976, 44959, 8991.8, '2023-09-20 14:03:28', 'True'),
(448, 1, 448, 0, 0, 0, '2023-09-20 14:03:28', 'True'),
(449, 1, 449, 0, 0, 0, '2023-09-20 14:03:28', 'True'),
(450, 1, 450, 0, 0, 0, '2023-09-20 14:03:28', 'True'),
(451, 1, 451, 47310, 78850, 15770, '2023-09-20 14:03:28', 'True'),
(452, 1, 452, 47310, 78850, 15770, '2023-09-20 14:03:28', 'True'),
(453, 1, 453, 47310, 78850, 15770, '2023-09-20 14:03:28', 'True'),
(454, 1, 454, 22984, 38306, 7661.2, '2023-09-20 14:03:28', 'True'),
(455, 1, 455, 22984, 38306, 7661.2, '2023-09-20 14:03:28', 'True'),
(456, 1, 456, 22984, 38306, 7661.2, '2023-09-20 14:03:28', 'True'),
(457, 1, 457, 108571, 180952, 36190.4, '2023-09-20 14:03:28', 'True'),
(458, 1, 458, 108571, 180952, 36190.4, '2023-09-20 14:03:28', 'True'),
(459, 1, 459, 108571, 180952, 36190.4, '2023-09-20 14:03:28', 'True'),
(460, 1, 460, 37350, 62250, 12450, '2023-09-20 14:03:28', 'True'),
(461, 1, 461, 37350, 62250, 12450, '2023-09-20 14:03:28', 'True'),
(462, 1, 462, 37350, 62250, 12450, '2023-09-20 14:03:28', 'True'),
(463, 1, 463, 0, 0, 0, '2023-09-20 14:03:28', 'True'),
(464, 1, 464, 0, 0, 0, '2023-09-20 14:03:28', 'True'),
(465, 1, 465, 0, 0, 0, '2023-09-20 14:03:28', 'True'),
(466, 1, 466, 0, 0, 0, '2023-09-20 14:03:28', 'True'),
(467, 1, 467, 0, 0, 0, '2023-09-20 14:03:28', 'True'),
(468, 1, 468, 0, 0, 0, '2023-09-20 14:03:28', 'True'),
(469, 1, 469, 0, 0, 0, '2023-09-20 14:03:28', 'True'),
(470, 1, 470, 0, 0, 0, '2023-09-20 14:03:28', 'True'),
(471, 1, 471, 0, 0, 0, '2023-09-20 14:03:28', 'True'),
(472, 1, 472, 6225, 10375, 2075, '2023-09-20 14:03:28', 'True'),
(473, 1, 473, 6225, 10375, 2075, '2023-09-20 14:03:28', 'True'),
(474, 1, 474, 6225, 10375, 2075, '2023-09-20 14:03:28', 'True'),
(475, 1, 475, 6358, 10596, 2119.2, '2023-09-20 14:03:28', 'True'),
(476, 1, 476, 6358, 10596, 2119.2, '2023-09-20 14:03:28', 'True'),
(477, 1, 477, 6358, 10596, 2119.2, '2023-09-20 14:03:28', 'True'),
(478, 1, 478, 312, 520, 104, '2023-09-20 14:03:28', 'True'),
(479, 1, 479, 312, 520, 104, '2023-09-20 14:03:28', 'True'),
(480, 1, 480, 312, 520, 104, '2023-09-20 14:03:28', 'True'),
(481, 1, 481, 2106, 3510, 702, '2023-09-20 14:03:28', 'True'),
(482, 1, 482, 2106, 3510, 702, '2023-09-20 14:03:28', 'True'),
(483, 1, 483, 2106, 3510, 702, '2023-09-20 14:03:28', 'True'),
(484, 1, 484, 0, 0, 0, '2023-09-20 14:03:28', 'True'),
(485, 1, 485, 0, 0, 0, '2023-09-20 14:03:28', 'True'),
(486, 1, 486, 0, 0, 0, '2023-09-20 14:03:28', 'True'),
(487, 1, 487, 0, 0, 0, '2023-09-20 14:03:28', 'True'),
(488, 1, 488, 0, 0, 0, '2023-09-20 14:03:28', 'True'),
(489, 1, 489, 0, 0, 0, '2023-09-20 14:03:28', 'True'),
(490, 1, 490, 0, 0, 0, '2023-09-20 14:03:28', 'True'),
(491, 1, 491, 0, 0, 0, '2023-09-20 14:03:28', 'True'),
(492, 1, 492, 0, 0, 0, '2023-09-20 14:03:28', 'True'),
(493, 1, 493, 10140, 16900, 3380, '2023-09-20 14:03:28', 'True'),
(494, 1, 494, 10140, 16900, 3380, '2023-09-20 14:03:28', 'True'),
(495, 1, 495, 10140, 16900, 3380, '2023-09-20 14:03:28', 'True'),
(496, 1, 496, 37440, 62400, 12480, '2023-09-20 14:03:28', 'True'),
(497, 1, 497, 37440, 62400, 12480, '2023-09-20 14:03:28', 'True'),
(498, 1, 498, 37440, 62400, 12480, '2023-09-20 14:03:28', 'True'),
(499, 1, 499, 0, 0, 0, '2023-09-20 14:03:28', 'True'),
(500, 1, 500, 0, 0, 0, '2023-09-20 14:03:28', 'True'),
(501, 1, 501, 0, 0, 0, '2023-09-20 14:03:28', 'True'),
(502, 1, 502, 624, 1040, 208, '2023-09-20 14:03:28', 'True'),
(503, 1, 503, 624, 1040, 208, '2023-09-20 14:03:28', 'True'),
(504, 1, 504, 624, 1040, 208, '2023-09-20 14:03:28', 'True'),
(505, 1, 505, 0, 0, 0, '2023-09-20 14:03:28', 'True'),
(506, 1, 506, 0, 0, 0, '2023-09-20 14:03:28', 'True'),
(507, 1, 507, 0, 0, 0, '2023-09-20 14:03:28', 'True'),
(508, 1, 508, 8744, 14574, 2914.8, '2023-09-20 14:03:28', 'True'),
(509, 1, 509, 8744, 14574, 2914.8, '2023-09-20 14:03:28', 'True'),
(510, 1, 510, 8744, 14574, 2914.8, '2023-09-20 14:03:28', 'True'),
(511, 1, 511, 21869, 36449, 7289.8, '2023-09-20 14:03:28', 'True'),
(512, 1, 512, 21869, 36449, 7289.8, '2023-09-20 14:03:28', 'True'),
(513, 1, 513, 21869, 36449, 7289.8, '2023-09-20 14:03:28', 'True'),
(514, 1, 514, 2700, 4500, 900, '2023-09-20 14:03:28', 'True'),
(515, 1, 515, 2700, 4500, 900, '2023-09-20 14:03:28', 'True'),
(516, 1, 516, 2700, 4500, 900, '2023-09-20 14:03:28', 'True'),
(517, 1, 517, 1383, 2305, 461, '2023-09-20 14:03:28', 'True'),
(518, 1, 518, 1383, 2305, 461, '2023-09-20 14:03:28', 'True'),
(519, 1, 519, 1383, 2305, 461, '2023-09-20 14:03:28', 'True'),
(520, 1, 520, 900, 1500, 300, '2023-09-20 14:03:28', 'True'),
(521, 1, 521, 900, 1500, 300, '2023-09-20 14:03:28', 'True'),
(522, 1, 522, 900, 1500, 300, '2023-09-20 14:03:28', 'True'),
(523, 1, 523, 540, 900, 180, '2023-09-20 14:03:28', 'True'),
(524, 1, 524, 540, 900, 180, '2023-09-20 14:03:28', 'True'),
(525, 1, 525, 540, 900, 180, '2023-09-20 14:03:28', 'True'),
(526, 1, 526, 900, 1500, 300, '2023-09-20 14:03:28', 'True'),
(527, 1, 527, 900, 1500, 300, '2023-09-20 14:03:28', 'True'),
(528, 1, 528, 900, 1500, 300, '2023-09-20 14:03:28', 'True'),
(529, 1, 529, 900, 1500, 300, '2023-09-20 14:03:28', 'True'),
(530, 1, 530, 900, 1500, 300, '2023-09-20 14:03:28', 'True'),
(531, 1, 531, 900, 1500, 300, '2023-09-20 14:03:28', 'True'),
(532, 1, 532, 900, 1500, 300, '2023-09-20 14:03:28', 'True'),
(533, 1, 533, 900, 1500, 300, '2023-09-20 14:03:28', 'True'),
(534, 1, 534, 900, 1500, 300, '2023-09-20 14:03:28', 'True'),
(535, 1, 535, 540, 900, 180, '2023-09-20 14:03:28', 'True'),
(536, 1, 536, 540, 900, 180, '2023-09-20 14:03:28', 'True'),
(537, 1, 537, 540, 900, 180, '2023-09-20 14:03:28', 'True'),
(538, 1, 538, 540, 900, 180, '2023-09-20 14:03:28', 'True'),
(539, 1, 539, 540, 900, 180, '2023-09-20 14:03:28', 'True'),
(540, 1, 540, 540, 900, 180, '2023-09-20 14:03:28', 'True'),
(541, 1, 541, 720, 1200, 240, '2023-09-20 14:03:28', 'True'),
(542, 1, 542, 720, 1200, 240, '2023-09-20 14:03:28', 'True'),
(543, 1, 543, 720, 1200, 240, '2023-09-20 14:03:28', 'True'),
(544, 1, 544, 720, 1200, 240, '2023-09-20 14:03:28', 'True'),
(545, 1, 545, 720, 1200, 240, '2023-09-20 14:03:28', 'True'),
(546, 1, 546, 720, 1200, 240, '2023-09-20 14:03:28', 'True'),
(547, 1, 547, 720, 1200, 240, '2023-09-20 14:03:28', 'True'),
(548, 1, 548, 720, 1200, 240, '2023-09-20 14:03:28', 'True'),
(549, 1, 549, 720, 1200, 240, '2023-09-20 14:03:28', 'True'),
(550, 1, 550, 900, 1500, 300, '2023-09-20 14:03:28', 'True'),
(551, 1, 551, 900, 1500, 300, '2023-09-20 14:03:28', 'True'),
(552, 1, 552, 900, 1500, 300, '2023-09-20 14:03:28', 'True'),
(553, 1, 553, 900, 1500, 300, '2023-09-20 14:03:28', 'True'),
(554, 1, 554, 900, 1500, 300, '2023-09-20 14:03:28', 'True'),
(555, 1, 555, 900, 1500, 300, '2023-09-20 14:03:28', 'True'),
(556, 1, 556, 900, 1500, 300, '2023-09-20 14:03:28', 'True'),
(557, 1, 557, 900, 1500, 300, '2023-09-20 14:03:28', 'True'),
(558, 1, 558, 900, 1500, 300, '2023-09-20 14:03:28', 'True'),
(559, 1, 559, 900, 1500, 300, '2023-09-20 14:03:28', 'True'),
(560, 1, 560, 900, 1500, 300, '2023-09-20 14:03:28', 'True'),
(561, 1, 561, 900, 1500, 300, '2023-09-20 14:03:28', 'True'),
(562, 1, 562, 2880, 4800, 960, '2023-09-20 14:03:28', 'True'),
(563, 1, 563, 2880, 4800, 960, '2023-09-20 14:03:28', 'True'),
(564, 1, 564, 2880, 4800, 960, '2023-09-20 14:03:28', 'True'),
(565, 1, 565, 2880, 4800, 960, '2023-09-20 14:03:28', 'True'),
(566, 1, 566, 2880, 4800, 960, '2023-09-20 14:03:28', 'True'),
(567, 1, 567, 2880, 4800, 960, '2023-09-20 14:03:28', 'True'),
(568, 1, 568, 0, 0, 0, '2023-09-20 14:03:28', 'True'),
(569, 1, 569, 0, 0, 0, '2023-09-20 14:03:28', 'True'),
(570, 1, 570, 0, 0, 0, '2023-09-20 14:03:28', 'True'),
(571, 1, 571, 0, 0, 0, '2023-09-20 14:03:28', 'True'),
(572, 1, 572, 0, 0, 0, '2023-09-20 14:03:28', 'True'),
(573, 1, 573, 0, 0, 0, '2023-09-20 14:03:28', 'True'),
(574, 1, 574, 0, 0, 0, '2023-09-20 14:03:28', 'True'),
(575, 1, 575, 0, 0, 0, '2023-09-20 14:03:28', 'True'),
(576, 1, 576, 0, 0, 0, '2023-09-20 14:03:28', 'True'),
(577, 1, 577, 0, 0, 0, '2023-09-20 14:03:28', 'True'),
(578, 1, 578, 0, 0, 0, '2023-09-20 14:03:28', 'True'),
(579, 1, 579, 0, 0, 0, '2023-09-20 14:03:28', 'True'),
(580, 1, 580, 0, 0, 0, '2023-09-20 14:03:28', 'True'),
(581, 1, 581, 0, 0, 0, '2023-09-20 14:03:28', 'True'),
(582, 1, 582, 0, 0, 0, '2023-09-20 14:03:28', 'True'),
(583, 1, 583, 0, 0, 0, '2023-09-20 14:03:28', 'True'),
(584, 1, 584, 0, 0, 0, '2023-09-20 14:03:28', 'True'),
(585, 1, 585, 0, 0, 0, '2023-09-20 14:03:28', 'True'),
(586, 1, 586, 0, 0, 0, '2023-09-20 14:03:28', 'True'),
(587, 1, 587, 0, 0, 0, '2023-09-20 14:03:28', 'True'),
(588, 1, 588, 0, 0, 0, '2023-09-20 14:03:28', 'True'),
(589, 1, 589, 0, 0, 0, '2023-09-20 14:03:28', 'True'),
(590, 1, 590, 0, 0, 0, '2023-09-20 14:03:28', 'True'),
(591, 1, 591, 0, 0, 0, '2023-09-20 14:03:28', 'True'),
(592, 1, 592, 0, 0, 0, '2023-09-20 14:03:28', 'True'),
(593, 1, 593, 0, 0, 0, '2023-09-20 14:03:28', 'True'),
(594, 1, 594, 0, 0, 0, '2023-09-20 14:03:28', 'True'),
(595, 1, 595, 0, 0, 0, '2023-09-20 14:03:28', 'True'),
(596, 1, 596, 0, 0, 0, '2023-09-20 14:03:28', 'True'),
(597, 1, 597, 0, 0, 0, '2023-09-20 14:03:28', 'True'),
(598, 1, 598, 0, 0, 0, '2023-09-20 14:03:28', 'True'),
(599, 1, 599, 0, 0, 0, '2023-09-20 14:03:28', 'True'),
(600, 1, 600, 0, 0, 0, '2023-09-20 14:03:28', 'True'),
(601, 1, 601, 0, 0, 0, '2023-09-20 14:03:28', 'True'),
(602, 1, 602, 0, 0, 0, '2023-09-20 14:03:28', 'True'),
(603, 1, 603, 0, 0, 0, '2023-09-20 14:03:28', 'True'),
(604, 1, 604, 0, 0, 0, '2023-09-20 14:03:28', 'True'),
(605, 1, 605, 0, 0, 0, '2023-09-20 14:03:28', 'True'),
(606, 1, 606, 0, 0, 0, '2023-09-20 14:03:28', 'True'),
(607, 1, 607, 0, 0, 0, '2023-09-20 14:03:28', 'True'),
(608, 1, 608, 0, 0, 0, '2023-09-20 14:03:28', 'True'),
(609, 1, 609, 0, 0, 0, '2023-09-20 14:03:28', 'True'),
(610, 1, 610, 600, 1000, 200, '2023-09-20 14:03:28', 'True'),
(611, 1, 611, 600, 1000, 200, '2023-09-20 14:03:28', 'True'),
(612, 1, 612, 600, 1000, 200, '2023-09-20 14:03:28', 'True'),
(613, 1, 613, 600, 1000, 200, '2023-09-20 14:03:28', 'True'),
(614, 1, 614, 600, 1000, 200, '2023-09-20 14:03:28', 'True'),
(615, 1, 615, 600, 1000, 200, '2023-09-20 14:03:28', 'True'),
(616, 1, 622, 100, 95, 1.736, '2023-09-20 14:03:28', 'True'),
(617, 1, 621, 51, 45, 1.168, '2023-09-20 14:03:28', 'True'),
(618, 1, 620, 41, 35, 3.096, '2023-09-20 14:03:28', 'True'),
(619, 1, 619, 31, 25, 5.024, '2023-09-20 14:03:28', 'True'),
(620, 1, 618, 26, 20, 5.984, '2023-09-20 14:03:28', 'True'),
(621, 1, 617, 21, 15, 1.952, '2023-09-20 14:03:28', 'True'),
(622, 1, 616, 16, 10, 2.912, '2023-09-20 14:03:28', 'True');

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
-- Table structure for table `tbl_calculation`
--

CREATE TABLE `tbl_calculation` (
  `id` int(11) NOT NULL,
  `sec_cat_name` varchar(25) NOT NULL,
  `calculation` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_calculation`
--

INSERT INTO `tbl_calculation` (`id`, `sec_cat_name`, `calculation`) VALUES
(1, 'siem', 'vmqty,ifw_qty,efw_qty,waf_qty,lbqty,hsm_qty'),
(2, 'vapt', 'vmqty,ifw_qty,efw_qty,waf_qty,lbqty,hsm_qty');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_os_calculation`
--

CREATE TABLE `tbl_os_calculation` (
  `id` int(11) NOT NULL,
  `product_int` varchar(30) NOT NULL,
  `calculation` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_os_calculation`
--

INSERT INTO `tbl_os_calculation` (`id`, `product_int`, `calculation`) VALUES
(1, 'ms_std', 'core_devide = 2'),
(2, 'post_ent', 'core_devide = 1');

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
-- Table structure for table `tbl_region`
--

CREATE TABLE `tbl_region` (
  `id` int(11) NOT NULL,
  `region` varchar(20) NOT NULL,
  `abbrivation` varchar(3) NOT NULL,
  `is_active` enum('True','Flase') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_region`
--

INSERT INTO `tbl_region` (`id`, `region`, `abbrivation`, `is_active`) VALUES
(0, 'All', 'ALL', 'True'),
(1, 'Nashik', 'NSK', 'True'),
(2, 'Mumbai', 'MUM', 'True'),
(3, 'Bangalore', 'BAN', 'True');

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
  `discounted_upfront` int(20) NOT NULL,
  `data` text CHARACTER SET utf8mb4 NOT NULL,
  `prices` text COLLATE utf8_bin NOT NULL,
  `discountdata` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `tbl_saved_estimates`
--

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
-- Table structure for table `tbl_ui_options`
--

CREATE TABLE `tbl_ui_options` (
  `id` int(11) NOT NULL,
  `sec_category_name` varchar(50) NOT NULL,
  `input_num` enum('True','False') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_ui_options`
--

INSERT INTO `tbl_ui_options` (`id`, `sec_category_name`, `input_num`) VALUES
(1, 'archival_storage', 'True'),
(2, 'object_storage', 'True'),
(3, 'block_storage', 'True'),
(4, 'file_storage', 'True'),
(5, 'backup_soft', 'True'),
(6, 'offline_backup', 'True'),
(7, 'ssl_certificate', 'True'),
(8, 'firewall_mgmt', 'False'),
(9, 'utm', 'True'),
(10, 'vtm_scan', 'True'),
(11, 'storage_mgmt', 'True'),
(12, 'backup', 'True'),
(13, 'db_mgmt', 'False'),
(14, 'dr_mng', 'False'),
(15, 'vRAM', 'True'),
(16, 'vCPU', 'True'),
(17, 'siem', 'False'),
(18, 'vapt', 'False'),
(19, 'bandwidth', 'True'),
(20, 'ddos', 'True'),
(21, 'link', 'True'),
(22, 'soar', 'True'),
(23, 'drm', 'True'),
(24, 'waf', 'True'),
(25, 'ifw', 'True'),
(26, 'efw', 'True'),
(27, 'net', 'True'),
(28, 'waf_mgmt', 'True'),
(29, 'hsm', 'True'),
(30, 'dlp', 'True'),
(31, 'vpn', 'True'),
(32, 'pim', 'True'),
(33, 'emagic', 'False'),
(34, 'iam', 'True'),
(35, 'edr', 'True'),
(36, 'dam', 'True'),
(37, 'mfa', 'True'),
(38, 'db', 'False'),
(39, 'os', 'False'),
(40, 'lb_mgmt', 'False'),
(41, 'av', 'False'),
(42, 'os_mgmt', 'False'),
(43, 'lb', 'True'),
(44, 'ip', 'True');

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
-- Indexes for table `product_list`
--
ALTER TABLE `product_list`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`),
  ADD KEY `fkc_region_id` (`region`),
  ADD KEY `prod_int` (`prod_int`),
  ADD KEY `sec_category` (`sec_category`);

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
-- Indexes for table `tbl_calculation`
--
ALTER TABLE `tbl_calculation`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fkc_sec_category_cal` (`sec_cat_name`);

--
-- Indexes for table `tbl_os_calculation`
--
ALTER TABLE `tbl_os_calculation`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fkc_prod_cal` (`product_int`);

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
-- Indexes for table `tbl_region`
--
ALTER TABLE `tbl_region`
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
-- Indexes for table `tbl_ui_options`
--
ALTER TABLE `tbl_ui_options`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fkc_sec_category_ui` (`sec_category_name`);

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
-- AUTO_INCREMENT for table `rate_card_prices`
--
ALTER TABLE `rate_card_prices`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=623;

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
-- AUTO_INCREMENT for table `tbl_calculation`
--
ALTER TABLE `tbl_calculation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_os_calculation`
--
ALTER TABLE `tbl_os_calculation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

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
-- AUTO_INCREMENT for table `tbl_region`
--
ALTER TABLE `tbl_region`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tbl_saved_estimates`
--
ALTER TABLE `tbl_saved_estimates`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `tbl_sector`
--
ALTER TABLE `tbl_sector`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tbl_ui_options`
--
ALTER TABLE `tbl_ui_options`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `visitor_activity_logs`
--
ALTER TABLE `visitor_activity_logs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `login_master`
--
ALTER TABLE `login_master`
  ADD CONSTRAINT `login_master_ibfk_1` FOREIGN KEY (`user_role`) REFERENCES `role_master` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `product_list`
--
ALTER TABLE `product_list`
  ADD CONSTRAINT `fkc_region_id` FOREIGN KEY (`region`) REFERENCES `tbl_region` (`id`);

--
-- Constraints for table `rate_card_prices`
--
ALTER TABLE `rate_card_prices`
  ADD CONSTRAINT `product_fkc` FOREIGN KEY (`prod_id`) REFERENCES `product_list` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `rate_card_fkc` FOREIGN KEY (`rate_card_id`) REFERENCES `tbl_rate_cards` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `role_permissions`
--
ALTER TABLE `role_permissions`
  ADD CONSTRAINT `role_permissions_ibfk_1` FOREIGN KEY (`role_id`) REFERENCES `role_master` (`id`);

--
-- Constraints for table `tbl_calculation`
--
ALTER TABLE `tbl_calculation`
  ADD CONSTRAINT `fkc_sec_category_cal` FOREIGN KEY (`sec_cat_name`) REFERENCES `product_list` (`sec_category`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tbl_os_calculation`
--
ALTER TABLE `tbl_os_calculation`
  ADD CONSTRAINT `fkc_prod_cal` FOREIGN KEY (`product_int`) REFERENCES `product_list` (`prod_int`);

--
-- Constraints for table `tbl_ui_options`
--
ALTER TABLE `tbl_ui_options`
  ADD CONSTRAINT `fkc_sec_category_ui` FOREIGN KEY (`sec_category_name`) REFERENCES `product_list` (`sec_category`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
