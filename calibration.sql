-- phpMyAdmin SQL Dump
-- version 3.2.4
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Feb 24, 2016 at 09:28 AM
-- Server version: 5.1.41
-- PHP Version: 5.3.1

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `calibration`
--

-- --------------------------------------------------------

--
-- Table structure for table `calibration_qa`
--

CREATE TABLE IF NOT EXISTS `calibration_qa` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cs_code` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `manufacturer` varchar(255) NOT NULL,
  `model_number` varchar(255) NOT NULL,
  `serial_number` varchar(255) NOT NULL,
  `date_calibration` date NOT NULL,
  `next_calibration` varchar(255) NOT NULL,
  `frequency` int(11) NOT NULL,
  `tolerance` varchar(255) NOT NULL,
  `location` varchar(255) NOT NULL,
  `remarks` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `calibration_hour` int(11) NOT NULL,
  `calibration_by` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL,
  `con_sign` varchar(255) NOT NULL,
  `asset_number` int(11) NOT NULL,
  `grr_request` varchar(255) NOT NULL,
  `grr_due` varchar(255) NOT NULL,
  `grr` varchar(255) NOT NULL,
  `grr_date` varchar(255) NOT NULL,
  `grr_personnel` varchar(255) NOT NULL,
  `grr_character` varchar(255) NOT NULL,
  `imt_performance` varchar(255) NOT NULL,
  `rep_number` varchar(255) NOT NULL,
  `recalibration_update` varchar(255) NOT NULL,
  `date_create` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `cs_code` (`cs_code`),
  KEY `date_calibration` (`date_calibration`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=223 ;

--
-- Dumping data for table `calibration_qa`
--

INSERT INTO `calibration_qa` (`id`, `cs_code`, `description`, `manufacturer`, `model_number`, `serial_number`, `date_calibration`, `next_calibration`, `frequency`, `tolerance`, `location`, `remarks`, `owner`, `calibration_hour`, `calibration_by`, `status`, `con_sign`, `asset_number`, `grr_request`, `grr_due`, `grr`, `grr_date`, `grr_personnel`, `grr_character`, `imt_performance`, `rep_number`, `recalibration_update`, `date_create`) VALUES
(1, '15SPT01', 'STUD PULL TESTER', 'SEBASTIAN', 'SEB III', '091040', '2016-02-23', '8/29/2001', 210, '3%', 'QA FOL', 'IN-ACTIVE', 'QA/MCAN', 3, '2028', 'AAA', 'TEAM', 1010, 'YES', '8/29/2001', '1.1700', '1/31/2001', 'J.AVENIDO', 'STUD PULL STREN', 'In-active due to no calibration use', '', '', '11/29/2006'),
(2, '14SFG01', 'SYNTHESIZER FUNCTION GENERATOR', 'HP', '3325A', '2512A19997', '2016-02-24', '8/10/1999', 0, '', 'CAL LAB', 'SERVICE', 'STANDARD', 0, 'HP', '***', 'TEAM', 1183, 'N/A', '', '0.0000', '', '', '', 'Service only: Output is verified by Oscilloscope and 3456A Voltmeter', '', '2/23/2006', ''),
(3, '15CC01', 'CONDUCTIVITY CONT''L', 'HANNA INS.', 'WM8930', '59509', '2016-02-25', '7/14/1998', 180, '', 'DIE PREP', 'IN-ACTIVE', 'LOGISTICS', 0, '', '***', 'TEAM', 0, 'N/A', '', '0.0000', '', '', '', 'Please enter current performance', '', '', ''),
(4, '15DG05', 'DEPTH GAUGE', 'BATY', 'C16F/BGP2', '6064', '2016-02-26', '', 0, '', 'DIE BANK', 'SERVICE', 'LOGISTICS', 0, '', '***', 'TEAM', 0, 'N/A', '', '0.0000', '', '', '', 'Please enter current performance', '', '', ''),
(5, '15SP02', 'PIND STU PULSER', 'DUNEGAN ENDEVCO', 'XP-STU', '0002', '2016-02-27', '1/5/1998', 365, '20%', 'MCAN', 'IN-ACTIVE', 'QA/MCAN', 0, '', '***', 'TEAM', 0, 'N/A', '', '0.0000', '', '', '', 'Please enter current performance', '', '', ''),
(6, '15PP01', 'PROFILE PROJECTOR', 'NIKON', '6C-2', '55114', '2016-02-28', '6/9/2003', 180, '', '4TH OPT', 'DEFECTIVE', 'QA/PDIP', 2, '6289', '**A', 'TEAM', 0, 'YES', '6/9/2003', '40.3800', '4/22/2003', 'R.SAVA', 'COPLANARITY', 'within tolerance', '', '', ''),
(7, '15ITF01', 'INSULATING TEST FIXTURE', 'NSTU', '70571000', '0001', '2016-02-29', '12/18/2000', 365, '', 'IQC', 'SERVICE', 'CALIBRATION', 5, '5328', '***', 'TEAM', 0, 'N/A', '12/18/2000', '0.0000', '12/19/1999', '', '', 'Service only as of 19 Dec 1999', '', '11/13/2004', ''),
(8, '14OPC01', 'PRECISION CALIBRATOR', 'OMEGA ENG''G', 'CL-505A', '86690567', '2016-02-24', '9/9/2005', 365, '', 'CAL LAB', 'DEFECTIVE', 'STANDARD', 6, '3803', 'AAA', 'TEAM', 1156, 'N/A', '9/9/2002', '0.0000', '9/8/2001', '', '', 'input/ouput error display;defective/malfunctioning microprocessor board', '2004-99.57281', '9/15/2005', ''),
(9, '14STU01', 'PIND STU TRANSDUCER', 'DUNEGAN', 'S140BM', 'A770', '2016-02-25', '11/5/2002', 365, '-77.5DB+3', 'CAL LAB', 'IN-ACTIVE', 'STANDARD', 0, 'PTI', '***', 'TEAM', 0, 'N/A', '', '0.0000', '', '', '', 'Within tolerance,Received on 16 November 2001, Report# 7204', '', '8/16/2004', ''),
(10, '14VGK01', 'ELECTRICAL VACUUM GAUGE', 'H.RAYDIST', 'VT-4', '58203', '2016-02-26', '3/3/2001', 330, '3%FSD', 'CAL LAB', 'IN-ACTIVE', 'STANDARD', 0, 'TTECH', '***', 'TEAM', 1179, 'N/A', '', '0.0000', '', '', '', 'Status B, Work Order No. I0003410-0', '', '8/27/2004', ''),
(11, '14SW13', '1MG-100G STD WEIGHTS', 'OHAUS', '1MG-100G', 'MC417325', '2016-02-27', '8/17/2000', 365, '', 'CAL LAB', 'IN-ACTIVE', 'STANDARD', 0, 'ITDI', '***', 'TEAM', 0, 'N/A', '', '0.0000', '', '', '', 'Please enter current performance', '', '8/16/2004', ''),
(12, '14DR02', 'DECADE RESISTOR', 'GENRAD', '1433-G', '33517', '2016-02-27', '12/17/1999', 730, '', 'CAL LAB', 'IN-ACTIVE', 'STANDARD', 0, 'PSB', '***', 'TEAM', 1145, 'N/A', '', '0.0000', '', '', '', 'Please enter current performance', '', '8/16/2004', ''),
(13, '14PPG02', 'PROG PULSE GENERATOR', 'HP', '8160A', '2547A01513', '2016-02-24', '2/2/2000', 0, '1%', 'CAL LAB', 'SERVICE', 'STANDARD', 8, '3803', '***', 'TEAM', 1134, 'N/A', '', '0.0000', '', '', '', 'Service Only: Output is verified by Oscilloscope', '', '', ''),
(14, '15DTH02', 'DIGITAL THERMOMETER', 'ANRITSU', 'HL610', 'V16379', '2016-02-24', '7/7/2001', 180, '5°C', 'QAMCAN/EOL', 'IN-ACTIVE', 'QA/MCAN', 2, '2028', '***', 'TEAM', 0, 'N/A', '7/7/2001', '3.1700', '1/9/2001', 'CRIS VALEROS', 'TEMPERATURE', 'in-active as of 06 July 2001', '', '', ''),
(15, '14SW01', 'HOOK WEIGHT SET', 'OHAUS', 'N/A', '46206-01', '2016-02-26', '4/4/1999', 730, '', 'CAL LAB', 'IN-ACTIVE', 'STANDARD', 0, 'ITDI', '***', 'TEAM', 0, 'N/A', '', '0.0000', '', '', '', 'Please enter current performance', '', '8/16/2004', ''),
(16, '14SS01', 'STATIC SENSOR', '3M', '709', 'SS891', '2016-02-25', '2/12/1999', 365, '', 'PDIP', 'IN-ACTIVE', 'STANDARD', 0, '3M', '***', 'TEAM', 1004, 'N/A', '', '0.0000', '', '', '', 'Please enter current performance', '', '', ''),
(17, '14SS04', 'STATIC SENSOR', '3M', '709', 'SS9656', '2016-02-25', '6/6/2000', 365, '', 'QA/IQC', 'IN-ACTIVE', 'QA/IQC', 0, '3M', '***', 'TEAM', 1005, 'N/A', '', '0.0000', '', '', '', 'Please enter current performance', '', '8/16/2004', ''),
(18, '15SO12', 'DIGITIZING STORAGE OSCILLOCOPE', 'TEKTRONIX', '468', '708026', '2016-02-27', '5/24/1996', 365, '', 'CAL LAB', 'IN-ACTIVE', 'CALIBRATION', 0, '', '***', 'TEAM', 1153, 'N/A', '', '0.0000', '', '', '', 'Please enter current performance', '', '', ''),
(19, '12ACC01', 'AC CALIBRATOR', 'FLUKE', '52004', '3735016', '2016-02-26', '3/26/1998', 730, '200PPM', 'CAL LAB', 'IN-ACTIVE', 'STANDARD', 0, '', '***', 'TEAM', 1137, 'N/A', '', '0.0000', '', '', '', 'Please enter current performance', '', '', ''),
(20, '11ACR01', 'AC REFERENCE STANDARD', 'FLUKE', '510A', '3770002', '2016-02-24', '2/3/1999', 730, '', 'CAL LAB', 'IN-ACTIVE', 'STANDARD', 0, 'SISIR', '***', 'TEAM', 1137, 'N/A', '', '0.0000', '', '', '', 'Please enter current performance', '', '', '11/29/2006'),
(21, '11DCR01', 'DC REFERENCE STANDARD', 'FLUKE', '732A', '3705024', '1998-03-27', '3/26/2000', 730, '0.5PPM', 'CAL LAB', 'IN-ACTIVE', 'STANDARD', 0, '', '***', 'TEAM', 1131, 'N/A', '', '0.0000', '', '', '', 'Please enter current performance', '', '', ''),
(22, '13HIV01', 'HIGH IMPEDANCE VOLTMETER', 'FLUKE', '845AB', '37300013', '1998-10-02', '10/2/1999', 365, '', 'CAL LAB', 'IN-ACTIVE', 'STANDARD', 3, 'TPC', '***', 'TEAM', 1139, 'N/A', '', '0.0000', '', '', '', 'Please enter current performance', '', '', ''),
(23, '12PPA01', 'PRECISION POWER AMPLIFIER', 'FLUKE', '5215A', '3690013', '1996-03-26', '3/26/1998', 730, '200PPM', 'CAL LAB', 'IN-ACTIVE', 'STANDARD', 0, '', '***', 'TEAM', 1138, 'N/A', '', '0.0000', '', '', '', 'Please enter current performance', '', '', ''),
(24, '14CC01', 'PIND CALIBRATION CAPACITOR', 'PIND TESTER INC', '4501-CALCA', 'D1049', '2001-11-26', '11/26/2003', 730, '', 'CAL LAB', 'IN-ACTIVE', 'STANDARD', 0, 'PTI', '***', 'TEAM', 0, 'N/A', '', '0.0000', '', '', '', 'Report# 7241, Within tolerance, Received : 03 January 2002', '', '5/25/2005', ''),
(25, '14CS02', 'CAPACITOR STANDARD', 'GENRAD', '1417', '437', '1998-05-06', '5/6/1999', 365, '1%', 'CAL LAB', 'IN-ACTIVE', 'STANDARD', 0, 'PTI', '***', 'TEAM', 1186, 'N/A', '', '0.0000', '', '', '', 'Please enter current performance', '', '', ''),
(26, '13LC01', 'LEAD COMPENSATOR', 'FLUKE', '721A', '3645005', '1993-09-14', '9/14/1994', 365, '', 'CAL LAB', 'IN-ACTIVE', 'STANDARD', 0, '', '***', 'TEAM', 1152, 'N/A', '', '0.0000', '', '', '', 'Please enter current performance', '', '', ''),
(27, '13RD01', 'REFERENCE DIVIDER', 'FLUKE', '752A', '3703015', '1993-09-14', '9/14/1994', 365, '', 'CAL LAB', 'IN-ACTIVE', 'STANDARD', 0, '', '***', 'TEAM', 1136, 'N/A', '', '0.0000', '', '', '', 'Please enter current performance', '', '', ''),
(28, '14SI02', 'STANDARD 100 MH INDUCTOR', 'GENRAD', '1482-L', '20415', '1996-11-25', '11/25/1996', 0, '±1%', 'CAL LAB', 'IN-ACTIVE', 'STANDARD', 0, 'GENRA', '***', 'TEAM', 1160, 'N/A', '', '0.0000', '', '', '', 'Please enter current performance', '', '11/20/2008', ''),
(29, '14DC01', 'PRECISION DECADE CAPACITOR', 'GENRAD', '1413', '1309', '1998-03-05', '3/4/2003', 1825, '.05%+0.5PF', 'CAL LAB', 'IN-ACTIVE', 'STANDARD', 0, 'GENRA', '***', 'TEAM', 1158, 'N/A', '', '0.0000', '', '', '', 'Please enter current performance', '', '', ''),
(30, '14PA01', 'POCKET ANEMOMETER', 'KURZ INST', '480', 'P-2002', '1998-05-08', '11/4/1999', 545, '', 'AUDIT', 'IN-ACTIVE', 'STANDARD', 0, 'KURZ', '***', 'TEAM', 1166, 'N/A', '', '0.0000', '', '', '', 'Please enter current performance', '', '', ''),
(31, '14PGK03', 'COMPOUND TEST GAUGE', 'MARSH', '480363-1', '210C-133', '1996-08-15', '8/15/1997', 365, '', 'CAL LAB', 'IN-ACTIVE', 'STANDARD', 0, 'SISIR', '***', 'TEAM', 0, 'N/A', '', '0.0000', '', '', '', 'Please enter current performance', '', '8/16/2004', ''),
(32, '14PGK02', 'COMPOUND TEST GAUGE', 'MARSH', 'BOURDON', '6957-12', '2000-05-25', '5/25/2001', 365, '', 'CAL LAB', 'IN-ACTIVE', 'STANDARD', 0, '3803', '***', 'TEAM', 1178, 'N/A', '', '0.0000', '', '', '', 'In-active, for calibration', '', '8/16/2004', ''),
(33, '14SG01', 'SIGNAL GENERATOR', 'HP', '8654A', '2132A03749', '1996-06-10', '6/10/1998', 730, '3%', 'CAL LAB', 'IN-ACTIVE', 'STANDARD', 0, 'HP', '***', 'TEAM', 0, 'N/A', '', '0.0000', '', '', '', 'Please enter current performance', '', '', ''),
(34, '14SI01', 'STANDARD 100 MH INDUCTOR', 'GEN. RADIO', '1482-L', '104142005', '1996-01-15', '1/14/1998', 730, '0.1%', 'CAL LAB', 'IN-ACTIVE', 'STANDARD', 0, '', '***', 'TEAM', 1159, 'N/A', '', '0.0000', '', '', '', 'Please enter current performance', '', '8/18/2004', ''),
(35, '14SIM01', 'PIND S140 SIMULATOR', 'PIND TESTER INC', '4501-S140', 'E1085', '2001-11-26', '11/26/2003', 730, '-59.5DB', 'CAL LAB', 'IN-ACTIVE', 'STANDARD', 0, 'PTI', '***', 'TEAM', 0, 'N/A', '8/22/2001', '0.0000', '8/23/1999', '', '', 'Report# 7241, Within tolerance, Received : 03 January 2002', '', '8/16/2004', ''),
(36, '14SP01', 'SPECTRA PHOTOMETER', 'PHOTO RES.', 'FC-200', '011-737', '1995-06-16', '6/15/1997', 730, '', 'CAL LAB', 'IN-ACTIVE', 'STANDARD', 0, '', '***', 'TEAM', 1175, 'N/A', '', '0.0000', '', '', '', 'Please enter current performance', '', '', ''),
(37, '14SR01', 'STANDARD RESISTOR', 'VICO', 'M0X1125-2', '01', '1998-01-02', '1/2/1999', 365, '', 'CAL LAB', 'IN-ACTIVE', 'STANDARD', 0, '', '***', 'TEAM', 0, 'N/A', '', '0.0000', '', '', '', 'Please enter current performance', '', '', ''),
(38, '14SS02', 'STATIC SENSOR', '3M', '709', '9763S', '1997-08-05', '8/5/1998', 365, '', 'CAL LAB', 'IN-ACTIVE', 'QA/MCAN', 0, '3M', '***', 'TEAM', 0, 'N/A', '', '0.0000', '', '', '', 'Please enter current performance', '', '8/16/2004', ''),
(39, '14SS03', 'STATIC SENSOR', '3M', '709', '964S', '2000-08-20', '8/20/2001', 365, '', 'CAL LAB', 'IN-ACTIVE', 'STANDARD', 0, '3M', '*AA', 'TEAM', 1003, 'N/A', '', '0.0000', '', '', '', 'Please enter current performance', '', '8/16/2004', ''),
(40, '16RLC01', 'LCR DIGIBRIDGE', 'GENRAD', '1658', '1873', '2002-08-08', '2/4/2003', 180, '1%', 'CAL LAB', 'IN-ACTIVE', 'QA/IQC', 3, '3803', '***', 'TEAM', 552, 'N/A', '', '0.0000', '1/10/2001', '', '', 'No particular use as of date activated (as per request of A.Malabuyoc)', '', '', ''),
(41, '15PTM01', 'PIND OSCILLOSCOPE MONITOR', 'LEADER', 'LBO-51MA', '1072109', '1970-01-01', '', 0, '', 'CAL LAB', 'IN-ACTIVE', 'QA/MCAN', 0, '', '***', 'TEAM', 0, 'N/A', '', '0.0000', '', '', '', 'Please enter current performance', '', '', ''),
(42, '15AWS01', 'ANALOG POUND WEIGHTS', 'SUNBEAM', '39360', '960712', '1999-06-02', '11/29/1999', 180, '°C', 'STORES', 'MISSING', 'LOGISTICS', 4, '5198', '***', 'TEAM', 0, 'N/A', '', '0.0000', '', '', '', 'Please enter current performance', '', '', ''),
(43, '14SW04', '10-1000G STD WEIGHTS', 'OHAUS', '10-1000G', '0091', '1999-08-18', '1/17/2004', 365, '', 'CAL LAB', 'IN-ACTIVE', 'STANDARD', 0, 'ITDI', '***', 'TEAM', 0, 'N/A', '', '0.0000', '', '', '', 'Please enter current performance', '', '8/16/2004', ''),
(44, '14SS06', 'STATIC SENSOR', '3M', '709', 'SS8891', '1998-02-12', '2/12/1999', 365, '', 'IQC LAB', 'IN-ACTIVE', 'STANDARD', 0, '3M', '***', 'TEAM', 0, 'N/A', '', '0.0000', '', '', '', '', '', '8/16/2004', ''),
(45, '15DG03', 'DIAL GAUGE', 'MITUTOYO', '513-206', '340024', '2001-07-06', '1/4/2002', 180, '', 'ASPM', 'IN-ACTIVE', 'CALIBRATION', 2, '3803', '***', 'TEAM', 0, 'N/A', '1/4/2002', '0.0000', '7/6/2001', '', '', 'In-active as of 08 Jan. 2002 due to no production', '', '', ''),
(46, 'Q3TM001', 'GRALAB TIMER', 'DIMCO GRAY', '506', '60588040018', '2015-08-18', '8/17/2016', 365, '±5%', 'QA/WETLAB', 'ACTIVE', 'QA/MCAN', 2, '8553', 'AAA', 'TEAM', 0, 'N/A', '', '0.0000', '', '', '', 'within tolerance', '2015-188.45969', '8/20/2015', '4/24/1998'),
(47, 'Q2DST001', 'DIE SHEAR TESTER', 'ANZA TECH', '520D', '909', '2015-10-15', '8/15/2016', 304, '±50 GRAMS', 'QA STATION', 'ACTIVE', 'QA/MCAN', 4, '8553', 'AAB', 'TEAM', 1012, 'YES', '8/15/2016', '0.7300', '10/16/2015', 'A.GUZMAN', 'TENSION STRENGT', 'Within tolerance', '2015-1510.40209', '10/16/2015', '1/31/2000'),
(48, 'Q2FOG001', 'FORCE GAUGE', 'CHATILLON', 'DFIS10', 'DFI037154', '2012-10-26', '10/25/2013', 365, '±0.010 KG', 'PDIP FOL', 'FOR REPAIR', 'CALIBRATION', 3, '8072', 'AAA', 'TEAM', 0, 'YES', '10/25/2013', '3.4200', '10/26/2012', 'R.MACASILHIG', 'STD WEIGHTS', 'Within tolerance', '2012-2610.54218', '10/31/2013', '9/24/2001'),
(49, 'Q1VG001', 'ELECTRICAL VACUUM GAUGE', 'H.RAYDIST', 'VT-4', '38302', '2011-03-22', '3/22/2012', 365, '±3%FSD', 'CAL LAB', 'IN-ACTIVE', 'STANDARD', 0, 'CAL,I', 'AAA', 'TEAM', 425, 'N/A', '2/1/2003', '0.0000', '2/1/2002', '', '', 'Received: 08 April 2011', '2011-223.33243', '7/3/2013', ''),
(50, 'Q2CP001', 'DIGITAL CALIPER', 'MITUTOYO', 'CD-6"CS', '03066402', '2011-09-16', '9/14/2012', 365, '±0.01 MM', 'IQC AREA', 'IN-ACTIVE', 'QA/IQC', 2, '3803', 'AAA', 'TEAM', 0, 'YES', '9/14/2012', '2.1000', '9/16/2011', 'G.PANGANIBAN', 'DIMENSIONAL', 'Within Tolerance', '2011-169.52326', '9/18/2012', ''),
(51, 'Q2BST001', 'ROYCE BONDSHEAR TESTER MODULE', 'ROYCE INST', 'ASTM-5K', '9512221', '2016-02-01', '10/31/2016', 273, '±15 GRAMS', 'FOL/QA', 'ACTIVE', 'QA/PDIP', 3, '8553', 'AAB', 'TEAM', 1008, 'YES', '10/31/2016', '0.1600', '2/1/2016', 'KHALI BASINANG', 'BOND SHEAR', 'Within tolerance', '2016-12.56346', '2/1/2016', '10/25/2000'),
(52, 'Q1PSM001', 'PSYCHRON METER', 'BELFORT', '566-2', '87-4004', '2016-01-08', '1/8/2017', 365, '±0.3°F', 'FACILITIES', 'ACTIVE', 'CALIBRATION', 0, 'MIRDC', 'AAA', 'TEAM', 1170, 'N/A', '', '0.0000', '', '', '', 'Referr to Certificate No.2015-1-1282A-45.', '2016-81.59828', '1/21/2016', ''),
(53, 'Q2TM001', 'GRALAB TIMER', 'DIMCO-GRAY', '600', '0026150', '2015-11-04', '11/3/2016', 365, '±0.25%', 'CAL LAB', 'ACTIVE', 'CALIBRATION', 2, '8553', 'AAA', 'TEAM', 1162, 'N/A', '', '0.0000', '', '', '', 'Within tolerance', '2015-411.55238', '11/9/2015', '5/31/1984'),
(54, 'Q2XRF001', 'X-RAY FLUORESCENCE', 'FISCHER', 'XDVM', '06845423', '2010-04-27', '1/25/2011', 273, '±5%', 'IQC AREA', 'SCRAP', 'QA/IQC', 5, '3803', 'AAA', 'TEAM', 116, 'YES', '1/25/2011', '7.2100', '4/27/2010', 'G.IBBARIENTOS', 'COATING THICKNE', 'Within tolerance', '2010-274.53671', '1/25/2011', '7/25/2007'),
(55, 'Q1RS001', 'RESISTANCE SIMULATOR', 'CULLIGAN', 'QM-1', '0099', '2015-10-02', '9/30/2016', 365, '±1%', 'CAL LAB', 'ACTIVE', 'STANDARD', 2, '8553', 'AAA', 'TEAM', 0, 'N/A', '', '0.0000', '', '', '', '10M [BLK] Simulator for Thorton resistivity meter; Within tolerance', '2015-210.44877', '10/2/2015', '12/2/2003'),
(56, 'Q2HRM001', 'HIGH RESISTANCE METER', 'HEWLETT PACKARD', '4329A', '2111J05255', '2015-08-21', '8/19/2016', 365, '±3%', 'IQC', 'ACTIVE', 'QA/IQC', 4, '8553', 'AAA', 'TEAM', 1127, 'N/A', '', '0.0000', '', '', '', 'Within Tolerance', '2015-218.42891', '8/21/2015', '10/29/1991'),
(57, 'Q2CP002', 'DIGITAL CALIPER', 'MITUTOYO', 'CD-6"CS', '03043423', '2013-03-13', '3/13/2014', 365, '±0.001"', 'QA/MOLD', 'SCRAP', 'QA/PDIP', 2, '3803', 'AAA', '', 0, 'N/A', '3/12/2013', '1.8400', '3/12/2012', 'E.MANALANSAN', 'DIMENSIONAL', 'Within tolerance', '2013-133.31937', '2/28/2014', '11/20/2006'),
(58, 'Q2TG001', 'THICKNESS GAUGE', 'MITUTUYO', '2046-08', '7301', '2007-01-04', '8/3/2007', 212, '.01MM', 'DIE BANK', 'IN-ACTIVE', 'QA/IQC', 2, '6289', 'AAA', 'TEAM', 0, 'N/A', '11/22/2002', '0.0000', '5/27/2002', '', '', 'within tolerance/ in-active as of 04 Aug 2006', '2007-41.67105', '8/6/2007', ''),
(59, 'Q2MM001', 'MICROMETER', 'MITUTOYO', 'M830-25-1"', '159-101', '2015-11-25', '11/25/2016', 365, '±0.001"', 'CAL', 'ACTIVE', 'CALIBRATION', 2, '8553', 'AAA', '', 0, 'N/A', '11/26/2003', '0.0000', '11/26/2003', '', '', 'within tolerance', '2015-2511.63202', '11/25/2015', '11/26/2003'),
(60, 'Q1DR001', 'DECADE RESISTOR', 'GENRAD', '1433-G', '31098', '2015-10-31', '10/31/2016', 365, '0.01%+.2', 'CAL LAB', 'ACTIVE', 'STANDARD', 8, '8553', 'AAA', 'TEAM', 1144, 'N/A', '12/12/2001', '0.0000', '6/15/2001', '', '', 'Applicable for Standard resistance', '2015-3110.51971', '11/4/2015', '7/5/1983'),
(61, 'Q2PIS001', 'PIND TEST CONTROLLER', 'PTI', '4501', 'A005484', '2015-11-11', '5/11/2016', 182, 'TCS-5008', 'CAL LAB', 'ACTIVE', 'QA/MCAN', 16, '8553', 'AAA', 'TEAM', 449, 'N/A', '', '0.0000', '', '', '', 'System matched with Q2PPS004 with Serial No. C3926 and M230 shaker', '2015-1111.67925', '11/12/2015', '1/29/1999'),
(62, 'Q2PTM001', 'PIND OSCILLOSCOPE MONITOR', 'LEADER', 'LBO-51MA', '0060091', '2009-09-25', '4/25/2010', 182, '', 'Q2PIS001', 'FOR REPAIR', 'QA/MCAN', 0, '3803', 'AAA', 'TEAM', 0, 'N/A', '', '0.0000', '', '', '', 'No adjustment of Y-axis is required; Refer to Q2PIS001 record', '2009-259.39902', '10/25/2012', ''),
(63, 'Q1VG002', 'VACUUM GAUGE', 'CPI', '0-760MMHG', '0428', '2004-12-08', '2/8/2006', 365, '± °C', 'CAL LAB', 'DEFECTIVE', 'STANDARD', 0, 'ITDI', 'NEW', '', 0, 'N/A', '1/7/2005', '0.0000', '1/7/2005', '', '', 'defective', '2004-812.37101', '3/8/2006', ''),
(64, 'Q2WPT001', 'ROYCE WIREPULL TESTER MODULE', 'ROYCE INST', 'RPTM-2K', '9307122', '2015-10-19', '6/17/2016', 242, '±4 GRAMS', 'ROYCE-02', 'IN-ACTIVE', 'QA/PDIP', 3, '8553', 'AAB', 'TEAM', 1015, 'YES', '6/17/2016', '0.7100', '10/19/2015', 'REMZHEL MATIAS', 'WIRE PULL', 'Within tolerance', '2015-1910.44040', '10/19/2015', '7/13/1994'),
(65, 'Q2BST002', 'ROYCE BONDSHEAR TESTER MODULE', 'ROYCE INST.', 'ASTM-5K', '9501252', '2013-07-30', '3/28/2014', 242, '±15 GRAMS', 'FOL/R-002', 'IN-ACTIVE', 'QA/PDIP', 3, '3803', 'AAC', 'TEAM', 1014, 'YES', '3/28/2014', '0.0900', '7/30/2013', 'E. MANALANSAN', 'BOND SHEAR TEST', 'Repair transducer alignment; Adjusted AD System and Internal Reference', '2013-307.56728', '2/17/2015', '9/12/2002'),
(66, 'Q2MUM002', 'DIGITAL MULTIMETER', 'TECHMASTER', 'DM-8600', '5009966', '2015-04-06', '4/5/2016', 365, 'OEM', 'QA/FA', 'ACTIVE', 'QA/FA', 2, '8553', 'AAA', 'TEAM', 0, 'N/A', '', '0.0000', '', '', '', 'Within tolerance', '2015-64.58962', '4/6/2015', '6/13/1996'),
(67, 'Q2TCC001', 'THERMOCOUPLE CALIBRATOR', 'ALTEK', '322-1', '154618', '2015-06-25', '6/24/2016', 365, '±2.5°C', 'CAL LAB', 'ACTIVE', 'CALIBRATION', 2, '8553', 'AAA', 'TEAM', 0, 'N/A', '', '0.0000', '', '', '', 'Within tolerance/ limited to temperature only', '2015-256.64611', '6/25/2015', '1/28/1995'),
(68, 'Q2CM001', 'CONDUCTIVITY METER', 'JAMES G.', 'MARK IV', 'C2949', '2007-04-21', '12/19/2007', 242, '1%', 'IQC', 'IN-ACTIVE', 'QA/IQC', 3, '6289', 'AAA', 'TEAM', 0, 'N/A', '12/10/2001', '0.0000', '6/13/2001', '', '', 'Within tolerance/ in-active', '2007-214.55634', '4/27/2007', ''),
(69, 'Q3PFT001', 'PRE-BURN IN FUNCTIONAL TESTER', 'N/A', 'N/A', '37272-5416', '2006-08-19', '3/19/2007', 212, '', 'QA/EOL', 'SERVICE', 'QA/MCAN', 2, '6289', 'AAA', 'TEAM', 0, 'N/A', '', '0.0000', '', '', '', 'requested for service only', '2006-198.36509', '8/30/2006', ''),
(70, 'Q2CP003', 'CALIPER', 'MITUTOYO', 'CD-6"CS', '03118771', '2014-02-20', '2/20/2015', 365, '±0.001"', 'QA-MCAN', 'IN-ACTIVE', 'QA/IQC', 2, '3803', 'AAA', '', 0, 'N/A', '8/22/2014', '15.4700', '2/21/2014', 'HAZEL CRUZADO', 'DIMENSION', 'Within tolerance; Failed with GRR', '2014-202.33890', '5/9/2014', '1/21/2004'),
(71, 'Q2TMM001', 'DIGITAL THERMOMETER', 'OMEGA ENG.', 'HH-602', '111216', '2007-01-09', '8/9/2007', 212, '±2°C', 'QA/TINDIP', 'DEFECTIVE', 'QA/PDIP', 3, '6289', 'AAA', '', 0, 'YES', '8/9/2007', '9.9300', '1/13/2007', 'GINA SAVA', 'SOLDER POT TEMP', 'DEFECTIVE POWER/ for scrap as of 29 aug 2007', '2007-91.35048', '9/1/2007', ''),
(72, 'Q3SW001', 'STOP WATCH', 'CASIO', 'HS-10W', '4Y112A', '2015-07-21', '7/20/2016', 365, '±1% READNG', 'QA/TINDIP', 'ACTIVE', 'QA/PDIP', 2, '8553', 'AAA', 'TEAM', 0, 'N/A', '2/26/2002', '0.0000', '2/26/2001', '', '', 'Within tolerance', '2015-217.47911', '7/21/2015', '3/1/1993'),
(73, 'Q2STP001', 'PIND STU PULSER', 'PIND TESTER INC', 'XP-STU', 'A-009349', '2015-10-28', '10/27/2016', 365, '±20%', 'CAL LAB', 'ACTIVE', 'CALIBRATION', 1, '8553', 'AAA', 'TEAM', 0, 'N/A', '', '0.0000', '', '', '', 'Within tolerance', '2015-2810.48572', '10/28/2015', '8/13/1991'),
(74, 'Q2WT001', 'LEAD FATIGUE WEIGHTS', 'TPG', '30Z', '01003', '2008-01-09', '10/7/2008', 272, '2%', 'IQC', 'IN-ACTIVE', 'QA/IQC', 1, '6289', 'AAA', 'TEAM', 0, 'N/A', '', '0.0000', '', '', '', 'For IN-ACTIVE', '2008-91.53446', '10/16/2008', ''),
(75, 'Q2WT002', 'LEAD FATIGUE WEIGHTS', 'HYBRID', '802', '0001A', '2015-03-06', '3/4/2016', 365, '±2%', 'IQC', 'ACTIVE', 'QA/IQC', 1, '8553', 'AAA', 'TEAM', 0, 'N/A', '', '0.0000', '1/14/2000', '', '', 'within tolerance', '2015-63.60794', '3/7/2015', '3/2/2005'),
(76, 'Q2WT003', 'LEAD FATIGUE WEIGHTS', 'TPC', '5LBS', '02005', '2008-01-09', '10/7/2008', 272, '2%', 'IQC', 'IN-ACTIVE', 'QA/IQC', 1, '6289', 'AAA', 'TEAM', 0, 'N/A', '', '0.0000', '', '', '', 'FOR IN-ACTIVE', '2008-91.53511', '10/16/2008', ''),
(77, 'Q2WT004', 'LEAD FATIGUE WEIGHTS', 'HMPC', '802', '009', '2015-03-06', '3/4/2016', 365, '±2%', 'IQC', 'ACTIVE', 'QA/IQC', 1, '8553', 'AAA', 'TEAM', 0, 'N/A', '', '0.0000', '', '', '', 'within tolerance', '2015-63.60811', '3/7/2015', '3/2/2005'),
(78, 'Q2LF001', 'LEAD FATIGUE TESTER', 'HYBRID MACH COR', 'M1500B', '3001', '2015-03-06', '3/4/2016', 365, '±1 S', 'IQC', 'ACTIVE', 'QA/IQC', 3, '8553', 'AAA', 'TEAM', 0, 'N/A', '3/7/2003', '0.0000', '9/9/2002', '', '', 'Within tolerance', '2015-63.61273', '3/10/2015', '10/25/1991'),
(79, 'Q2TMM002', 'DIGITAL THERMOMETER', 'FLUKE', '50S', '76330052', '2015-03-31', '3/30/2016', 365, '±5°C', 'CAL LAB', 'ACTIVE', 'CALIBRATION', 2, '8553', 'AAA', 'TEAM', 0, 'N/A', '9/12/2002', '0.0000', '3/16/2002', '', '', 'within tolerance', '2015-313.54289', '3/31/2015', '9/4/2000'),
(80, 'Q2TG002', 'THICKNESS GAUGE', 'MITUTOYO', 'ID-110M', '502753', '2016-02-08', '2/7/2017', 365, '±.01MM', 'DIEBANK', 'ACTIVE', 'QA/IQC', 2, '8553', 'AAA', '', 0, 'N/A', '4/11/2003', '0.0000', '4/11/2003', '', '', 'Gauge within tolerance; Glass needs replacement', '2016-82.63644', '2/8/2016', ''),
(81, 'Q2CR001', 'CHART RECORDER', 'BLUE-M', 'AR11BLS105', '3842-36504', '2015-09-29', '3/15/2016', 182, '±5°C', 'FA/TNH', 'ACTIVE', 'QA/FA', 2, '8553', 'AAA', 'TEAM', 0, 'N/A', '10/16/2001', '0.0000', '4/19/2001', '', '', 'within tolerance', '2015-299.60483', '9/30/2015', '9/1/1993'),
(82, 'Q2AM001', 'MINI-ANEMOMETER', 'KURZ INST.', '490FM', 'LVE 59891', '2014-11-06', '11/4/2016', 730, '', 'CAL LAB', 'ACTIVE', 'CALIBRATION', 0, 'MPC', 'AAA', 'TEAM', 2058, 'N/A', '', '0.0000', '', '', '', 'Within manufacturer tolerance;', '2014-611.52383', '11/13/2014', ''),
(83, 'Q1VM001', 'DIGITAL VOLTMETER', 'HP', '3456A', '2825A20262', '2015-10-16', '10/14/2016', 365, 'OEM', 'CAL LAB', 'ACTIVE', 'STANDARD', 8, '8553', 'ACA', 'TEAM', 1133, 'N/A', '', '0.0000', '', '', '', 'within tolerance', '2015-1610.42415', '10/21/2015', '9/2/1988'),
(84, 'Q2SCP001', 'STATIC CHARGE PLATE', 'PRO-STAT', 'CPM-720A', '1085', '2006-11-16', '5/15/2008', 546, '', 'INCOMING', 'SERVICE', 'QA/IQC', 0, 'PROST', 'AAA', 'TEAM', 1303, 'N/A', '4/18/2003', '0.0000', '4/18/2001', '', '', 'Within tolerance; SERVICE ONLY', '2006-1611.47860', '5/16/2008', '4/18/2001'),
(85, 'Q2SCS001', 'STATIC CHARGING SOURCE', 'PROSTAT', 'PCS-730', '1085', '2006-11-16', '5/15/2008', 546, 'N/A', 'IQC AREA', 'SERVICE', 'QA/IQC', 0, 'PROST', 'AAA', 'TEAM', 1303, 'N/A', '', '0.0000', '', '', '', 'Within tolerance; service only', '2006-1611.47928', '5/16/2008', '4/18/2001'),
(86, 'Q2SDT001', 'STATIC DECAY TIMER', 'PRO-STAT', 'PDT-740B', '39081', '2015-11-05', '11/4/2016', 365, '±2MV/', 'IQC AREA', 'ACTIVE', 'QA/IQC', 2, '8553', 'AAA', 'TEAM', 1303, 'N/A', '', '0.0000', '', '', '', 'Within tolerance', '2015-511.54233', '11/5/2015', '4/18/2001'),
(87, 'Q2SFM001', 'STATIC FIELD METER', 'PRO-STAT', 'PFM-711A', '1085', '2015-04-28', '4/28/2016', 365, '', 'CAL LAB', 'ACTIVE', 'QA/IQC', 0, 'MPC', 'AAA', 'TEAM', 1303, 'N/A', '', '0.0000', '', '', '', 'Within tolerance; Received as of 30 April 2015', '2015-284.50837', '5/9/2015', '4/18/2001'),
(88, 'Q1UC001', 'UNIVERSAL COUNTER', 'HP', '5334A', '2426A02080', '2014-06-10', '4/11/2016', 671, 'TCS-5085', 'CAL LAB', 'ACTIVE', 'STANDARD', 8, '8553', 'AAA', 'TEAM', 1135, 'N/A', '', '0.0000', '4/21/2000', '', '', 'Within tolerance', '2014-106.57071', '6/19/2014', '1/9/1986'),
(89, 'Q2CP005', 'DIAL CALIPER', 'MITUTOYO', '505-627-50', '3929-51495', '2015-08-28', '8/26/2016', 365, '±0.001"', 'CALIB', 'ACTIVE', 'CALIBRATION', 2, '8553', 'AAA', '', 0, 'N/A', '6/17/2005', '0.0000', '6/17/2005', '', '', 'within tolerance', '2015-288.41479', '8/28/2015', '6/17/2005'),
(90, 'Q1DWG001', 'DEAD WEIGHT TESTER', 'AMTHOR', '460', '16009', '2014-11-05', '11/4/2019', 1825, '', 'CAL LAB', 'ACTIVE', 'STANDARD', 0, 'MIRDC', '***', 'TEAM', 1177, 'N/A', '', '0.0000', '11/8/1996', '', '', 'Received: 18 September 2009', '2014-511.62160', '11/19/2014', '6/4/1990'),
(91, 'Q2PG001', 'PIN GAGES', 'MEYER', 'M-0-011', '3965-61470', '2015-08-08', '8/8/2016', 365, '±0.0002"', 'PDIP', 'ACTIVE', 'CALIBRATION', 4, '8553', 'AAA', 'TEAM', 0, 'N/A', '', '0.0000', '', '', '', 'within tolerance', '2015-88.58702', '8/8/2015', '6/8/1993'),
(92, 'Q1AC001', 'PIND ACCELEROMETER', 'PIND TESTER INC', '2220D', 'BP29', '2015-12-04', '12/4/2016', 365, '±5%REF', 'CAL LAB', 'ACTIVE', 'STANDARD', 0, 'SDI', 'AAA', 'TEAM', 0, 'N/A', '', '0.0000', '', '', '', 'For replacement of issued CAL certificate', '2015-412.49520', '12/18/2015', '3/23/1995'),
(93, 'Q1SRS001', 'PIND S140 SIMULATOR', 'PTI', '4501-S140', 'E1115', '2015-12-04', '12/4/2016', 365, '±0.5 DB', 'CAL LAB', 'ACTIVE', 'STANDARD', 0, 'SDI', 'AAA', 'TEAM', 0, 'N/A', '', '0.0000', '', '', '', 'Report No. 12445; Attenuation @ 100 kHz = -59.8 dB', '2015-412.49710', '12/18/2015', '1/17/2003'),
(94, 'Q1ACA001', 'PIND ACCELEROMETER AMPLIFIER', 'PIND TESTER INC', '1501', 'A009286', '2015-12-04', '12/4/2016', 365, '0.2PPM', 'CAL LAB', 'ACTIVE', 'STANDARD', 0, 'SDI', 'AAA', 'TEAM', 0, 'N/A', '', '0.0000', '', '', '', 'Within tolerance; Report# 12445', '2015-412.49673', '12/18/2015', '11/27/1991'),
(95, 'Q1CC001', 'PIND CALIBRATION CAPACITOR', 'PTI', '4501-CALCA', 'D1200', '2015-12-04', '12/4/2016', 365, '±10 PF', 'CAL LAB', 'ACTIVE', 'STANDARD', 0, 'SDI', 'AAA', 'TEAM', 0, 'N/A', '', '0.0000', '', '', '', 'Report No. 12715; Capacitance = 1002.4 pF', '2015-412.49742', '12/18/2015', '7/17/2002'),
(96, 'Q1PSM002', 'PSYCHRON METER', 'BELFORT', '566-2', '87-4015', '2015-01-21', '1/21/2016', 365, '±0.45 °F', 'CAL LAB', 'IN-ACTIVE', 'STANDARD', 0, 'MIRDC', '**A', 'TEAM', 1006, 'N/A', '', '0.0000', '', '', '', 'For calibration', '2015-211.32519', '1/25/2016', '5/4/1988'),
(97, 'Q1TCC002', 'THERMOCOUPLE CALIBRATOR', 'ALTEK', '322-1', '162126', '2015-08-29', '8/29/2016', 365, '±2.5°C', 'CAL LAB', 'ACTIVE', 'STANDARD', 8, '8553', 'AAA', 'TEAM', 0, 'N/A', '', '0.0000', '', '', '', 'Within tolerance', '2015-298.61048', '8/29/2015', '8/11/2005'),
(98, 'Q4TMM001', 'BULB THERMOMETER', 'N/A', '-10-110°C', '4044-53074', '2005-10-10', '10/10/2005', 0, '±1.25°C', 'WETLAB/MPT', 'SERVICE', 'QA/PDIP', 2, '6289', '***', 'TEAM', 1006, 'N/A', '', '0.0000', '', '', '', 'new/ verification only', '2005-1010.52984', '', ''),
(99, 'Q3TM003', 'TIMER', 'OMRON', 'H3CA-A', '23Z4', '2016-02-01', '8/1/2016', 182, '±5%', 'OVEN/WETLB', 'ACTIVE', 'QA/FA', 4, '8553', 'AAA', 'TEAM', 0, 'N/A', '', '0.0000', '', '', '', 'within tolerance', '2016-12.60791', '2/1/2016', '4/11/2005'),
(100, 'Q1WT001', 'TEST WEIGHTS [CLASS M1]', 'OHAUS', 'STAINLESS', '0098', '2014-06-25', '6/24/2016', 730, 'CLASS F1', 'CAL LAB', 'ACTIVE', 'STANDARD', 0, 'ITDI', '***', 'TEAM', 1544, 'N/A', '', '0.0000', '', '', '', 'CAL Rep No. 06-2014-TSWT-0283; Umax ±0.500 mg', '2014-256.38369', '7/14/2014', ''),
(101, 'Q1WT002', '10-1000G TEST WEIGHTS', 'OHAUS', '10-1000G', '0099', '2014-06-25', '6/24/2016', 730, 'CLASS M3', 'CAL LAB', 'ACTIVE', 'STANDARD', 0, 'ITDI', '***', 'TEAM', 1172, 'N/A', '', '0.0000', '', '', '', 'Conforms to OIML Class M3 Weights [CAL Rep No. 06-2014-TSWT-0284]', '2014-256.38519', '7/14/2014', ''),
(102, 'Q1WT003', 'TEST WEIGHTS', 'ANZA TECH', 'CAST IRON', '0095', '2014-03-26', '3/25/2016', 730, 'CLASS M3', 'CAL LAB', 'ACTIVE', 'STANDARD', 0, 'ITDI', '***', 'TEAM', 0, 'N/A', '', '0.0000', '', '', '', 'MPE ±500 mg, [CAL Rep No. 04-2012-TSWT-0252]', '2014-263.33768', '3/31/2014', ''),
(103, 'Q1WT004', 'RECTANGULAR 5KG TEST WEIGHT', 'B&G', '5KG', '6226-1', '2014-03-26', '3/25/2016', 730, '±2.5 GRAMS', 'CAL LAB', 'ACTIVE', 'STANDARD', 0, 'ITDI', '***', 'TEAM', 1173, 'N/A', '', '1.0000', '1/25/1999', '', '', 'OIML Class M3 ±2.5g, [CAL Rep No. 04-2014-TSWT-0253]', '2014-263.31689', '3/31/2014', ''),
(104, 'Q1FG001', 'FUNCTION GENERATOR', 'SRS, INC.', 'DS345', '36661', '2014-01-30', '1/29/2018', 1460, '', 'CAL LAB', 'ACTIVE', 'STANDARD', 0, 'MPC', '***', 'TEAM', 1316, 'N/A', '', '0.0000', '', '', '', 'Within tolerance; Received on 11 February 2014', '2014-301.46529', '2/11/2014', ''),
(105, 'Q2TM002', 'GRALAB TIMER', 'DIMCO-GRAY', '545', '009275', '2014-02-13', '2/13/2015', 365, '±0.15%', 'CAL LAB', 'SCRAP', 'CALIBRATION', 2, '3803', 'AAA', 'TEAM', 0, 'N/A', '', '0.0000', '', '', '', 'Within tolerance', '2014-132.52953', '2/16/2015', '4/5/2002'),
(106, 'Q3JPM001', 'PKG MISMATCH JIG', 'M.A.M.', 'JG-0006-IP', '4187-59036', '2006-07-04', '8/3/2006', 30, '+0,-0.002"', 'QA/MOLD', 'DEFECTIVE', 'QA/PDIP', 1, '6289', '*AA', '', 0, 'N/A', '3/2/2006', '0.0000', '3/2/2006', '', '', 'out of tolerance', '2006-47.54253', '8/11/2006', ''),
(107, 'Q3JPM002', 'PKG MISMATCH JIG', 'M.A.M', 'JG-0006-IP', '4187-59229', '2006-05-02', '6/1/2006', 30, '+0,-0.002"', 'MOLD', 'DEFECTIVE', 'QA/PDIP', 1, '6289', '*AA', '', 0, 'N/A', '3/2/2006', '0.0000', '3/2/2006', '', '', 'out of tolerance', '2006-25.33032', '6/5/2006', ''),
(108, 'Q3TM004', 'TIMER', 'OMRON', 'H5CX-A11S', '3827-51859', '2015-10-16', '4/15/2016', 182, '±5%', 'PCT', 'ACTIVE', 'QA/FA', 4, '8553', 'AAA', '', 0, 'N/A', '3/7/2005', '0.0000', '3/7/2005', '', '', 'Within tolerance', '2015-1610.55998', '10/17/2015', '3/15/2006'),
(109, 'Q3TC001', 'TEMP CONT''L', 'OMRON', 'E5CS-R1KJX', '4201-63631', '2015-10-16', '4/15/2016', 182, '±5°C', 'FA/PCT', 'ACTIVE', 'QA/FA', 2, '8553', 'AAA', '', 0, 'N/A', '3/7/2005', '0.0000', '3/7/2005', '', '', 'Within tolerance', '2015-1610.64988', '10/16/2015', '3/22/2006'),
(110, 'Q4TMM002', 'BULB THERMOMETER', 'WEISS INST', '0-150°C', '35BL3', '2006-03-15', '3/15/2006', 0, '±2°C', 'FA/PCT', 'SERVICE', 'QA/FA', 2, '6289', 'AAA', 'TEAM', 0, 'N/A', '12/20/2001', '0.0000', '6/4/2001', '', '', 'Within tolerance/Service only', '2006-153.32582', '', ''),
(111, 'Q4PRG001', 'PRESSURE GAUGE', 'ENFM', '0-60PSI', '4201-63740', '2006-03-15', '3/15/2006', 0, '± 5PSI', 'FA/PCT', 'SERVICE', 'QA/FA', 2, '6289', 'AAA', '', 0, 'N/A', '3/7/2005', '0.0000', '3/7/2005', '', '', 'WITHIN TOLERANCE', '2006-153.63802', '3/21/2006', ''),
(112, 'Q3TC002', 'TEMP CONT''L', 'OMRON', 'E5CS-R1KJX', '15X9N', '2007-07-21', '7/21/2007', 0, '±5°C', 'VO#.001/WE', 'SERVICE', 'QA/FA', 2, '6289', 'AAA', 'TEAM', 0, 'N/A', '1/26/2002', '0.0000', '7/30/2001', '', '', 'within tolerance', '2007-217.54365', '7/21/2007', ''),
(113, 'Q3JPM003', 'PKG MISMATCH JIG', 'M.A.M', 'JG-0065-IP', '4265-49730', '2006-06-19', '7/19/2006', 30, '+0,-0.02MM', 'QA/MOLD', 'DEFECTIVE', 'QA/PDIP', 1, '6289', '**A', '', 0, 'N/A', '5/19/2006', '0.0000', '5/19/2006', '', '', 'out of tolerance', '2006-196.60695', '7/25/2006', ''),
(114, 'Q3JPM004', 'PKG MISMATCH JIG (TO-268)', 'M.A.M', 'JG-0066-IP', '4320-61667', '2007-05-08', '6/13/2007', 36, '+0,-0.025', 'QA/MOLD', 'DEFECTIVE', 'QA/PDIP', 1, '6289', 'AAA', '', 0, 'N/A', '3/9/2005', '0.0000', '3/9/2005', '', '', 'out of tolerance', '2007-85.46275', '5/9/2007', ''),
(115, 'Q3JPM005', 'PKG MISMATCH JIG TO-247', 'M.A.M', 'JG-0006-IP', '4328-63007', '2006-09-22', '10/22/2006', 30, '+0,-0.002"', 'MOLD', 'DEFECTIVE', 'QA/PDIP', 2, '6289', 'AAA', 'TEAM', 0, 'N/A', '', '0.0000', '', '', '', 'OUT OF tolerance', '2006-229.53229', '11/4/2006', ''),
(116, 'Q2PPS001', 'PIND IMPACT SENSOR', 'PTI', 'S140C/A', 'C1287', '2008-03-26', '3/26/2009', 365, '-77.5DB+3', 'CAL LAB', 'DEFECTIVE', 'QA/MCAN', 0, 'PTI', 'AAA', 'TEAM', 0, 'N/A', '', '0.0000', '', '', '', 'verified by SDI as of 07 April 2010', '2008-263.30918', '8/30/2010', '1/23/1987'),
(117, 'Q2CP006', 'CALIPER', 'MITUTOYO', 'CD-8"CS', '0039895', '2015-03-05', '3/4/2016', 365, '±0.001"', 'FA LAB', 'ACTIVE', 'CALIBRATION', 2, '8553', 'AAA', 'TEAM', 0, 'N/A', '4/14/2003', '0.0000', '10/15/2002', '', '', 'within tolerance', '2015-53.54992', '3/6/2015', '7/7/2006'),
(118, 'Q1MC001', 'MULTI-CALIBRATOR', 'FLUKE', '5500A', '6900008', '2013-08-20', '8/18/2017', 1460, '', 'CAL LAB', 'ACTIVE', 'STANDARD', 0, 'MPC', 'BCA', 'TEAM', 1132, 'N/A', '', '0.0000', '', '', '', '', '2013-208.61586', '9/21/2013', ''),
(119, 'Q2MUM001', 'DIGITAL MULTIMETER', 'ISO-TECH', 'IDM205RMS', '03600856', '2015-08-13', '8/12/2016', 365, 'OEM', 'CAL LAB', 'ACTIVE', 'CALIBRATION', 5, '8553', 'AAA', 'TEAM', 0, 'N/A', '', '0.0000', '', '', '', 'Limited to VOLT Function only; Within tolerance', '2015-138.62182', '8/13/2015', '5/28/2003'),
(120, 'Q3JPM006', 'PKG MISMATCH JIG (TO264)', 'M.A.M', 'JG-0065-IP', '4369-51587', '2007-01-08', '2/7/2007', 30, '+0,-0.02MM', 'QA/MOLD', 'DEFECTIVE', 'QA/PDIP', 2, '6289', 'AAA', '', 0, 'N/A', '6/28/2004', '0.0000', '6/28/2004', '', '', 'defective', '2007-81.55714', '2/10/2007', ''),
(121, 'Q2STT001', 'PIND STU TRANSDUCER', 'PTI', 'S140BM', 'A753', '2005-08-19', '11/18/2006', 456, '-77.5DB+3', 'CAL LAB', 'IN-ACTIVE', 'QA/MCAN', 0, 'PTI', '***', 'TEAM', 0, 'N/A', '', '0.0000', '', '', '', 'Within tolerance; Refer to Report#9238', '2005-198.50934', '1/4/2007', ''),
(122, 'Q2CP007', 'CALIPER (INSIDE)', 'MITUTOYO', '209-653', 'AB02F020', '2015-09-05', '9/5/2016', 365, '±0.03MM', 'CAL LAB', 'ACTIVE', 'CALIBRATION', 3, '8553', 'AAA', '', 0, 'N/A', '9/15/2006', '0.0000', '9/15/2006', '', '', 'within tolerance', '2015-59.65753', '9/5/2015', ''),
(123, 'Q1GB002', 'GAUGE BLOCK SET [METRIC]', 'MITUTOYO', '516-942-01', '050546', '2013-01-09', '2/8/2016', 1095, 'GRADE 0', 'CAL LAB', 'EXTENDED', 'STANDARD', 0, 'MIRDC', '***', 'TEAM', 1199, 'N/A', '', '0.0000', '', '', '', 'Received on 21 February 2013', '2013-91.32619', '1/25/2016', ''),
(124, 'Q4TMM003', 'GLASS THERMOMETER', 'N/A', '0-100°C', '4414-26319', '2006-10-09', '10/9/2006', 0, '±1.25°C', 'MPT', 'SERVICE', 'QA/PDIP', 4, '6289', '***', '', 0, 'N/A', '10/15/2006', '0.0000', '10/15/2006', '', '', 'verification only', '2006-910.26331', '', ''),
(125, 'Q3TI001', 'TEMP INDICATOR', 'TABAI', 'TI-04', '22A26159', '2006-11-21', '11/21/2007', 365, '±5°C', 'FA LAB', 'IN-ACTIVE', 'QA/FA', 2, '6289', '***', 'TEAM', 0, 'N/A', '', '0.0000', '', '', '', 'within tolerance', '2006-2111.59041', '11/21/2007', '11/28/2006'),
(126, 'Q3TI002', 'TEMP INDICATOR', 'TABAI', 'TI-02-20', '22422159', '2006-11-21', '11/21/2007', 365, '±5°C', 'FA LAB', 'IN-ACTIVE', 'QA/FA', 2, '6289', '***', 'TEAM', 0, 'N/A', '', '0.0000', '', '', '', 'within tolerance', '2006-2111.59157', '11/21/2007', '11/28/2006'),
(127, 'Q3TC003', 'TEMP CONT''L', 'TABAI', '-80-+100C', '312', '2006-11-21', '11/21/2007', 365, '5°C', 'FA LAB', 'IN-ACTIVE', 'QA/FA', 2, '6289', '***', 'TEAM', 0, 'N/A', '', '0.0000', '11/24/1999', '', '', 'within tolerance/ in-active', '2006-2111.59382', '11/21/2007', '11/28/2006'),
(128, 'Q3TM005', 'ANALOG TIMER', 'OMRON', 'NSY', '1264-A', '2006-11-21', '11/21/2007', 365, '5SEC', 'FA LAB', 'IN-ACTIVE', 'QA/FA', 2, '6289', '***', 'TEAM', 0, 'N/A', '', '0.0000', '11/24/1999', '', '', 'within tolerance', '2006-2111.59513', '11/21/2007', '11/28/2006'),
(129, 'Q3TM006', 'ANALOG TIMER', 'OMRON', 'NSY', '1264-B', '2006-11-21', '11/21/2007', 365, '5SEC', 'FA LAB', 'IN-ACTIVE', 'QA/FA', 2, '6289', '***', 'TEAM', 0, 'N/A', '', '0.0000', '', '', '', 'within tolerance', '2006-2111.59593', '11/21/2007', '11/28/2006'),
(130, 'Q3TC004', 'TEMP CONT''L', 'HONEYWELL', '0-200°C', '311', '2006-11-21', '11/21/2007', 365, '±5°C', 'FA', 'IN-ACTIVE', 'QA/FA', 2, '6289', '***', 'TEAM', 0, 'N/A', '', '0.0000', '', '', '', 'within tolerance', '2006-2111.59736', '11/21/2007', '11/28/2006'),
(131, 'Q2CR002', 'CHART RECORDER', 'CHINO', 'EH-100-06', 'EH-40038', '2006-11-21', '11/21/2007', 365, '±5°C', 'FA', 'IN-ACTIVE', 'QA/FA', 2, '6289', '***', 'TEAM', 0, 'N/A', '', '0.0000', '', '', '', 'in-active', '2006-2111.59880', '11/21/2007', '11/28/2006'),
(132, 'Q2STT002', 'PIND STU TRANSDUCER', 'PTI', 'S140BM', 'A202116', '2014-11-10', '12/10/2015', 365, '', 'CAL LAB', 'EXTENDED', 'QA/MCAN', 0, 'PTI', '***', 'TEAM', 0, 'N/A', '', '0.0000', '', '', '', 'Report No. 12445', '2014-1011.47287', '11/11/2015', '1/3/2007'),
(133, 'Q2GB001', 'GAUGE BLOCK SET [ENGLISH]', 'HDT INT''L.', 'FED GR 2', '80297', '2015-03-12', '3/11/2016', 365, '', 'CAL LAB', 'ACTIVE', 'CALIBRATION', 8, '8553', '***', 'TEAM', 1198, 'N/A', '', '0.0000', '', '', '', 'Within tolerance', '2015-123.59863', '3/19/2015', '3/14/1983'),
(134, 'Q2PPS002', 'PIND IMPACT SENSOR', 'PTI', 'S140C/A', 'C3956', '2014-11-10', '12/10/2015', 365, '-77.5DB+3', 'Q2PIS001', 'EXTENDED', 'QA/MCAN', 0, 'SDI', '***', 'TEAM', 0, 'N/A', '', '0.0000', '', '', '', 'Received on 18 Nov 2014', '2014-1011.41777', '11/13/2015', ''),
(135, 'Q2PTS001', 'PIND HEAVY DUTY SHAKER', 'PTI', 'M100', '964A', '2008-10-08', '3/26/2009', 182, 'TCS-5008', 'Q2PIS001', 'IN-ACTIVE', 'QA/MCAN', 16, '3803', '***', 'TEAM', 0, 'N/A', '', '0.0000', '', '', '', 'Replaced with M230 as of 26 Mar 2009', '2008-810.65899', '3/30/2009', ''),
(136, 'Q2STT003', 'PIND STU TRANSDUCER', 'DUNEGAN', 'S140BM', 'A1117', '2015-12-04', '12/4/2016', 365, '', 'Q2ST001-CAL', 'ACTIVE', 'QA/MCAN', 0, 'SDI', '***', 'TEAM', 0, 'N/A', '', '0.0000', '', '', '', 'Report No.12715.', '2015-412.49875', '12/18/2015', ''),
(137, 'Q2CTS001', 'COATING THICKNESS STANDARD', 'FISCHER', 'TIN-LEAD/B', '13097', '2013-08-22', '8/19/2022', 3285, '±5%', 'CAL LAB', 'ACTIVE', 'CALIBRATION', 0, 'FISCH', '***', 'TEAM', 1164, 'N/A', '', '0.0000', '', '', '', 'Within tolerance', '2013-228.53133', '8/23/2013', ''),
(138, 'Q2CTS002', 'COATING THICKNESS STANDARD', 'FISCHER', 'AU/NI/KVR', '14006', '2009-04-02', '3/30/2018', 3285, '±5%', 'CAL LAB', 'ACTIVE', 'CALIBRATION', 0, 'FISCH', '***', 'TEAM', 1165, 'N/A', '', '0.0000', '', '', '', 'Within tolerance', '2009-24.42651', '3/13/2013', ''),
(139, 'Q1CRG001', 'OXYGEN=200 PPM, N2=BALANCE', 'CIGI', '200 PPM', 'CYL# 55402', '2007-03-21', '1/1/2014', 0, '', 'CAL LAB', 'PR#42258', 'STANDARD', 0, 'CIGI', '***', 'TEAM', 1540, 'N/A', '', '0.0000', '', '', '', 'Received:21 Feb 2007 at 1900 psig, as of 21 Mar 2012: 1500 psi', '2007-213.54870', '1/10/2014', ''),
(140, 'Q1GLS001', 'GLASS SCALE (GRADE 0)', 'NIKON', '0-300 MM', '20071180', '2015-09-25', '9/25/2016', 365, '±0.0026 MM', 'CAL LAB', 'ACTIVE', 'STANDARD', 0, 'MIRDC', '***', '', 0, 'N/A', '4/10/2007', '0.0000', '4/10/2007', '', '', 'Receive on 15 October 2015.', '2015-259.46431', '10/15/2015', '5/26/1963'),
(141, 'Q2CMM001', 'COORDINATE MEASURING MACHINE', 'MITUTOYO', 'QVACE 250', '2181105', '2015-05-04', '5/3/2016', 365, '', 'IQC AREA', 'ACTIVE', 'QA/IQC', 2, '3803', '***', 'TEAM', 1301, 'YES', '5/3/2016', '0.1400', '5/4/2015', 'K.BASINANG', 'BASEPLATE DIME.', 'Within tolerance', '2015-45.52381', '5/5/2015', '8/1/2001'),
(142, 'Q3TC006', 'TEMP CONT''L', 'OMRON', 'E5CS-R1KJX', '4602-55835', '2015-09-28', '3/15/2016', 182, '±5°C', 'FA/TNH', 'ACTIVE', 'QA/FA', 2, '8553', 'AAA', 'TEAM', 0, 'N/A', '12/10/2001', '0.0000', '6/13/2001', '', '', 'Within tolerance', '2015-289.65585', '9/28/2015', '4/21/2007'),
(143, 'Q3TC007', 'TEMP CONT''L', 'OMRON', 'E5CS-R1KJX', '4602-55912', '2015-09-28', '3/15/2016', 182, '±5°C', 'FA/TNH', 'ACTIVE', 'QA/FA', 2, '8553', 'AAA', 'TEAM', 0, 'N/A', '12/10/2001', '0.0000', '6/13/2001', '', '', 'Within tolerance', '2015-289.65607', '9/28/2015', '3/25/2008'),
(144, 'Q3JPM007', 'PKG MISMATCH JIG (TO-264)', 'KEBA ENG''G', 'JG-0176-IP', '4608-44300', '2015-07-07', '3/4/2016', 242, '+0,-0.001"', 'QA/MOLD', 'FOR REPAIR', 'QA/PDIP', 2, '8553', 'AAB', '', 0, 'N/A', '4/20/2007', '0.0000', '4/20/2007', '', '', 'Out of tolerance', '2015-77.40621', '1/28/2016', '4/20/2007'),
(145, 'Q3JL001', 'LOOP HEIGHT JIG (TO-247)', 'RJZ', 'JG-0167-IP', '4632-43716', '2015-06-01', '3/31/2016', 304, '±0.002"', 'FOL/PDIP', 'ACTIVE', 'QA/PDIP', 1, '8553', 'AAA', 'TEAM', 0, 'N/A', '', '0.0000', '', '', '', 'within tolerance', '2015-16.55997', '6/1/2015', '5/18/2007'),
(146, 'Q3CT001', 'CURVE TRACER [OS TESTING]', 'TEKTRONIX', '577-D1', 'B061198', '2015-12-22', '6/20/2016', 182, 'OEM', 'QA PDIP/FOL', 'ACTIVE', 'QA/PDIP', 12, '8553', 'AAA', 'TEAM', 567, 'N/A', '', '0.0000', '12/2/2000', '', '', 'Within tolerance; Recommended for OS Test use only', '2015-2212.62677', '12/22/2015', '1/28/1992'),
(147, 'Q3JL002', 'LOOP HEIGHT JIG [SOT-227]', 'RJS', 'JG-0089-IP', '4669-60663', '2014-11-27', '6/26/2015', 212, '±0.003"', 'FOL/WBOND', 'FOR REPAIR', 'QA/PDIP', 1, '8553', 'AAB', '', 0, 'N/A', '6/27/2007', '0.0000', '6/27/2007', '', '', 'OUT OF TOLERANCE', '2014-2711.64484', '3/18/2015', '6/27/2007'),
(148, 'Q4TMM004', 'GLASS THERMOMETER', 'N/A', 'CENTIGRADE', '', '2007-11-12', '11/12/2007', 0, 'N/A', 'TINDIP', 'SERVICE', 'QA/PDIP', 2, '3803', 'AAA', 'TEAM', 0, 'N/A', '', '0.0000', '', '', '', 'Scale accuracy check only', '2007-1211.45572', '', '11/12/2007'),
(149, 'Q2MP002', 'MICROPULL TESTER', 'UNITEK', '6-095-06', '20016', '2007-11-28', '11/28/2007', 0, '±2%', 'CAL LAB', 'IN-ACTIVE', 'QA/MCAN', 3, '3803', '*AC', 'TEAM', 1126, 'N/A', '7/7/2003', '0.7600', '3/28/2003', 'C.VALEROS', 'WIREPULL', 'Back-up status', '2007-2811.38194', '9/19/2012', ''),
(150, 'Q2MP001', 'MICROPULL TESTER', 'UNITEK', '6-095-06', '70234', '2015-09-03', '9/2/2016', 365, '±2%', 'FOL/QA MCAN', 'ACTIVE', 'QA/MCAN', 3, '8553', 'AAA', 'TEAM', 1011, 'YES', '9/2/2016', '0.8900', '9/4/2015', 'ABEGAIL GUZMAN', 'WIREPULL FORCE', 'within tolerance', '2015-39.67335', '9/4/2015', '12/1/1997'),
(151, 'Q3JPM009', 'PKG MISMATCH JIG', 'CHOLLO', 'JG-0175-IP', '4886-37458', '2015-05-16', '3/15/2016', 304, '+0,-0.001"', 'MOLD', 'ACTIVE', 'QA/PDIP', 2, '8553', 'AAA', '', 0, 'N/A', '1/30/2008', '0.0000', '1/30/2008', '', '', 'Within tolerance', '2015-165.44333', '5/18/2015', '1/30/2008'),
(152, 'Q2TM003', 'GRALAB TIMER', 'DIMCO GRAY COM.', '605', '87070011', '2016-02-12', '2/10/2017', 365, '±0.2%', 'CAL LAB', 'ACTIVE', 'CALIBRATION', 2, '8553', 'AAA', 'TEAM', 1161, 'N/A', '9/29/2000', '0.0000', '9/30/1999', '', '', 'within tolerance', '2016-122.55174', '2/15/2016', '2/7/2008'),
(153, 'Q2PPS003', 'PIND IMPACT SENSOR', 'PTI', 'S140C/A', 'C3965', '2010-04-07', '4/7/2011', 365, '-77.5DB+3', 'CAL LAB', 'IN-ACTIVE', 'QA/MCAN', 0, 'PTI', '**A', 'TEAM', 0, 'N/A', '', '0.0000', '', '', '', 'Received: 26 April 2010.', '2010-74.41884', '11/13/2015', '11/10/1994'),
(154, 'Q1PRG001', 'PRESSURE GAUGE [GRADE 2A]', 'MARSH', '6957-12', '20-198', '2015-05-20', '5/19/2016', 365, '±1 PSI', 'CAL LAB', 'ACTIVE', 'STANDARD', 3, '8553', 'AAA', 'TEAM', 1180, 'N/A', '', '0.0000', '', '', '', 'within tolerance', '2015-205.46872', '5/20/2015', '1/16/1989'),
(155, 'Q2PIS002', 'PIND TEST CONTROLLER', 'PTI', '4501A', '9035B 820150 474', '2009-04-05', '10/5/2009', 182, '', 'CAL LAB', 'IN-ACTIVE', 'QA/MCAN', 16, '3803', '*C*', 'TEAM', 450, 'N/A', '', '0.0000', '', '', '', 'For back-up use (new sensor: C4221)', '2009-54.37105', '4/6/2009', '9/4/1989'),
(156, 'Q2PTS002', 'PIND HEAVY DUTY SHAKER', 'PTI', 'M100', '994A', '2008-06-05', '2/9/2009', 182, 'TCS-5008', 'Q2PIS002', 'IN-ACTIVE', 'QA/MCAN', 16, '3803', '***', 'TEAM', 0, 'N/A', '', '0.0000', '', '', '', 'Compensated with C3965 Impact Sensor', '2008-56.39185', '', ''),
(157, 'Q2PTS003', 'PIND HEAVY DUTY SHAKER', 'PTI', 'M230', '3153B', '2015-11-11', '5/11/2016', 182, 'TCS-5008', 'Q2PIS001', 'ACTIVE', 'QA/MCAN', 8, '8553', '***', 'TEAM', 0, 'N/A', '', '0.0000', '', '', '', 'Within tolerance', '2015-1111.68041', '11/12/2015', ''),
(158, 'Q2PTS004', 'PIND HEAVY DUTY SHAKER', 'PTI', 'M100', '397', '1970-01-01', '', 0, 'TCS-5008', 'CAL LAB', 'IN-ACTIVE', 'QA/MCAN', 16, '3803', '***', 'TEAM', 0, 'N/A', '', '0.0000', '', '', '', 'Repaired by OEM on 18 Feb 2003', '0-00.39553', '8/11/2008', ''),
(159, 'Q2PTS005', 'PIND HEAVY DUTY SHAKER', 'PTI', 'M100', '946PA', '1970-01-01', '', 0, 'TCS-5008', 'CAL LAB', 'DEFECTIVE', 'QA/MCAN', 16, '3803', '***', 'TEAM', 0, 'N/A', '', '0.0000', '', '', '', 'For repair', '0-00.39641', '', ''),
(160, 'Q2PTM002', 'PIND OSCILLOSCOPE MONITOR', 'DUNEGAN CORP.', '118A', '4100295', '2015-11-11', '5/11/2016', 182, 'TCS-5008', 'Q2PIS001', 'ACTIVE', 'QA/MCAN', 8, '8553', '***', 'TEAM', 0, 'N/A', '', '0.0000', '', '', '', 'Within tolerance', '2015-1111.68022', '11/12/2015', ''),
(161, 'Q3TC008', 'TEMP CONT''L', 'OMRON', 'E5CS-R1KJX', '4942-55524', '2015-09-28', '3/15/2016', 182, '±5°C', 'FA/TNH-OTP', 'ACTIVE', 'QA/FA', 2, '8553', 'AAA', '', 0, 'N/A', '3/26/2008', '0.0000', '3/26/2008', '', '', 'within tolerance', '2015-289.65625', '9/28/2015', '3/26/2008'),
(162, 'Q2CP008', 'DIGITAL CALIPER', 'ANYI', '110-051', 'DH22006', '2016-02-16', '2/15/2017', 365, '±0.001"', 'IQC AREA', 'ACTIVE', 'QA/IQC', 2, '8553', 'AAA', '', 0, 'YES', '2/16/2016', '0.1000', '2/16/2015', 'CARLA MENDOZA', 'DIMENSION', 'within tolerance', '2016-162.46220', '2/16/2016', '10/27/2001'),
(163, 'Q1WT005', 'POUND TEST WEIGHTS', 'UBTI', '1/10/20LBS', '0098', '2008-11-27', '11/26/2010', 730, '', 'CAL LAB', 'PR#33199', 'STANDARD', 0, 'ITDI', '***', 'TEAM', 1171, 'N/A', '', '0.0000', '', '', '', 'received as of 17 Dec 2008, CAL Cert. 11-2008-tswt-1728', '2008-2711.42074', '11/26/2010', ''),
(164, 'Q3TM007', 'TIMER', 'OMRON', 'H3CA-A', '4601-52635', '2015-09-16', '3/15/2016', 182, '±10%', 'SP-QA/EOL', 'ACTIVE', 'QA/PDIP', 2, '8553', 'AAA', 'TEAM', 0, 'N/A', '', '0.0000', '', '', '', 'Within tolerance', '2015-169.58179', '9/16/2015', '11/10/2008'),
(165, 'Q1WT006', 'CYLINDRICAL 5KG TEST WEIGHT', 'N/A', '5KG', '8767', '2008-11-27', '11/26/2010', 730, 'CLASS M3', 'CAL LAB', 'PR#33199', 'STANDARD', 0, 'ITDI', '***', 'TEAM', 0, 'N/A', '', '0.0000', '', '', '', 'CAL Cert. 10-2007-tswt-1320 (at Q1WT005 file)', '2008-2711.38064', '11/26/2010', ''),
(166, 'Q4HDM001', 'HYDROMETER', 'KESTER', '800-900', '5268-58353', '2009-02-15', '2/15/2009', 0, '±.02', 'EOL/SDIP', 'SERVICE', 'QA/PDIP', 2, '6289', '***', '', 0, 'N/A', '2/15/2009', '0.0000', '2/15/2009', '', '', 'verification only', '2009-152.58212', '', '2/15/2009'),
(167, 'Q2PPS004', 'PIND IMPACT SENSOR', 'PTI', 'S140C/AL', 'C3926', '2015-12-04', '12/4/2016', 365, '-77.5DB+3', 'Q2PIS001', 'ACTIVE', 'QA/MCAN', 0, 'SDI', '***', 'TEAM', 0, 'N/A', '', '0.0000', '', '', '', 'Report No.12715.', '2015-412.49972', '12/18/2015', '8/17/1994'),
(168, 'Q2PPS005', 'PIND IMPACT SENSOR', 'PTI', 'S140C/A', 'C4221', '2010-10-19', '10/19/2011', 365, '-77.5DB+3', 'CAL LAB', 'DEFECTIVE', 'QA/MCAN', 0, 'SDI', '***', 'TEAM', 0, 'N/A', '', '0.0000', '', '', '', 'Hole in flex circuit', '2010-1910.47194', '11/24/2011', '6/17/1997'),
(169, 'Q4IPC001', 'ICE-POINT REFERENCE CELL', 'OMEGA', 'TRC III', '41206', '1998-03-28', '9/24/1998', 180, '', 'CAL LAB', 'SERVICE', 'CALIBRATION', 0, 'OMEGA', '***', 'TEAM', 1155, 'N/A', '', '0.0000', '', '', '', 'Please enter current performance', '', '', ''),
(170, 'Q2VG001', 'VACUUM GAUGE', 'ASHCROFT', '0-30"HG', '5606-39905', '2015-10-20', '8/19/2016', 304, '±0.5 "HG', 'CAL LAB', 'ACTIVE', 'CALIBRATION', 1, '8553', 'AAA', 'TEAM', 0, 'N/A', '', '0.0000', '', '', '', 'Within tolerance; Activated for REFERENCE STANDARD back-up', '2015-2010.45998', '10/20/2015', '1/19/2010'),
(171, 'Q3SW002', 'STOP WATCH', 'CASIO', 'H6-6', '5749-52444', '2012-01-10', '9/18/2012', 252, '±0.5%', 'EOL/4TH-OP', 'IN-ACTIVE', 'QA/PDIP', 2, '8072', 'AAA', 'TEAM', 1133, 'N/A', '', '0.0000', '', '', '', 'within tolerance', '2012-101.33509', '9/20/2012', '9/2/1988'),
(172, 'Q2CT001', 'CURVE TRACER', 'TEKTRONIX', '576', 'B294165', '2015-10-29', '4/28/2016', 182, 'OEM', 'FA LAB', 'ACTIVE', 'QA/FA', 12, '8553', 'AAC', '', 0, 'N/A', '10/5/2004', '0.0000', '10/5/2004', '', '', 'Full calibration upon receive on 28 Oct 2015.', '2015-2910.43593', '10/29/2015', '9/9/2010'),
(173, 'Q2CP009', 'DIGITAL CALIPER', 'LINEAR', 'N/A', '66841717', '2015-11-11', '11/10/2016', 365, '±0.001"', 'ASPM', 'ACTIVE', 'QA/PDIP', 2, '8553', 'AAA', 'TEAM', 0, 'YES', '11/10/2016', '2.8200', '11/11/2015', 'JAN VIDA ALBA', 'DIMENSION', 'Within tolerance', '2015-1111.56117', '11/11/2015', '9/22/2010'),
(174, 'Q2CP010', 'DIGITAL CALIPER', 'LINEAR', '', '66841727', '2015-06-11', '6/10/2016', 365, '±0.001"', 'PDIP EOL', 'ACTIVE', 'QA/PDIP', 2, '8553', 'AAA', 'TEAM', 0, 'YES', '6/10/2016', '0.7000', '6/11/2015', 'GLADYS IBARIENT', 'DIMENSIONAL', 'Within tolerance', '2015-116.64526', '6/11/2015', '9/22/2010'),
(175, 'Q2DG001', 'THICKNESS GAUGE', 'MITUTOYO', '2416F', '003', '2016-01-20', '12/12/2016', 334, '±0.002"', 'HEOL', 'ACTIVE', 'QA/MCAN', 2, '8553', 'AAA', 'TEAM', 0, 'N/A', '9/8/1999', '0.0000', '9/8/1999', '', '', 'Limited use 0.5" maximum; Within tolerance', '2016-201.66283', '1/25/2016', ''),
(176, 'Q3GS001', 'GROUND STRAP CHECKER', 'HAKKO', '498', '4980003667', '2015-05-04', '5/3/2016', 365, 'OEM', 'SMOCK RM', 'ACTIVE', 'QA/PDIP', 1, '8553', 'AAA', 'TEAM', 0, 'N/A', '', '0.0000', '', '', '', 'Within tolerance', '2015-45.62280', '5/4/2015', '2/4/2011');
INSERT INTO `calibration_qa` (`id`, `cs_code`, `description`, `manufacturer`, `model_number`, `serial_number`, `date_calibration`, `next_calibration`, `frequency`, `tolerance`, `location`, `remarks`, `owner`, `calibration_hour`, `calibration_by`, `status`, `con_sign`, `asset_number`, `grr_request`, `grr_due`, `grr`, `grr_date`, `grr_personnel`, `grr_character`, `imt_performance`, `rep_number`, `recalibration_update`, `date_create`) VALUES
(177, 'Q2XRF002', 'X-RAY FLUORESCENCE', 'FISCHER', 'XDLM-237', '100004411', '2015-09-14', '6/13/2016', 273, 'OEM', 'IQC AREA', 'ACTIVE', 'QA/IQC', 0, '8553', '**A', 'TEAM', 1548, 'N/A', '1/25/2011', '7.2100', '4/27/2010', 'G.IBBARIENTOS', 'COATING THICKNE', 'Replaced 2KV board as of 13 May 2014; Within tolerance', '2015-149.49415', '9/16/2015', '2/23/2011'),
(178, 'Q2PPS006', 'IMPACT SENSOR [NS]', 'PTI', 'S140C/A', 'C4687', '2015-12-04', '12/4/2016', 365, '±OEM', 'Q2PIS001', 'ACTIVE', 'QA/MCAN', 0, 'SDI', '***', 'TEAM', 0, 'N/A', '', '0.0000', '', '', '', 'For calibration as of 23 May 2012', '2015-412.49609', '12/18/2015', '6/15/2011'),
(179, 'Q2PCM002', 'PARTICLE COUNTER', 'MET ONE', 'GT-321', 'M4658', '2015-10-12', '10/12/2016', 365, 'N/A', 'CAL LAB', 'ACTIVE', 'CALIBRATION', 0, 'MPC', '***', 'TEAM', 1572, 'N/A', '1/23/2004', '0.0000', '1/23/2004', '', '', 'Refer to Certificate No. 222008122696321', '2015-1210.38628', '10/19/2015', '6/15/2011'),
(180, 'Q2PPS007', 'IMPACT SENSOR [NS]', 'PTI', 'S140C/A', 'C5024', '2011-11-10', '11/10/2012', 365, '', 'CAL-RESERVE', 'PR#', 'QA/MCAN', 0, 'SDI', '**A', 'TEAM', 0, 'N/A', '12/3/2001', '0.0000', '6/6/2001', '', '', 'within tolerance', '2011-1011.51840', '11/12/2012', '11/10/2011'),
(181, 'Q4PRG002', 'PRESSURE GAUGE', 'WIKA', '0-60PSI', '6377-53669', '2012-02-12', '2/12/2012', 0, '±1.2PSI', 'FA LAB', 'SERVICE', 'QA/FA', 2, '3803', '***', '', 0, 'N/A', '11/26/2003', '0.0000', '11/26/2003', '', '', 'Within Tolerance', '2012-122.53676', '', '2/29/2012'),
(182, 'Q2TMM003', 'DIGITAL THERMOMETER', 'OMEGA', 'HH509R', '12000447', '2015-10-12', '9/9/2016', 334, '±(1%+1°C)', 'MOLD', 'ACTIVE', 'QA/PDIP', 2, '8553', 'AAA', 'TEAM', 1870, 'YES', '9/9/2016', '2.4400', '10/13/2015', 'REMZHEL MATIAS', 'MOLD TEMP', 'within tolerance', '2015-1210.44782', '10/12/2015', '7/18/2012'),
(183, 'Q2TMM004', 'DIGITAL THERMOMETER', 'OMEGA', 'HH509R', '12000426', '2015-07-29', '5/27/2016', 304, '±(1%+1°C)', 'SOLDER DIP', 'ACTIVE', 'QA/PDIP', 2, '8553', 'AAA', 'TEAM', 1871, 'YES', '5/27/2016', '2.5100', '7/29/2015', 'ERICA MAGLIAN', 'TEMPERATURE', 'within tolerance', '2015-297.49633', '7/29/2015', '7/18/2012'),
(184, 'Q3TP001', 'THERMOCOUPLE PROBE', 'OMEGA', '88101K', '6518-62340', '2014-10-13', '7/13/2015', 273, '±1.25°C', 'MOLD', 'DEFECTIVE', 'QA/PDIP', 1, '8553', 'AAA', '', 0, 'N/A', '7/19/2012', '0.0000', '7/19/2012', '', '', 'Waiting for the availability of probe element at stores.', '2014-1310.44496', '7/27/2015', '7/19/2012'),
(185, 'Q3TP002', 'THERMOCOUPLE PROBE', 'TPC-CAL', 'TYPE K', '6519-48463', '2015-07-13', '5/12/2016', 304, '±1.25°C', 'TINDIP', 'ACTIVE', 'QA/MCAN', 2, '8553', 'AAA', 'TEAM', 0, 'N/A', '', '0.0000', '', '', '', 'within tolerance', '2015-137.45624', '7/13/2015', '7/20/2012'),
(186, 'Q3SW003', 'STOP WATCH', 'CASIO', 'HS-3(V)', '104Q07R', '2015-07-16', '5/16/2016', 304, '±1%READING', 'SOLDER DIP', 'ACTIVE', 'QA/PDIP', 2, '8553', 'AAA', 'TEAM', 1161, 'N/A', '9/29/2000', '0.0000', '9/30/1999', '', '', 'within tolerance', '2015-167.48731', '7/16/2015', '7/20/2012'),
(187, 'Q2CTS003', 'COATING THICKNESS STANDARD', 'FISCHER', 'SN/NI/CU', 'ADCSK', '2010-10-27', '10/25/2019', 3285, '±5%', 'CAL LAB', 'ACTIVE', 'CALIBRATION', 0, 'FISCH', '***', 'TEAM', 0, 'N/A', '', '0.0000', '', '', '', 'Within tolerance', '2010-2710.34954', '3/25/2013', '8/6/2012'),
(188, 'Q4HT001', 'TEMP / RH MONITOR', 'TAYLOR', 'HUMIDIGUID', '6579-35370', '2012-09-18', '9/18/2012', 0, 'N/A', 'CAL LAB', 'SERVICE', 'CALIBRATION', 3, '3803', '***', 'TEAM', 1170, 'N/A', '', '0.0000', '', '', '', 'Activated: 18 Sep 2012 for DRY box monitoring', '2012-189.35341', '', '9/18/2012'),
(189, 'Q3JL003', 'LOOP HEIGHT JIG', 'RJZ', 'JG-0005-IP', '6607-38867', '2015-11-03', '4/18/2016', 166, '±.002"', 'PDIP/FOL', 'ACTIVE', 'QA/PDIP', 1, '8553', 'AAA', '', 0, 'N/A', '10/16/2012', '0.0000', '10/16/2012', '', '', 'Within Tolerance', '2015-311.34627', '11/3/2015', '10/16/2012'),
(190, 'Q3VG001', 'VACUUM GAUGE', 'N/A', '0-30 "HG', '3902-32150', '2012-12-21', '6/21/2013', 182, '±1.5 "HG', 'CAL LAB', 'IN-ACTIVE', 'CALIBRATION', 2, '3803', '**A', '', 0, 'N/A', '11/5/2005', '0.0000', '11/5/2005', '', '', 'Within ±5% of FS', '2012-2112.36098', '6/25/2013', ''),
(191, 'Q2CP011', 'DIGITAL CALIPER', 'MITUTOYO', 'CD-6"CS', '12687150', '2015-10-31', '8/30/2016', 304, '±0.001"', 'QA/MOLD', 'ACTIVE', 'QA/PDIP', 2, '8553', 'AAA', '', 0, 'YES', '8/30/2016', '0.9600', '11/4/2015', 'REMZHEL MATIAS', 'LENGTH', 'Within tolerance', '2015-3110.43925', '11/2/2015', '5/6/2013'),
(192, 'Q4SR001', 'STAINLESS RULER', 'GEI', '2020A', 'C4576', '2013-03-27', '3/27/2013', 0, '', 'IQC AREA', 'SERVICE', 'QA/IQC', 4, '3803', '***', 'TEAM', 0, 'N/A', '', '0.0000', '', '', '', 'Within tolerance', '2013-273.56528', '', '6/12/2013'),
(193, 'Q1VG004', 'VACUUM GAUGE [DIGITAL]', 'ASHCROFT', '2074', '212190001', '2015-10-12', '10/12/2016', 365, '±0.25% FS', 'CAL LAB', 'ACTIVE', 'STANDARD', 0, 'MPC3', '***', '', 0, 'N/A', '11/6/2012', '0.0000', '11/6/2012', '', '', 'Within tolerance; Received, 12 September 2014', '2015-1210.38804', '10/19/2015', '6/17/2013'),
(194, 'Q2VG002', 'VACUUM GAUGE', 'ASHCROFT', '30 INHG', '4193-43700', '2016-01-27', '10/26/2016', 273, '±.5 PSI', 'CAL LAB', 'ACTIVE', 'CALIBRATION', 2, '8553', 'AAA', '', 0, 'N/A', '3/8/2006', '0.0000', '3/8/2006', '', '', 'within tolerance', '2016-271.57953', '1/27/2016', '2/27/2006'),
(195, 'Q2CP012', 'DIGITAL CALIPER', 'MITUTOYO', 'CD-6"CSX', '13079120', '2015-08-07', '4/5/2016', 242, '±0.0010 "', 'IQC AREA', 'ACTIVE', 'QA/IQC', 2, '8553', 'AAA', '', 0, 'YES', '4/5/2016', '0.0069', '8/7/2015', 'KHALI BASINANG', 'DIMENSION', 'within tolerance', '2015-78.53969', '8/7/2015', '7/9/2013'),
(196, 'Q2TP001', 'THERMOCOUPLE PROBE (REFERENCE)', 'TPC', 'TYPE K', '6582-50333', '2015-09-21', '9/20/2016', 365, '±0.5°C', 'CAL LAB', 'ACTIVE', 'CALIBRATION', 2, '8553', 'AAA', '', 0, 'N/A', '', '0.0000', '', '', '', 'Measurement Uncertainty at ±0.182805457 degrees Celsuis', '2015-219.63987', '9/24/2015', '9/21/2012'),
(197, 'Q3ION001', 'AIR IONIZER', 'SIMCO', 'AEROSTATXC', '122840026123214', '2015-11-14', '5/13/2016', 182, 'TCS-5073', 'DIE BANK', 'ACTIVE', 'QA/IQC', 2, '8553', 'AAA', 'TEAM', 0, 'N/A', '', '0.0000', '', '', '', 'Within tolerance', '2015-1411.63102', '11/14/2015', '10/31/2013'),
(198, 'Q3ION002', 'AIR IONIZER', 'SIMCO ION', 'AEROSTATXC', '122840023123211', '2015-11-14', '5/13/2016', 182, 'TCS-5073', 'DIE BANK', 'ACTIVE', 'QA/IQC', 2, '8553', 'AAA', 'TEAM', 0, 'N/A', '', '0.0000', '', '', '', 'Within tolerance', '2015-1411.63211', '11/14/2015', '10/31/2013'),
(199, 'Q4TMM005', 'GLASS THERMOMETER', 'N/A', 'N/A', '7218-34220', '2014-06-19', '6/19/2014', 0, '±1.25°C', 'TINDIP', 'SERVICE', 'STANDARD', 2, '3803', '***', 'TEAM', 0, 'N/A', '', '0.0000', '', '', '', 'Within tolerance', '2014-196.34204', '', '6/19/2014'),
(200, 'Q4HDM002', 'HYDROMETER', '', '', '7252-42000', '2014-07-23', '1/21/2015', 182, '± °C', 'EOL', 'SERVICE', 'QA/PDIP', 1, '8553', '**A', '', 0, 'N/A', '1/21/2004', '0.0000', '1/21/2004', '', '', 'Within tolerance', '2014-237.41978', '', '7/23/2014'),
(201, 'Q3JGC001', 'CONNECTOR GAGE JIG [ASPM]', 'N/A', 'MK0352', 'MJ640A.ED03', '2015-11-27', '2/22/2016', 86, 'MSC DRAWNG', 'QA IQC/ASPM', 'ACTIVE', 'QA/IQC', 1, '8553', 'AAA', '', 0, 'N/A', '9/22/2014', '0.0000', '9/22/2014', '', '', 'within tolerance', '2015-2711.58338', '11/27/2015', '9/22/2014'),
(202, 'Q2PRG001', 'PRESSURE GAUGE', 'WIKA', '232.34 4.5', '7376-36302', '2015-12-02', '8/1/2016', 242, '±20 PSI', 'CAL LAB', 'ACTIVE', 'STANDARD', 2, '8553', 'AAA', 'TEAM', 0, 'N/A', '', '0.0000', '', '', '', 'Within Tolerance', '2015-212.56674', '12/2/2015', '11/24/2014'),
(203, 'Q3GS002', 'GROUND STRAP CHECKER', 'BOTECH', 'MT-100', '099003', '2015-02-13', '8/14/2015', 182, '', 'CAL LAB', 'IN-ACTIVE', 'CALIBRATION', 2, '3803', '***', 'TEAM', 0, 'N/A', '', '0.0000', '12/20/2000', '', '', 'Adjusted to required specification', '2015-132.52091', '', '2/13/2015'),
(204, 'Q3TC009', 'TEMP CONTROLLER', 'OMRON', 'E5CN-R2MT', '7462-42175', '2015-10-16', '4/15/2016', 182, '±5°C', 'PCT/FA', 'ACTIVE', 'QA/FA', 1, '8553', '*AA', '', 0, 'N/A', '2/18/2015', '0.0000', '2/18/2015', '', '', 'within tolerance', '2015-1610.65194', '10/16/2015', '2/18/2015'),
(205, 'Q3JL004', 'LOOP HEIGHT JIG [TO-220]', 'PEREZONIC', 'JG-0004-IP', '7495-62795', '2015-03-23', '4/17/2015', 30, '±0.002"', 'FOL/PDIP', 'FOR REPAIR', 'QA/PDIP', 2, '8553', '**B', 'TEAM', 0, 'N/A', '9/2/2002', '0.0000', '3/6/2002', '', '', 'Out of tolerance;Replaced by vendor,still in CAL LAB after RTV.', '2015-233.45523', '10/14/2015', '3/26/2015'),
(206, 'Q3JPM010', 'PACKAGE MISMATCH JIG [TO-268]', 'PEREZONIC', 'JG-0066-IP', '7495-62796', '2016-02-08', '4/27/2016', 79, '±0.025MM', 'MOLD', 'ACTIVE', 'QA/PDIP', 2, '8553', 'AAA', 'TEAM', 0, 'N/A', '9/2/2002', '0.0000', '3/6/2002', '', '', 'within tolerance', '2016-82.46680', '2/8/2016', '3/26/2015'),
(207, 'Q3JP001', 'PLANARITY JIG [TO-268]', 'PEREZONIC', 'JG-0102-IP', '7495-62797', '2015-03-23', '4/17/2015', 30, '±0.002"', '4TH OPT', 'FOR REPAIR', 'QA/PDIP', 2, '8553', '**B', 'TEAM', 0, 'N/A', '9/2/2002', '0.0000', '3/6/2002', '', '', 'Out of tolerance;Return to vendor.', '2015-233.60478', '9/28/2015', '3/26/2015'),
(208, 'Q2FOG002', 'DIGITAL FORCE GAUGE', 'CHATILLON', 'DFE2-010', 'T20893', '2015-10-17', '4/15/2016', 182, '±0.013KG', 'FOL/PDIP-QA', 'ACTIVE', 'QA/PDIP', 2, '8553', '**A', 'TEAM', 0, 'YES', '4/15/2016', '0.0600', '10/17/2015', 'R.SEMENIANO', 'WIREPULL STRENG', 'For CPK evaluation', '2015-1710.64764', '10/17/2015', '3/23/2015'),
(209, 'Q3JL005', 'SMPD LOOP HEIGHT JIG (80 MIL)', 'N/A', 'JG-213-IP', '7527-39292', '2016-01-16', '3/25/2016', 70, '±79±5 MILS', 'PDIP/FOL', 'ACTIVE', 'QA/PDIP', 1, '8553', 'AAA', 'TEAM', 0, 'N/A', '', '0.0000', '', '', '', 'Within tolerance', '2016-161.58016', '1/16/2016', '4/28/2015'),
(210, 'Q3JL006', 'LOOP HEIGHT JIG (SOT-227)', 'TPC', 'JG-0089-IP', '3689-45033', '2015-05-09', '5/9/2016', 365, '±0.003"', 'FOL', 'ACTIVE', 'QA/PDIP', 2, '8553', 'AAA', 'TEAM', 0, 'N/A', '7/19/2004', '0.2800', '6/4/2004', 'SHIELA RAMIREZ', 'FORCE', 'within tolerance', '2015-95.59268', '5/9/2015', '10/19/2004'),
(211, 'Q4HDM003', 'HYDROMETER (LIGHT)', 'N/A', '0.7 TO 1.0', '7558-35154', '2015-05-25', '5/25/2015', 0, '±0.1 BAUME', 'SOLDER DIP', 'SERVICE', 'QA/MCAN', 1, '3803', '***', '', 0, 'N/A', '5/25/2015', '0.0000', '5/25/2015', '', '', 'Within tolerance', '2015-255.35076', '', '5/25/2015'),
(212, 'Q4HDM004', 'HYDROMETER (HEAVY)', 'N/A', '1.0 TO 2.0', '7558-35155', '2015-05-25', '5/25/2015', 0, '±0.1 BAUME', 'SOLDER DIP', 'SERVICE', 'QA/MCAN', 1, '3803', '***', '', 0, 'N/A', '5/25/2015', '0.0000', '5/25/2015', '', '', 'Within tolerance', '2015-255.35234', '', '5/25/2015'),
(213, 'Q4HDM005', 'HYDROMETER (LIGHT)', 'N/A', '0.7 TO 1.0', '7558-35156', '2015-05-25', '5/25/2015', 0, '±0.1 BAUME', 'SOLDER DIP', 'SERVICE', 'QA/MCAN', 1, '3803', '***', '', 0, 'N/A', '5/25/2015', '0.0000', '5/25/2015', '', '', 'Within tolerance', '2015-255.35359', '', '5/25/2015'),
(214, 'Q4HDM006', 'HYDROMETER (HEAVY)', 'N/A', '1.0 TO 2.0', '7558-35157', '2015-05-25', '5/25/2015', 0, '±0.1 BAUME', 'SOLDER DIP', 'SERVICE', 'QA/MCAN', 1, '3803', '***', '', 0, 'N/A', '5/25/2015', '0.0000', '5/25/2015', '', '', 'Within tolerance', '2015-255.35439', '', '5/25/2015'),
(215, 'Q3JL007', 'LOOP HEIGHT JIG (DEI)', 'RJZ', 'JG-0071-IP', '7587-44502', '2016-01-15', '3/21/2016', 65, '±0.005"', 'FOL/QA', 'ACTIVE', 'QA/PDIP', 1, '8553', 'AAA', 'TEAM', 0, 'N/A', '7/19/2004', '0.2800', '6/4/2004', 'SHIELA RAMIREZ', 'FORCE', 'within tolerance', '2016-151.58699', '1/15/2016', '7/9/2015'),
(216, 'Q3JL009', 'LOOP HEIGHT JIG(TO-220)', 'PEREZONIC', 'JG-0004-IP', '7653-59651', '2016-01-15', '3/14/2016', 58, '±0.002 "', 'FOL/QA PLASTIC', 'ACTIVE', 'QA/PDIP', 1, '8553', 'AAA', 'TEAM', 0, 'N/A', '12/8/2004', '0.0000', '12/8/2004', '', '', 'Within tolerance.', '2016-151.50776', '1/15/2016', '8/28/2015'),
(217, 'Q3JPM011', 'PACKAGE MISMATCH JIG (I4PAK)', 'PEREZONIC', 'JG-0229-IP', '7668-46732', '2016-02-08', '4/6/2016', 58, '±0.25 MM', 'MOLD', 'ACTIVE', 'QA/PDIP', 1, '8553', 'AAA', 'TEAM', 0, 'N/A', '', '0.0000', '', '', '', 'Within tolerance.', '2016-82.65415', '2/8/2016', '9/12/2015'),
(218, 'Q3JP002', 'PLANARITY JIG (SMPD)', 'PEREZONIC', 'JG-0224-IP', '7668-46940', '2015-11-05', '12/11/2015', 37, 'JG-0224-IP', 'QA-PEOL', 'FOR REPAIR', 'QA/PDIP', 2, '8553', '*AA', 'TEAM', 0, 'N/A', '', '0.0000', '', '', '', 'Within tolerance but fail in functional test.', '2015-511.62094', '12/15/2015', '9/12/2015'),
(219, 'Q3JP003', 'PLANARITY JIG(TO-268)', 'PEREZONIC', 'JG-0069-IP', '7671-62329', '2016-01-08', '2/29/2016', 51, '±0.002"', '4TH OPT', 'ACTIVE', 'QA/PDIP', 2, '8553', 'AAA', '', 0, 'N/A', '9/15/2015', '0.0000', '9/15/2015', '', '', 'Within tolerance.Change drawing no. from JG-0102-IP to JG-0069-IP.', '2016-81.64772', '1/11/2016', '9/15/2015'),
(220, 'Q2DG002', 'DIAL INDICATOR', 'MITUTOYO', '2046F', '7691-61863', '2016-02-06', '9/5/2016', 212, '±0.01 MM', 'CAL LAB.', 'ACTIVE', 'CALIBRATION', 2, '8553', '*AA', 'TEAM', 0, 'N/A', '5/2/2014', '0.0000', '5/2/2014', '', '', 'Within tolerance', '2016-62.66053', '2/8/2016', '10/5/2015'),
(221, 'Q1WT007', 'RECTANGULAR TEST WEIGHT(20KG)', 'FUJI', 'CLASS M1', '10007700', '2015-08-27', '8/26/2016', 365, '±120MG', 'CAL LAB', 'ACTIVE', 'STANDARD', 0, 'FPSI', '***', '', 0, 'N/A', '7/12/2003', '0.0000', '7/12/2003', '', '', 'Refer to RTS No.WP15-0339', '2015-278.56483', '', '10/30/2015'),
(222, 'Q3SW004', 'STOP WATCH', 'SPALDING', 'N/A', '7740-57005', '2015-11-25', '5/25/2016', 182, '±5%', 'QA MOLD', 'ACTIVE', 'QA/PDIP', 2, '8553', '**A', '', 0, 'N/A', '', '0.0000', '', '', '', 'Within tolerance.', '2015-2511.39494', '11/24/2015', '11/23/2015');

-- --------------------------------------------------------

--
-- Table structure for table `personnel`
--

CREATE TABLE IF NOT EXISTS `personnel` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fname` varchar(255) NOT NULL,
  `lname` varchar(255) NOT NULL,
  `department` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `personnel`
--

INSERT INTO `personnel` (`id`, `fname`, `lname`, `department`, `type`) VALUES
(1, 'Rexie', 'Galban', 'MIS', 'Calibrator 1'),
(2, 'Arjay', 'Macabia', 'MIS', 'Calibrator 2');

-- --------------------------------------------------------

--
-- Table structure for table `reminder`
--

CREATE TABLE IF NOT EXISTS `reminder` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `dateRemind` date NOT NULL,
  `message` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=12 ;

--
-- Dumping data for table `reminder`
--

INSERT INTO `reminder` (`id`, `dateRemind`, `message`, `status`) VALUES
(1, '2016-02-24', 'Go to calibration room!', 'Pending'),
(2, '2016-02-24', 'Pending! - XLS format.', 'Pending'),
(3, '2016-02-25', 'Special non-working holiday.', 'Pending'),
(4, '0000-00-00', 'DASD', 'Pending'),
(5, '0000-00-00', 'FDF', 'Pending'),
(6, '2016-02-18', 'FSDFD', 'Pending'),
(7, '0000-00-00', 'uy', 'Pending'),
(8, '0000-00-00', 'df', 'Pending'),
(9, '0000-00-00', 'fsdf', 'Pending'),
(10, '0000-00-00', 'dasd', 'Pending'),
(11, '0000-00-00', 'fsdf', 'Pending');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `username` (`username`),
  KEY `password` (`password`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `email`, `type`) VALUES
(1, 'Eixer23', '09231992', 'rexie.galban@teamglac.com', 'Administrator'),
(2, 'admin', 'admin', 'admin@teamglac.com', 'Administrator'),
(3, 'Orlando', 'Rellores', 'orlando.rellores@teamglac.com', 'Adminisrtrator');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
