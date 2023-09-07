-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 07, 2023 at 03:39 PM
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

--
-- Indexes for dumped tables
--

--
-- Indexes for table `price_list`
--
ALTER TABLE `price_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_pack`
--
ALTER TABLE `tbl_pack`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `price_list`
--
ALTER TABLE `price_list`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=122;

--
-- AUTO_INCREMENT for table `tbl_pack`
--
ALTER TABLE `tbl_pack`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=230;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
