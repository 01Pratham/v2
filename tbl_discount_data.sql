  -- phpMyAdmin SQL Dump
  -- version 5.2.1
  -- https://www.phpmyadmin.net/
  --
  -- Host: 127.0.0.1
  -- Generation Time: Jan 02, 2024 at 06:04 PM
  -- Server version: 10.4.28-MariaDB
  -- PHP Version: 8.2.4

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
  -- Table structure for table `tbl_discount_data`
  --

  CREATE TABLE `tbl_discount_data` (
    `id` int(11) NOT NULL,
    `quot_id` int(11) NOT NULL,
    `discounted_data` text NOT NULL,
    `approved_status` enum('true','false') NOT NULL
  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

  --
  -- Dumping data for table `tbl_discount_data`
  --

  INSERT INTO `tbl_discount_data` (`id`, `quot_id`, `discounted_data`, `approved_status`) VALUES
  (1, 31, '{\"1\":{\"percentage\":0.1,\"Data\":{\"VM0_1\":{\"CPU\":257.35,\"RAM\":266.33,\"Disk\":21.31},\"VM1_1\":{\"CPU\":257.35,\"RAM\":266.33,\"Disk\":7.1},\"win_se_1\":923.28,\"suse_1\":4092.63,\"ms_std_1\":30006.73,\"ms_ent_1\":110794.09,\"backup_age_1\":1775.55,\"drm_tool_1\":9000,\"obj_03_1\":3.55,\"obj_10_1\":21.31,\"obj_1_1\":6143.33,\"obj_3_1\":7.1,\"obj_5_1\":10.65,\"obj_8_1\":17.76,\"block_03_1\":3.55,\"block_10_1\":24573.31,\"block_1_1\":5.33,\"block_3_1\":7.1,\"block_5_1\":10.65,\"block_8_1\":17.76,\"file_03_1\":3.55,\"file_10_1\":21.31,\"file_1_1\":5.33,\"file_3_1\":8191.1,\"file_5_1\":10.65,\"file_8_1\":17.76,\"block_15_1\":16.73,\"block_20_1\":27.81,\"block_25_1\":33.28,\"block_30_1\":51199.55,\"block_40_1\":66.53,\"block_50_1\":88.69,\"block_100_1\":188.05,\"backup_gb_1\":10.65,\"arc_strg_gb_1\":2048,\"tl_1\":31072.06,\"tc_1\":26072.06,\"fc_1\":36072.06,\"speed_band_1\":998.65,\"ccpt_1\":4200,\"mpls_link_1\":0,\"ipsec_vpn_1\":887.77,\"ssl_vpn_1\":532.66,\"av_1\":4261.31,\"dam_1\":85226.23,\"ddos_1\":25892.79,\"dlp_1\":17755.46,\"edr_1\":2272.7,\"efw_1\":29296.52,\"hsm_1\":0,\"iam_1\":1775.55,\"ifw_1\":29296.52,\"mfa_1\":1065.33,\"pim_1\":159.8,\"siem_1\":14914.59,\"soar_1\":1000,\"ssl_certificate_1\":369.31,\"utm_1\":29296.52,\"vapt_1\":6214.41,\"vtm_scan_1\":2663.32,\"waf_1\":0,\"win_mgmt_1\":2663.32,\"suse_mgmt_1\":2663.32,\"ms_db_mgmt_1\":26633.2,\"strg_mgmt_1\":7791.49,\"backup_mgmt_1\":1065.33,\"rep_mgmt_1\":5326.64,\"dr_drill_1\":9765.51,\"lb_mg_1\":2663.32,\"vfirewall_mgmt_1\":7102.19,\"waf_mg_1\":2663.32,\"emagic_1\":6658.3}},\"2\":{\"percentage\":0.2,\"Data\":{\"VM0_2\":{\"CPU\":297.95,\"RAM\":235.22,\"Disk\":6.27},\"centos_2\":0,\"post_ent_2\":114132.83,\"drm_tool_2\":4500,\"obj_03_2\":3.14,\"obj_10_2\":18.82,\"obj_1_2\":4.7,\"obj_3_2\":6.27,\"obj_5_2\":9.41,\"obj_8_2\":15.68,\"block_03_2\":3.14,\"block_10_2\":18.82,\"block_1_2\":4.7,\"block_3_2\":6.27,\"block_5_2\":9.41,\"block_8_2\":15.68,\"file_03_2\":3.14,\"file_10_2\":24570.82,\"file_1_2\":6142.7,\"file_3_2\":6.27,\"file_5_2\":9.41,\"file_8_2\":15.68,\"block_15_2\":13.71,\"block_20_2\":25.79,\"block_25_2\":40947.08,\"block_30_2\":49.14,\"block_40_2\":63.31,\"block_50_2\":87.48,\"block_100_2\":186.25,\"backup_gb_2\":3.14,\"arc_strg_gb_2\":4096,\"tl_2\":27442.56,\"tc_2\":22442.56,\"fc_2\":32442.56,\"speed_band_2\":997.41,\"ccpt_2\":4200,\"mpls_link_2\":0,\"ipsec_vpn_2\":784.07,\"ssl_vpn_2\":470.44,\"av_2\":1411.33,\"dam_2\":75271.02,\"ddos_2\":22868.28,\"dlp_2\":11761.1,\"edr_2\":2007.23,\"efw_2\":25874.41,\"hsm_2\":0,\"iam_2\":1568.15,\"ifw_2\":25874.41,\"mfa_2\":940.89,\"pim_2\":3136.29,\"siem_2\":14113.32,\"soar_2\":1000,\"ssl_certificate_2\":3918.8,\"utm_2\":25874.41,\"vapt_2\":56453.27,\"vtm_scan_2\":2352.22,\"waf_2\":1881.78,\"win_mgmt_2\":2352.22,\"suse_mgmt_2\":2352.22,\"centos_mgmt_2\":2352.22,\"ms_db_mgmt_2\":23522.19,\"post_db_mgmt_2\":11761.1,\"strg_mgmt_2\":902.74,\"backup_mgmt_2\":470.44,\"rep_mgmt_2\":2352.22,\"dr_drill_2\":8624.8,\"lb_mg_2\":2352.22,\"vfirewall_mgmt_2\":6272.59,\"waf_mg_2\":2352.22,\"emagic_2\":5096.48}}}', 'false');

  --
  -- Indexes for dumped tables
  --

  --
  -- Indexes for table `tbl_discount_data`
  --
  ALTER TABLE `tbl_discount_data`
    ADD PRIMARY KEY (`id`),
    ADD KEY `estmt_fkc` (`quot_id`);

  --
  -- AUTO_INCREMENT for dumped tables
  --

  --
  -- AUTO_INCREMENT for table `tbl_discount_data`
  --
  ALTER TABLE `tbl_discount_data`
    MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

  --
  -- Constraints for dumped tables
  --

  --
  -- Constraints for table `tbl_discount_data`
  --
  ALTER TABLE `tbl_discount_data`
    ADD CONSTRAINT `estmt_fkc` FOREIGN KEY (`quot_id`) REFERENCES `tbl_saved_estimates` (`id`);
  COMMIT;

  /*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
  /*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
  /*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
