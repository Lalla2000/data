-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 07, 2025 at 07:15 AM
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
-- Database: `pharmacy`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `phone` varchar(10) NOT NULL,
  `photo` varchar(50) NOT NULL,
  `role` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `name`, `email`, `phone`, `photo`, `role`) VALUES
(13, 'admin', 'admin@gmail.com', '7876567656', 'profile_1720095590477.png', 'Admin');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `photo` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `name`, `photo`) VALUES
(1, 'injection', 'category_1722517544709.webp'),
(2, 'tablet', 'category_1720605150038.png'),
(4, 'Saline Solution', 'category_1721197532614.jpg'),
(5, 'First Aid', 'category_1721198389380.jpeg'),
(6, 'Syrupd', 'category_1736175888376.webp'),
(9, 'stethoscope', 'category_1736163354144.jpeg'),
(13, 'Aa', 'category_1736175976017.jpg'),
(14, 'Rr', 'category_1736176035941.webp'),
(15, 'Cream', 'category_1736192012897.jpeg'),
(16, 'Oil', 'category_1736214388337.jpeg');

-- --------------------------------------------------------

--
-- Table structure for table `company`
--

CREATE TABLE `company` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `photo` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `company`
--

INSERT INTO `company` (`id`, `name`, `photo`) VALUES
(4, 'Dr. Ortho', 'company_1736214703517.jpeg'),
(5, 'Reckitt Benckiser', 'company_1720680547617.png'),
(9, 'Cosmo Pharma Laboratories Ltd.', 'company_1721200549215.jpeg'),
(13, 'ZOXIL S Pvt Ltd', 'company_1721209976440.jpg'),
(14, 'GSK Consumer', 'company_1721365267031.webp'),
(16, 'Syna Pharma', 'company_1721885354274.png'),
(18, 'ss', 'company_1736229882756.png');

-- --------------------------------------------------------

--
-- Table structure for table `composition`
--

CREATE TABLE `composition` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `category` varchar(11) DEFAULT NULL,
  `subcategory` varchar(11) DEFAULT NULL,
  `company` varchar(11) DEFAULT NULL,
  `photo` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `composition`
--

INSERT INTO `composition` (`id`, `name`, `category`, `subcategory`, `company`, `photo`) VALUES
(1, 'composition 1', '1', '5', '5', 'composition_1720680778660.png'),
(2, 'Calcium Carbonate', '1', '4', '4', 'composition_1720680868917.png'),
(9, 'Diclofenac', NULL, NULL, NULL, NULL),
(11, 'Ethanol', NULL, NULL, NULL, NULL),
(12, 'Paracetamol', NULL, NULL, NULL, NULL),
(14, 'Turpentine Oil', NULL, NULL, NULL, NULL),
(15, 'Gandhapura', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `description`
--

CREATE TABLE `description` (
  `id` int(11) NOT NULL,
  `category` varchar(200) NOT NULL,
  `medicine` varchar(200) NOT NULL,
  `take` varchar(200) NOT NULL,
  `description` int(11) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `qty` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `description`
--

INSERT INTO `description` (`id`, `category`, `medicine`, `take`, `description`, `date`, `qty`) VALUES
(84, 'tablet', 'Dolo 650mg Strip Of 15', 'after lunch', 28, '2024-09-20', '10'),
(86, 'tablet', 'Dolo 650mg Strip Of 15', 'after lunch', 30, '2024-09-23', '10'),
(87, 'Syrup', 'Himalaya Koflet Cough Syrup 100ml', 'after lunch', 30, '2024-09-23', '2'),
(88, 'tablet', ' Bonex-D', '1', 31, '2025-01-07', '1'),
(89, 'tablet', ' Bonex-D', '1', 32, '2025-01-07', '1'),
(90, 'tablet', 'Crocin 650', '1', 33, '2025-01-07', '1'),
(91, 'tablet', ' Bonex-D', '1', 34, '2025-01-07', '1'),
(92, 'tablet', ' Bonex-D', '1', 35, '2025-01-07', '1');

-- --------------------------------------------------------

--
-- Table structure for table `doctor`
--

CREATE TABLE `doctor` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `address` varchar(100) NOT NULL,
  `phone` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `role` varchar(50) NOT NULL,
  `photo` varchar(100) DEFAULT NULL,
  `hospital` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `doctor`
--

INSERT INTO `doctor` (`id`, `name`, `address`, `phone`, `email`, `role`, `photo`, `hospital`) VALUES
(4, 'Pravin Mendhe', 'Kharbi Nagpur', '9579908433', 'vipin30@gmail.com', 'Doctor', '', NULL),
(5, 'Dr. Mukesh Kumar', 'Medical Square Nagpur', '8987678767', 'mukesh@gmail.com', 'Doctor', '', 'medical'),
(6, 'Dr. Kanika Sharma', 'Sitabuildi Nagpur', '6543210987', 'kanika@gmail.com', 'Doctor', '', 'Lata Mangeshkar Hospital'),
(7, 'Dr.patil', 'manish nagar', '8987676567', 'patil@gmail.com', 'Doctor', '', 'naik'),
(9, 'Dr. Sandesh ', 'Vyankatesh Nagar , Kdk college road nagpur', '7410325896', 'sandesh@gmail.com', 'Doctor', '', 'avanti'),
(12, 'Dr. Pravin Mendhe', 'Wardhman Nagpur', '9989876765', 'pravin@gmail.com', 'Doctor', NULL, 'Shri Radhakrishna Hospital '),
(15, 'Dr. Vilas  Mehta', 'Khamla Nagpur', '8987677678', 'vilas@gmail.com', 'Doctor', NULL, 'Orange City Hospital'),
(17, 'Dr. Lalit Kapoor', 'Nandanvan Nagpur', '7666869109', 'lalit@gmail.com', 'Doctor', NULL, 'Seven Star');

-- --------------------------------------------------------

--
-- Table structure for table `doctor_description`
--

CREATE TABLE `doctor_description` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `date` date NOT NULL,
  `doctor` int(11) NOT NULL,
  `hospital` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `doctor_description`
--

INSERT INTO `doctor_description` (`id`, `name`, `date`, `doctor`, `hospital`) VALUES
(28, 'pranali gupta', '2024-09-20', 9, ''),
(30, 'ashwini', '2024-09-23', 9, ''),
(31, 'Ashwini Desai', '2025-01-07', 17, ''),
(32, 'Ashwini Desai', '2025-01-07', 15, ''),
(33, 'Ashwini Desai', '2025-01-07', 15, 'Orange City Hospital'),
(34, 'Arjun Verma', '2025-01-07', 15, 'Orange City Hospital'),
(35, 'Ashwini Desai', '2025-01-07', 12, '');

-- --------------------------------------------------------

--
-- Table structure for table `expire_medicine`
--

CREATE TABLE `expire_medicine` (
  `id` int(11) NOT NULL,
  `medicine` int(11) NOT NULL,
  `stock` varchar(500) NOT NULL,
  `balance` varchar(500) NOT NULL,
  `expire` date NOT NULL,
  `batch` varchar(200) NOT NULL,
  `min_stock` varchar(500) NOT NULL,
  `phar` int(11) DEFAULT NULL,
  `pharmacy` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `expire_medicine`
--

INSERT INTO `expire_medicine` (`id`, `medicine`, `stock`, `balance`, `expire`, `batch`, `min_stock`, `phar`, `pharmacy`) VALUES
(14, 7, '100', '50', '2024-07-28', 'B4487BN', '75', 0, 20),
(15, 6, '50', '50', '2024-08-16', 'BHN222', '10', NULL, 21),
(26, 5, '100', '100', '2024-11-03', 'B', '10', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `hospital`
--

CREATE TABLE `hospital` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `phone` varchar(12) NOT NULL,
  `location` int(11) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `role` varchar(20) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `hospital`
--

INSERT INTO `hospital` (`id`, `name`, `phone`, `location`, `email`, `role`, `address`) VALUES
(5, 'medical', '7666869109', 4, 'kodikk304@gmail.com', 'Hospital', 'nagpur'),
(6, 'Seven Star', '1234567890', 2, 'sevenstar@gmail.com', 'Hospital', 'Nandanvan'),
(8, 'Lata Mangeshkar Hospital', '7122530347', 8, 'latamangeshkar@gmail.com', 'Hospital', 'YMCA Complex, Maharajbagh Rd, Sitabuldi, Nagpur, Maharashtra 440012'),
(10, 'Shri Radhakrishna Hospital ', '8999768736', 9, 'shriradhakrishna@gmail.com', 'Hospital', 'Central Ave, Transport Nagar, East Wardhaman Nagar, Nagpur, Maharashtra 440008'),
(11, 'Orange City Hospital', '7126634800', 7, 'orangecity@gmail.com', 'Hospital', '19, Khamla Road Veer Sawarkar Square Opposite to Jupiter College, Maharashtra 440015');

-- --------------------------------------------------------

--
-- Table structure for table `ipd`
--

CREATE TABLE `ipd` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `address` varchar(100) NOT NULL,
  `weight` varchar(48) NOT NULL,
  `age` varchar(100) NOT NULL,
  `phone` varchar(100) NOT NULL,
  `problem` varchar(100) NOT NULL,
  `status` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `ipd`
--

INSERT INTO `ipd` (`id`, `name`, `address`, `weight`, `age`, `phone`, `problem`, `status`) VALUES
(8, 'Ashwini Desai', 'manish nagar', '55', '23', '8987676567', 'health problem', 'Admit'),
(9, 'Arjun Verma', 'Digori Nagpur', '70', '28', '9876543210', 'Fever and Headache', 'Admit'),
(10, 'Nisha Patel', 'Manewada Nagpur', '60', '29', '9871234567', 'High Blood Pressure', 'Admit');

-- --------------------------------------------------------

--
-- Table structure for table `location`
--

CREATE TABLE `location` (
  `id` int(11) NOT NULL,
  `district` varchar(100) NOT NULL,
  `city` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `location`
--

INSERT INTO `location` (`id`, `district`, `city`) VALUES
(1, 'nagpur', 'kalmeshwar'),
(2, 'nagpur', 'Ghoghali'),
(3, 'Nagpur', 'Bardi'),
(4, 'Nagpur', 'Pardi'),
(7, 'Nagpur', 'Khamla'),
(8, 'Nagpur', 'Sitabuldi'),
(9, 'Nagpur', 'Wardhaman Nagar,');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(100) NOT NULL,
  `role` varchar(11) NOT NULL,
  `register` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`id`, `username`, `password`, `role`, `register`) VALUES
(34, 'sagar@gmail.com', '$2a$10$l0W1oFP8I9XLetbGRfUgberU3iPJ9YJrMFlwaljvj1IwyPsJg.FsK', 'Pharmacy', 20),
(36, 'param@gmail.com', '$2a$10$dvW5WWpc2A7v2EIwL/Stcel07Pqqm8svAaIjo6hSCKtsgyCLVXAG2', 'Pharmacy', 21),
(39, 'asmitagaikwad2000@gmail.com', '$2a$10$FDe7OyvF2J6ipYpG68klTeqRtVGEUKbYNOqwSeraDXWSSuUbKMjgO', 'Pharmacy', 22),
(42, 'pravin@gmail.com', '$2a$10$K8uyu9Lx.d9wpOEqsJgdVOCv4a0QyEl/VqB5e5VJtoDvB0pSOKgjK', 'Doctor', 12),
(45, 'vilas@gmail.com', '$2a$10$DBcvSEjfs1FsMm/GcObBie.727XJ6bea0pr4kvdTRD85AD9MCqpiy', 'Doctor', 15),
(49, 'admin@gmail.com', '$2a$10$l0W1oFP8I9XLetbGRfUgberU3iPJ9YJrMFlwaljvj1IwyPsJg.FsK', 'Admin', 13),
(51, 'raunaksirsam20@gmail.com', '$2a$10$MDMMth3Eb//m8B72wcikpeO2nAFxhOzwxFmF7SoQlj5/14.niROTe', 'Hospital', 3),
(53, 'mypharmacy@gmail.com', '$2a$10$zFeiFAM7kwwFjjKv6Ab04ehDdCvaAXd5V88Ck.4irI7LtxQx9EcaO', 'Pharmacy', 24),
(55, 'lalit@gmail.com', '$2a$10$f/2x8X2T9p9cbJWqEFHqmOkPaIJv.78LJs3z13u6pdkcFhqgw9Aqu', 'Doctor', 17),
(56, 'kodikk304@gmail.com', '$2a$10$Ks8tYWvb2OzkIs.wEo0NvOU4fb5TJ6UEEVhAqbHA2gBKHsZEdFbEm', 'Hospital', 5),
(57, 'sevenstar@gmail.com', '$2a$10$wDx0cDnh91DeSlAQTUuL1emI/QoH5Ik6xWTTGKKpiYgOSYm5Kl5Iu', 'Hospital', 6),
(61, 'latamangeshkar@gmail.com', '$2a$10$JOkEz22MFxQH9LJAf9NOxewYNMdhxDu4EKDOPf74K5QtBBawE7.5e', 'Hospital', 8),
(63, 'shriradhakrishna@gmail.com', '$2a$10$QX/1AwAU1FUanX/PjEGrTuzx5l.cQtl0QXtfn1KHnM.Cc4Emq9J0i', 'Hospital', 10),
(64, 'orangecity@gmail.com', '$2a$10$Zg9xpgA6Qaj4MdSX2D0WSOGXEpdYm9o/M/4xn/I8H0HpNmdKPnGLO', 'Hospital', 11);

-- --------------------------------------------------------

--
-- Table structure for table `medicine`
--

CREATE TABLE `medicine` (
  `id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `category` int(11) NOT NULL,
  `subcategory` int(11) NOT NULL,
  `composition` varchar(200) DEFAULT NULL,
  `company` varchar(200) DEFAULT NULL,
  `unit` varchar(200) DEFAULT NULL,
  `price` varchar(200) NOT NULL,
  `Manufacturing` date DEFAULT NULL,
  `expiry` date DEFAULT NULL,
  `photo` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `medicine`
--

INSERT INTO `medicine` (`id`, `name`, `category`, `subcategory`, `composition`, `company`, `unit`, `price`, `Manufacturing`, `expiry`, `photo`) VALUES
(5, ' Bonex-D', 2, 8, 'Calcium Carbonate', 'Cosmo Pharma Laboratories Ltd.', 'Dose', '25', NULL, NULL, 'medicine_1736193448259.jpeg'),
(6, 'Crocin 650', 2, 8, 'Paracetamol', 'GSK Consumer', 'Dose', '20', NULL, NULL, 'medicine_1736192880379.jpeg'),
(7, 'Benadryl', 6, 9, 'Ethanol', 'Syna Pharma', 'ml', '39.36', NULL, NULL, 'medicine_1736192573181.jpeg'),
(15, 'Moove', 15, 16, 'Turpentine Oil', 'Reckitt Benckiser', 'Strip', '100', NULL, NULL, 'medicine_1736193787506.jpeg'),
(16, 'Dr. Ortho', 16, 17, 'Gandhapura', 'Dr. Ortho', 'ml', '150', NULL, NULL, 'medicine_1736214773350.jpeg');

-- --------------------------------------------------------

--
-- Table structure for table `opd`
--

CREATE TABLE `opd` (
  `id` int(11) NOT NULL,
  `name` varchar(45) NOT NULL,
  `address` varchar(35) NOT NULL,
  `weight` varchar(35) NOT NULL,
  `age` int(11) NOT NULL,
  `phone` varchar(12) NOT NULL,
  `problem` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `opd`
--

INSERT INTO `opd` (`id`, `name`, `address`, `weight`, `age`, `phone`, `problem`, `status`) VALUES
(1, 'Pragati Sharma', 'nagpur besa', '45', 23, '8987887674', 'bp low problem', 'Check_Up'),
(2, 'Ashwini Desai', 'manish nagar', '55', 23, '8987676567', 'health problem', 'Admit'),
(4, 'Raunak Sirsam', 'Near hp gas godawn bhartwada nagpur', '55', 23, '7666869109', 'Fever', 'Check_Up'),
(8, 'Arjun Verma', 'Digori Nagpur', '70', 28, '9876543210', 'Fever and Headache', 'Discharge'),
(9, 'Nisha Patel', 'Manewada Nagpur', '60', 29, '9871234567', 'High Blood Pressure', 'Admit');

-- --------------------------------------------------------

--
-- Table structure for table `order_table`
--

CREATE TABLE `order_table` (
  `id` int(11) NOT NULL,
  `grand_total` varchar(1000) NOT NULL,
  `customer` varchar(200) DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `orderid` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `order_table`
--

INSERT INTO `order_table` (`id`, `grand_total`, `customer`, `date`, `orderid`) VALUES
(105, '60', 'pranali gupta', '2024-10-16 15:24:14', '#PH32105'),
(106, '200', 'Aa', '2025-01-06 15:27:30', '#PH32106'),
(107, '78.72', 'Ashwini Desai', '2025-01-07 11:44:29', '#PH32107');

-- --------------------------------------------------------

--
-- Table structure for table `pharmacy`
--

CREATE TABLE `pharmacy` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `owner` varchar(100) NOT NULL,
  `address` varchar(100) NOT NULL,
  `phone` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `role` varchar(50) NOT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `hospital` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pharmacy`
--

INSERT INTO `pharmacy` (`id`, `name`, `owner`, `address`, `phone`, `email`, `role`, `photo`, `hospital`) VALUES
(20, 'sagar pharmacy', 'Dr. Prathap C. Reddy', 'Sitabuldi Nagpur', '8987676567', 'sagar@gmail.com', 'Pharmacy', '', 'Lata Mangeshkar Hospital'),
(21, 'Param Medicose', 'Madhukar Gangadi', 'Wardhman Nagpur', '7452369882', 'param@gmail.com', 'Pharmacy', '', 'Shri Radhakrishna Hospital '),
(22, 'asmita gaikwad', 'Dharmil Sheth', 'Khamla Nagpur', '7410560033', 'asmitagaikwad2000@gmail.com', 'Pharmacy', '', 'Orange City Hospital'),
(24, 'Mypharmacy ', 'Pradeep Dadha', 'Jagnade Square Nagpur', '7666869106', 'mypharmacy@gmail.com', 'Pharmacy', NULL, 'Seven Star');

-- --------------------------------------------------------

--
-- Table structure for table `role`
--

CREATE TABLE `role` (
  `id` int(11) NOT NULL,
  `role` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `role`
--

INSERT INTO `role` (`id`, `role`) VALUES
(5, 'Doctor'),
(6, 'Admin'),
(10, 'Pharmacy'),
(12, 'Hospital');

-- --------------------------------------------------------

--
-- Table structure for table `stock`
--

CREATE TABLE `stock` (
  `id` int(11) NOT NULL,
  `medicine` int(11) NOT NULL,
  `stock` varchar(100) NOT NULL,
  `balance` varchar(100) NOT NULL,
  `pharmacy` int(11) DEFAULT NULL,
  `expire` date DEFAULT NULL,
  `batch` varchar(200) NOT NULL,
  `min_stock` varchar(10) NOT NULL,
  `stockin` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `stock`
--

INSERT INTO `stock` (`id`, `medicine`, `stock`, `balance`, `pharmacy`, `expire`, `batch`, `min_stock`, `stockin`) VALUES
(37, 5, '100', '90', 20, '2024-11-02', 'A', '10', 'Pharmacy'),
(50, 15, '80', '40', NULL, '2026-01-07', 'C', '40', 'Admin'),
(51, 16, '150', '100', 22, '2026-06-07', 'E', '50', 'Pharmacy');

-- --------------------------------------------------------

--
-- Table structure for table `stock_maintain`
--

CREATE TABLE `stock_maintain` (
  `id` int(11) NOT NULL,
  `pharmacy` int(11) DEFAULT NULL,
  `alloted` varchar(200) DEFAULT NULL,
  `total` varchar(200) DEFAULT NULL,
  `balance` varchar(200) DEFAULT NULL,
  `medicine` int(11) DEFAULT NULL,
  `stock_id` int(11) DEFAULT NULL,
  `stockdate` date DEFAULT NULL,
  `pharmacy_balance` varchar(300) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `stock_maintain`
--

INSERT INTO `stock_maintain` (`id`, `pharmacy`, `alloted`, `total`, `balance`, `medicine`, `stock_id`, `stockdate`, `pharmacy_balance`) VALUES
(3, 20, '10', '100', '90', 6, 39, '2024-10-10', '0'),
(4, 21, '10', '100', '90', 10, 42, '2024-10-10', '10'),
(5, 20, '10', '100', '90', 5, 37, '2024-10-16', '7'),
(6, 24, '12', '22', '10', 7, 47, '2025-01-06', '10'),
(7, 24, '40', '80', '40', 15, 50, '2025-01-07', '40'),
(8, 21, '100', '200', '100', 7, 48, '2025-01-07', '98'),
(9, 22, '50', '150', '100', 16, 51, '2025-01-07', '50');

-- --------------------------------------------------------

--
-- Table structure for table `subcategory`
--

CREATE TABLE `subcategory` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `category` int(11) NOT NULL,
  `photo` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `subcategory`
--

INSERT INTO `subcategory` (`id`, `name`, `category`, `photo`) VALUES
(8, 'Dolo', 2, 'subcategory_1721730428198.webp'),
(9, 'Cough Syrup', 6, 'subcategory_1721884785202.jpeg'),
(16, 'Pain Relief', 15, 'subcategory_1736192106019.jpeg'),
(17, 'Muscle Pain', 16, 'subcategory_1736214499947.jpeg');

-- --------------------------------------------------------

--
-- Table structure for table `suborder`
--

CREATE TABLE `suborder` (
  `id` int(11) NOT NULL,
  `medicine` int(11) NOT NULL,
  `expire` date DEFAULT NULL,
  `qty` varchar(500) NOT NULL,
  `medicine_price` varchar(500) NOT NULL,
  `total` varchar(500) NOT NULL,
  `category` varchar(200) DEFAULT NULL,
  `order_id` varchar(300) NOT NULL,
  `phamacy_id` varchar(200) NOT NULL,
  `subcategory` varchar(200) DEFAULT NULL,
  `medicine_name` varchar(200) DEFAULT NULL,
  `batch` varchar(200) DEFAULT NULL,
  `reason` varchar(300) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `suborder`
--

INSERT INTO `suborder` (`id`, `medicine`, `expire`, `qty`, `medicine_price`, `total`, `category`, `order_id`, `phamacy_id`, `subcategory`, `medicine_name`, `batch`, `reason`) VALUES
(99, 5, NULL, '3', '20', '60', 'tablet', '105', '20', 'Dolo', 'Dolo 650mg Strip Of 15', NULL, 'reason for patient'),
(100, 6, NULL, '10', '20', '200', 'tablet', '106', '20', 'Dolo', 'Crocin 650', NULL, 'Headache '),
(101, 7, NULL, '2', '39.36', '78.72', 'Syrupd', '107', '24', 'Cough Syrup', 'Benadryl', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `units`
--

CREATE TABLE `units` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `category` varchar(11) DEFAULT NULL,
  `subcategory` varchar(11) DEFAULT NULL,
  `company` int(11) DEFAULT NULL,
  `composition` varchar(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `units`
--

INSERT INTO `units` (`id`, `name`, `category`, `subcategory`, `company`, `composition`) VALUES
(6, 'Strip', '', '', 0, ''),
(7, 'ml', '', '', 0, ''),
(12, 'Dose', '', '', NULL, '');

-- --------------------------------------------------------

--
-- Table structure for table `variant`
--

CREATE TABLE `variant` (
  `id` int(11) NOT NULL,
  `name` varchar(11) NOT NULL,
  `category` int(11) NOT NULL,
  `subcategory` int(11) NOT NULL,
  `company` int(11) NOT NULL,
  `photo` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`),
  ADD KEY `role` (`role`) USING BTREE;

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `company`
--
ALTER TABLE `company`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `composition`
--
ALTER TABLE `composition`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `description`
--
ALTER TABLE `description`
  ADD PRIMARY KEY (`id`),
  ADD KEY `description` (`description`);

--
-- Indexes for table `doctor`
--
ALTER TABLE `doctor`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `doctor_description`
--
ALTER TABLE `doctor_description`
  ADD PRIMARY KEY (`id`),
  ADD KEY `doctor` (`doctor`);

--
-- Indexes for table `expire_medicine`
--
ALTER TABLE `expire_medicine`
  ADD PRIMARY KEY (`id`),
  ADD KEY `medicine` (`medicine`),
  ADD KEY `pharmacy` (`pharmacy`);

--
-- Indexes for table `hospital`
--
ALTER TABLE `hospital`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_location` (`location`);

--
-- Indexes for table `ipd`
--
ALTER TABLE `ipd`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `location`
--
ALTER TABLE `location`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`id`),
  ADD KEY `role` (`role`),
  ADD KEY `register` (`register`);

--
-- Indexes for table `medicine`
--
ALTER TABLE `medicine`
  ADD PRIMARY KEY (`id`),
  ADD KEY `medicine_ibfk_1` (`category`),
  ADD KEY `medicine_ibfk_2` (`subcategory`);

--
-- Indexes for table `opd`
--
ALTER TABLE `opd`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_table`
--
ALTER TABLE `order_table`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pharmacy`
--
ALTER TABLE `pharmacy`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `stock`
--
ALTER TABLE `stock`
  ADD PRIMARY KEY (`id`),
  ADD KEY `stock_ibfk_1` (`medicine`),
  ADD KEY `stock_ibfk_2` (`pharmacy`);

--
-- Indexes for table `stock_maintain`
--
ALTER TABLE `stock_maintain`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subcategory`
--
ALTER TABLE `subcategory`
  ADD PRIMARY KEY (`id`),
  ADD KEY `subcategory_ibfk_1` (`category`);

--
-- Indexes for table `suborder`
--
ALTER TABLE `suborder`
  ADD PRIMARY KEY (`id`),
  ADD KEY `medicine` (`medicine`),
  ADD KEY `category` (`category`),
  ADD KEY `suborder` (`order_id`);

--
-- Indexes for table `units`
--
ALTER TABLE `units`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `variant`
--
ALTER TABLE `variant`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `company`
--
ALTER TABLE `company`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `composition`
--
ALTER TABLE `composition`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `description`
--
ALTER TABLE `description`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=93;

--
-- AUTO_INCREMENT for table `doctor`
--
ALTER TABLE `doctor`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `doctor_description`
--
ALTER TABLE `doctor_description`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `expire_medicine`
--
ALTER TABLE `expire_medicine`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `hospital`
--
ALTER TABLE `hospital`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `ipd`
--
ALTER TABLE `ipd`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `location`
--
ALTER TABLE `location`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- AUTO_INCREMENT for table `medicine`
--
ALTER TABLE `medicine`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `opd`
--
ALTER TABLE `opd`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `order_table`
--
ALTER TABLE `order_table`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=108;

--
-- AUTO_INCREMENT for table `pharmacy`
--
ALTER TABLE `pharmacy`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `role`
--
ALTER TABLE `role`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `stock`
--
ALTER TABLE `stock`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT for table `stock_maintain`
--
ALTER TABLE `stock_maintain`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `subcategory`
--
ALTER TABLE `subcategory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `suborder`
--
ALTER TABLE `suborder`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=102;

--
-- AUTO_INCREMENT for table `units`
--
ALTER TABLE `units`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `variant`
--
ALTER TABLE `variant`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `description`
--
ALTER TABLE `description`
  ADD CONSTRAINT `description_ibfk_1` FOREIGN KEY (`description`) REFERENCES `doctor_description` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `doctor_description`
--
ALTER TABLE `doctor_description`
  ADD CONSTRAINT `doctor_description_ibfk_1` FOREIGN KEY (`doctor`) REFERENCES `doctor` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `expire_medicine`
--
ALTER TABLE `expire_medicine`
  ADD CONSTRAINT `expire_medicine_ibfk_1` FOREIGN KEY (`medicine`) REFERENCES `medicine` (`id`),
  ADD CONSTRAINT `expire_medicine_ibfk_2` FOREIGN KEY (`pharmacy`) REFERENCES `pharmacy` (`id`);

--
-- Constraints for table `hospital`
--
ALTER TABLE `hospital`
  ADD CONSTRAINT `FK_location` FOREIGN KEY (`location`) REFERENCES `location` (`id`);

--
-- Constraints for table `medicine`
--
ALTER TABLE `medicine`
  ADD CONSTRAINT `medicine_ibfk_1` FOREIGN KEY (`category`) REFERENCES `category` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `medicine_ibfk_2` FOREIGN KEY (`subcategory`) REFERENCES `subcategory` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `stock`
--
ALTER TABLE `stock`
  ADD CONSTRAINT `stock_ibfk_1` FOREIGN KEY (`medicine`) REFERENCES `medicine` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `stock_ibfk_2` FOREIGN KEY (`pharmacy`) REFERENCES `pharmacy` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `subcategory`
--
ALTER TABLE `subcategory`
  ADD CONSTRAINT `subcategory_ibfk_1` FOREIGN KEY (`category`) REFERENCES `category` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
