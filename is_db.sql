-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 28, 2019 at 10:37 AM
-- Server version: 10.1.31-MariaDB
-- PHP Version: 7.2.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `is_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

CREATE TABLE `books` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `author` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `course_id` int(10) UNSIGNED DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `quantity` int(10) UNSIGNED DEFAULT NULL,
  `availability` tinyint(1) DEFAULT NULL,
  `with_cd` tinyint(1) DEFAULT NULL,
  `year_published` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`id`, `title`, `author`, `course_id`, `image`, `quantity`, `availability`, `with_cd`, `year_published`, `created_at`, `updated_at`) VALUES
(1, 'Event Calendar for SPCF', 'John Eric Manzon, Charmaine H. Torres, Gian Marco Sapnu', 1, NULL, 1, 1, 0, 2013, '2018-04-30 07:01:45', '2018-08-30 05:15:25'),
(2, 'An E-Commerce System For Feedworld Inc.', 'Jelly M. Mendoza, Ryan Paul G. Escartin, Rogie L. Manansala, Dallen D. Chapoco', 3, NULL, 1, 1, 1, 2013, '2018-04-30 07:02:45', '2018-08-20 03:51:49'),
(3, 'E-Shopping for Jenjes Fashion Apparel', 'Jeane M. Limsiaco, Emerson Jessica G. Chua, Nihkee Mark D. Demesa, Danica R. De Lara', 1, NULL, 1, 1, 1, 2013, '2018-04-30 07:05:39', '2018-07-18 07:38:16'),
(4, 'Web- Based Geographic Information System for Mabalacat Water District', 'Marcellus P. Panela', 1, NULL, 1, 1, 0, 2013, '2018-04-30 07:06:55', '2018-06-12 13:33:34'),
(5, 'OJT-MS: On The Job Training Management System', 'Elynor T. Kurzyniec', 1, NULL, 1, 1, 0, 2013, '2018-04-30 07:07:29', '2018-07-18 07:38:18'),
(6, 'Lyceum Subic Bay Marketing Portal with SMS', 'Samantha T. Dizon', 1, NULL, 1, 1, 0, 2013, '2018-04-30 07:08:07', '2018-07-18 07:38:22'),
(7, 'A Voting System for Office of Student Affairs Systems Plus College Foundation', 'Racquel S. Mayuga, Kristine Ann L. Ocampo', 1, NULL, 1, 1, 0, 2012, '2018-04-30 07:09:04', '2018-07-18 07:38:23'),
(8, 'A Web-Based Student Information System for Mabalacat Christian Academy', 'Joela G. Arroyo, Gladys S. Del Mando, Kim G. Guinto, Joshua C. Lumanlan', 1, NULL, 1, 1, 0, 2012, '2018-04-30 07:09:55', '2018-07-18 07:38:25'),
(9, 'An Online Marketing System For Tadashi Japan Surplus Trading', 'Michael D. Velarde', 1, NULL, 1, 1, 1, 2012, '2018-04-30 07:10:31', '2018-07-18 07:38:27'),
(10, 'On The Job Training Management System', 'Mark Jenober R. Dela Cruz, Ma. Rizza Imee G. Laxamana, Ace Vergel B. Tungol, Joy Y. Villanueva', 1, NULL, 1, 1, 1, 2014, '2018-04-30 07:11:27', '2018-07-18 07:38:28'),
(11, 'MYTRIPS: A Mobile Based Locator & Experience Sharing Application', 'Mary Ann O. Bernal, Ma. Lourdes Y. Mamon, Marjie T. Manuel, Kelvin G. Naguit', 1, NULL, 1, 1, 1, 2013, '2018-04-30 07:12:39', '2018-07-18 07:39:01'),
(12, 'Touch Map: Touch-Screen Locator-Based System for SPCF', 'Vall L. Collado, Jenevie F. De Mesa, Christopher John Rivera, Julie Anne C. Sangalang', 1, NULL, 1, 1, 1, 2013, '2018-04-30 07:14:12', '2018-07-18 07:39:02'),
(13, 'Pamangan Kapampangan: An Online Cooking Assistance for Kapampangan Cuisines', 'April M. Catacutan, Mark Louie B. Diaz, Homer John B. Natividad, Jennifer C. Samson', 1, NULL, 1, 1, 1, 2013, '2018-04-30 07:15:15', '2018-07-18 07:39:04'),
(14, 'Tower of Science: An Educational Adventure Game for iPad Tablet', 'Jay P. Bengco, Alfred R. Lobo, Jowen Fidel M. Lumanlan, Jeffrey B. Yumul', 1, NULL, 1, 1, 1, 2013, '2018-04-30 07:16:23', '2018-07-18 07:39:05'),
(15, 'Computer Parts Finding Game: An Interactive Game for IOS', 'King R. Cristobal, Rosemel R. David, Anthony V. Magtoto, Sharie May P. Villena', 1, NULL, 1, 1, 1, 2013, '2018-04-30 07:17:12', '2018-07-18 07:39:07'),
(16, 'Design and Implementation of Electronic Commerce for Enigma Technologies Incorporated', 'Emma L. Eure, Joneline C. Felasol', 3, NULL, 1, 1, 1, 2011, '2018-04-30 07:18:20', '2018-08-20 03:46:28'),
(17, 'A Biometric Based Attendance and Schedule Monitoring System with Intranet Based Application for the HR Department of SPCF', 'Wassim I. Houran, Charleston O. Mandal, Christopher U. Roque, Adrian G. Cardones', 1, NULL, 1, 1, 1, 2011, '2018-04-30 07:19:45', '2018-07-18 07:39:10'),
(18, 'An Intranet-Based Computer Peripheral Monitoring System with Mobile SMS and Email Notification for SPCF', 'Jasper L. Castro, Katrina May A. Cunanan, Ace Kevin C. Cunanan, Mark Allen R. David, Apple A. Tolentino', 1, NULL, 1, 1, 0, 2011, '2018-04-30 07:21:22', '2018-07-18 07:39:11'),
(19, 'Data Guyver System: A Document Management System with Document Conversion Module for SPCF Guidance Office', 'Edmark T. Sunga, Joy A. Manansala, Reinnand Leandro D. Culala', 1, NULL, 1, 1, 1, 2011, '2018-04-30 07:22:46', '2018-07-18 07:39:13'),
(20, 'A Tracer Study System with Social Networking and Job Application Site for SPCF Alumni Associations, Incorporated', 'Franz Joseph T. Escosio, Joy M. Cabanayan, Christopher C. Betabara, April Jem D. Pamindanan', 1, NULL, 1, 1, 1, 2011, '2018-04-30 07:24:15', '2018-07-18 07:39:14'),
(21, 'A Minimax-Based Algorithm for Connect Four Game', 'Jefferson G. David, Jan Marie C. Galban, Adrian P. Sangalang', 2, NULL, 1, 1, 1, 2011, '2018-04-30 07:24:50', '2018-08-17 07:37:15'),
(23, 'Lan-Based Tabulation and Voting System with Short Message Service(SMS) for Beauty Contest', 'Enrico San Antonio Calma', 1, NULL, 1, 1, 0, 2007, '2018-04-30 07:26:26', '2018-07-18 07:39:40'),
(24, 'View it: A Screen Sharing Software on the Go', 'daren A. Almonina, Aldrel Emmanuel T. Cruz, Marie Joy D. Quiambao, Charmaine C. Tolentino', 1, NULL, 1, 1, 1, 2015, '2018-04-30 07:33:04', '2018-07-18 07:39:41'),
(25, 'Systems Plus College Foundation Alumni Portal', 'Donn Kavin L. Canono, Paul Maverdon G. Santos, Jade Aris B. Tan, John Dalle Valencia', 1, NULL, 1, 1, 0, 2014, '2018-04-30 07:34:22', '2018-07-18 07:39:43'),
(26, 'Teachmelet: An Online Reviewer for Licensure Examination for Teachers Takers', 'Billy B. Catap, Lanze D. Lugtu, Merly D. Malig, John Paul M.', 1, NULL, 1, 1, 1, 2015, '2018-04-30 07:36:06', '2018-07-18 07:39:44'),
(27, 'Saver: Medical Emergency Response System for Android', 'Christian M. Almario, Kristan R. Canlas, Marek Kristian B. Manalo, Domingo L. Tagubaras', 1, NULL, 1, 1, 1, 2015, '2018-04-30 07:37:20', '2018-07-18 07:39:46'),
(28, 'Author Spot: An Online Community', 'Axl Rose Aquino, Eleine Calaguas, Andrew Gomez, Michelle Prestwood', 1, NULL, 1, 1, 1, 2015, '2018-04-30 07:38:44', '2018-07-18 07:39:47'),
(29, 'An E-Commerce with Multi-Level Marketing for Solmix Enterprises', 'Melody S. Bagayo, Suzette A. dela Rosa, Menandro L. Maramo, Eva D. Murith', 1, NULL, 1, 1, 1, 2014, '2018-04-30 07:39:51', '2018-07-18 07:39:48'),
(30, 'Mobilecms: An Android Based Class Management System', 'Kim Brian Lee Choi, Krissa Girl N. Ramos, Mary Apply M. Kabigting, Princess T. Javier', 1, NULL, 1, 1, 1, 2014, '2018-04-30 07:41:07', '2018-07-18 07:39:50'),
(31, 'A Crime Incident Report System for Angeles City Police Office', 'Aldrin M. Capitulo, Normando P. David Jr., Jerrie S. Rivera, Shaine Lara D. Ventura', 1, NULL, 1, 1, 1, 2014, '2018-04-30 07:41:50', '2018-07-18 07:39:52'),
(32, 'A Mobile Phone Based Educational Game', 'Chino M. Cinco, John Paul G. Gania, Joshua P. Llena, Jaypee H. Victoriano', 3, NULL, 1, 1, 1, 2012, '2018-04-30 07:42:37', '2018-08-20 05:21:24'),
(33, 'Herbmed: An Online Medication Solution', 'Jan Larry Z. Gabrillo', 1, NULL, 1, 1, 1, 2013, '2018-04-30 07:43:10', '2018-07-18 07:40:28'),
(35, 'Task Management with File Submission and Reports Monitoring System', 'Edjhan V. Chu, Erwin W. Ferrer, Nikki A. Trinidad, Melvi Q. Visitacion', 1, NULL, 1, 1, 0, 2015, '2018-04-30 07:45:25', '2018-07-18 07:40:29'),
(36, 'I-Check: A Mobile Class Monitoring System for Android', 'Sonny Boy T. Feliciano, Joana Marie D. Meneses, Christian B. Payumo, Kelly Gen D. Tiongco', 1, NULL, 1, 1, 1, 2015, '2018-04-30 07:46:25', '2018-07-18 07:40:31'),
(37, 'Defense of the Philippine Heroes: A Historical Edutainment Game', 'Eduardo M. Abordo Jr, Arris G. Ayson, Jessa Ellaine D. Magtubo, Ar-jay Y. Tongol', 1, NULL, 1, 1, 1, 2015, '2018-04-30 07:47:23', '2018-07-18 07:40:32'),
(38, 'Evosciencia: A Science Game for Android', 'Erynn Jae M. Dalina, Ia Celine P. Gonzales, Amando Carlo L. Pingul, Zhandy D. Teves', 1, NULL, 1, 1, 1, 2014, '2018-04-30 07:48:24', '2018-07-18 07:40:33'),
(39, 'IC: A Computerized Lights and Appliance Monitoring and Management Systems with SMS Notification', 'Mari Shantle G. Balingit, Kevin Matthew G. Capitulo, Darey Lizette Q. Iglesa, Aliana Conchitina I. Magsino', 1, NULL, 1, 1, 0, 2014, '2018-04-30 07:49:55', '2018-07-18 07:40:35'),
(40, 'PETKO: A Portal for Pet Lovers System', 'Jonathan A. Ignacio, Nathaniel M. Ramos, Denniel C. Roque, Katrina L. Santiago', 1, NULL, 1, 1, 1, 2015, '2018-04-30 07:50:32', '2018-07-18 07:40:36'),
(41, 'Evidence Management System for Philippine National Police Scene of the Crime Operations (PNP-SOCO)', 'Darryl D. Brenzuela, Leslie Jasper C. Diamse, Michelle Ann J. Galope, Patrick Dale A. Manaloto', 1, NULL, 1, 1, 1, 2012, '2018-04-30 07:52:47', '2018-07-18 07:40:38'),
(42, 'Capstone and Thesis Document Review and Management System', 'Josef Atilla T. Juhas, Renz D. Gamboa, Jeaneth Ann C. Gray, Maria Josiah L. Sanchez', 1, NULL, 1, 1, 0, 2014, '2018-04-30 07:54:32', '2018-07-18 07:40:40'),
(44, 'EasyGrade: A Web-Based Management System for K-12 Program', 'Carlo Nico M. Caparas, Georgia Mharnelle S. Carberry, Mia Cara Jean D. David, Jaspreet K. Dol', 1, NULL, 1, 1, 0, 2017, '2018-04-30 07:56:17', '2018-07-18 07:41:07'),
(45, 'E-Service: A Mobile Web Based Estate Sales Agent Toolkit for Fiesta Communities Incorporated', 'Monica Megan D. Canlapan, Jayanne Krizia P. Lacsamana, John D. Napila, Michael Dave P. Villena', 1, NULL, 1, 1, 1, 2015, '2018-04-30 07:57:38', '2018-07-18 07:41:08'),
(46, 'Interactive Animated Educational Story Game Development', 'Sherry Mae M. Alagos, Ralph Miguel M. Borrel, Mark Anthony S. Memije, Kristall-Ann C. Pacuan', 1, NULL, 1, 1, 0, 2012, '2018-04-30 07:58:33', '2018-07-18 07:41:10'),
(48, 'E-Market: Town Product of Region III', 'Alfie T. Bonayog, Kenneth John A. Caballero, Marci F. Esguerra, John Nino N. Madlangbayan', 1, NULL, 1, 1, 1, 2013, '2018-04-30 08:00:30', '2018-07-18 07:41:11'),
(49, 'Electronic Research Publisher for the College of Computing and Information Sciences', 'Kevin John B. Altes, Eddie M. Defuz Jr., Kim Martin G. Gaskin, Reynald John E. Sagun', 1, NULL, 1, 1, 1, 2013, '2018-04-30 08:01:36', '2018-07-18 07:41:12'),
(50, 'Job Order Information Management System with Monitoring SMS Inquiry and Payroll System for EDS Garments Incorporated', 'King Jacob D. Cantandijan, Emmanuel F. De Jesus, Melissa B. Manalo, Marie Joy A. Soriano', 1, NULL, 1, 1, 1, 2011, '2018-04-30 08:03:04', '2018-07-18 07:41:14'),
(51, 'A Web CMS Event Management and Registration for PSITE Region 3', 'Kelvin V. Castro, Anabelle G. Doromal, Julius Angel T. Enriquez, Adrian C. Gundran, Cham Ephraim E. Nagac', 1, NULL, 1, 1, 1, 2012, '2018-04-30 08:04:46', '2018-07-18 07:41:16'),
(52, 'An Electronic Journal Publisher for CCIS', 'Ronald Allan O. Del Monte, Darius S. Dimabuyu, James Ian S. Gaddi, John Carlo A. Macalino', 3, NULL, 1, 1, 1, 2012, '2018-04-30 08:05:28', '2018-08-20 03:02:53'),
(53, 'Content Management System for Angeles City Police with SMS Feature', 'Harvey Y. Ayson, Vinna Rose T. Bacani, Laurence S. Sanchez, Shekinah Joy P. Viado', 1, NULL, 1, 1, 1, 2012, '2018-04-30 08:06:12', '2018-07-18 07:41:21'),
(54, 'An Infovote with Content Management System for Systems Plus College Foundation', 'Karen C. Canlas, Robert Joseph G. Capitulo, Reyna B. Cruz, Billy Joe D. Garcia', 1, NULL, 1, 1, 1, 2012, '2018-04-30 08:07:28', '2018-07-18 07:41:23'),
(55, 'Electronic Tutorial In Everyday Learning (ETEL)', 'Ma. Patricia Alyanna P. Amboy, Charmaine D. Dizon, Christian Rey F. Sagcal, Claudine M. Santiago', 1, NULL, 1, 1, 1, 2012, '2018-04-30 08:08:16', '2018-07-18 07:41:51'),
(56, 'Pamiabe: A Kapampangan Forum with English to Kapampangan Dictionary', 'Aries M. Bautista, Kristofer Eric B. Dadulla, Renzranniel B. Nuqui, Kerwin T. Omaoid Jr..', 1, NULL, 1, 1, 0, 2012, '2018-04-30 08:09:21', '2018-07-18 07:41:52'),
(57, 'Museum Post: \"A Step Towards Bringing the Clark Museum to You\"', 'Argel Edward C. Diaz, Jeffery D. Jocson, Jenalyn P. Mendaros, Alvin M. Mendoza, Mark Joseph M. Mendoza', 1, NULL, 1, 1, 1, 2012, '2018-04-30 08:10:30', '2018-07-18 07:41:54'),
(58, 'Online Enrollment System for ACLC College Gapan City', 'Divina A. Dadez', 1, NULL, 1, 1, 0, 2013, '2018-04-30 08:11:06', '2018-07-18 07:41:55'),
(59, 'Chicken Coop Controlling and Monitoring System Through SMS', 'Aloysius S. Valerio', 1, NULL, 1, 1, 1, 2013, '2018-04-30 08:11:39', '2018-07-18 07:41:57'),
(60, 'PC Usage Monitoring System for Techniques Internet Café', 'Kenneth Jhon C. Apurillo, Mark Robert R. David, Kenneth P. Manongsong, Martin Loreto D. Martin Jr., Archie R. Ocampo', 1, NULL, 1, 1, 0, 2007, '2018-04-30 08:12:48', '2018-07-18 07:41:58'),
(61, 'A File Server Management System for Computer Laboratories of System Plus College Foundation', 'Rayvi D. Aguilar, Omar A. Capitulo, William L. Yusi', 1, NULL, 1, 1, 0, 2007, '2018-04-30 08:13:59', '2018-07-18 07:42:00'),
(62, 'PC Controlled Roll-Up Shutter for Jenra Grand Mall', 'Jarlo Merker D. Baccay, Russel R. Gonzales, Rodelin C. Nocum, Lady Ann T. Ordona, Azer S. Salvador, Ryan M. Serrano', 1, NULL, 1, 1, 0, 2004, '2018-04-30 08:15:21', '2018-07-18 07:42:02'),
(63, 'SPCF MONEY PAD: A DIGITAL WALLET FOR SYSTEMS PLUS COLLEGE FOUNDATION', 'Angelo A. Dayrit, Juan Paul I. Patawaran, Derick M. Tolentino', 1, NULL, 1, 1, 0, 2014, '2018-05-03 00:06:23', '2018-07-18 07:42:03'),
(64, 'MANAGEMENT INFORMATION SYSTEM WITH AUTOMATED FINGERPRINT IDENTIFICATION SYSTEM', 'Lawrene Nikko R. Bautista, Reymar S. David', 1, NULL, 1, 1, 1, 2013, '2018-05-03 00:06:56', '2018-07-18 07:42:05'),
(65, 'INFORMATION MANAGEMENT AND MONITORING SYSTEM W/ SMS FOR CONCEPCION CATHOLIC SCHOOL', 'Gerald B. Cabrejas, Judy Ann C. David, Irish Andrea B. Macapinlac, Jerome R. Sibal', 1, NULL, 1, 1, 0, 2014, '2018-05-03 00:07:19', '2018-07-18 07:42:26'),
(66, 'MANAGEMENT INFORMATION SYSTEM FOR IMMACULATE CONCEPTION PARISH', 'Ramchan P. Carreon, Victor P. Donaldson, Russell Mathew Mesina, Jaime P. Pangan', 1, NULL, 1, 1, 0, 2014, '2018-05-03 00:07:47', '2018-07-18 07:42:41'),
(67, '\"GABE\" an Android Application that Guides Pupils in Grade School using Kapampangan Lessons and Activities', 'Gio Francis D. Bartolo, Eleazar P. Pascual, Arnold M. Solomon Jr., Mary Jane M. Tolosa', 1, NULL, 1, 1, 1, 2015, '2018-05-03 00:08:06', '2018-07-18 07:42:42'),
(68, 'Toddler Games App: A Psychomotor Test', 'Benjanette Hope T. Aparri, Kimberly Bulaon, MerryAnn Dizon, Jenalyn T. Icban', 1, NULL, 1, 1, 1, 2015, '2018-05-03 00:08:30', '2018-07-18 07:42:44'),
(69, 'CASINO PIT OPERATION MANAGEMENT SYSTEM', 'Ariana Marie G. Manaois, Jennifer V. Bonus, Ma. Kimberly Rose P. Sampang', 1, NULL, 1, 1, 0, 2014, '2018-05-03 00:08:54', '2018-07-18 07:42:45'),
(70, 'DOOR SECURITY LOCKING SYSTEM USING RFID', 'Ramon B. De Vera, Israel P. Dungo, Rosemarie M. Jimenez, Roel S. Tuazon', 1, NULL, 1, 1, 1, 2013, '2018-05-03 00:09:12', '2018-07-18 07:42:46'),
(71, 'Geographical Information System for Barangay Atlu Bola', 'Justin Joseph Dennison A. Alaso, Francis Ivan R. Baluyut, Detlef M. Serrano, Lemuel L. Sicat, Lorence E. Villegas', 1, NULL, 1, 1, 0, 2015, '2018-05-03 00:09:31', '2018-07-18 07:42:48'),
(72, 'SPCF+BOOK: A SOCIAL NETWORKING SITE', 'Kimberly D. Antonio, Charlene L. Last, Gerald B. Ramos, Thodeus L. Yray', 1, NULL, 1, 1, 1, 2014, '2018-05-03 00:09:54', '2018-07-18 07:42:49'),
(73, 'PAPER CONFERENCE MANAGEMENT SYSTEM', 'Sherwin A. Antig, Noemi C. Panaguiton, Jean P. Sison, Yoko A. Yagi', 1, NULL, 1, 1, 1, 2014, '2018-05-03 00:10:19', '2018-07-18 07:42:51'),
(74, 'CURSO: AN ONLINE METRO USER-INTERFACE BASED COURSE MANAGEMENT APP FOR STUDENT AND EDUCATORS', 'Ian Felix V. Rillera, Jhon Nerie C. Gagui, Mark David Lee G. Sarmiento, Noel S. Aquino', 1, NULL, 1, 1, 0, 2013, '2018-05-03 00:10:36', '2018-07-18 07:42:52'),
(75, 'A WEB-BASED PHARMACEUTICAL INFORMATICS SYSTEM', 'Dungca, Kristine L., Quiambao, Nino Jan A., Ramos, Mishel F., Roman, Janine D.', 1, NULL, 1, 1, 1, 2013, '2018-05-03 00:11:27', '2018-07-18 07:43:14'),
(77, 'ELECTRONIC COMMERCE WITH COMPUTER SIMULATION SYSTEM', 'Ivan Harris S. Garcia, Camille S. Macapagal, Alexander John V. Venzon Jr., Alfie D. Zapanta', 1, NULL, 1, 1, 1, 2013, '2018-05-03 00:11:56', '2018-07-18 07:43:16'),
(78, 'CHED REGION III EVALUATION and MONITORING SYSTEM', 'Angelito R. Guevarra Jr., Arwin Jusper A. Nalo, Patrick E. Nelmida, Levy R. Alfonso', 1, NULL, 1, 1, 0, 2013, '2018-05-03 00:12:11', '2018-07-18 07:43:18'),
(79, 'AN IOS 6.0 HISTORY GAME APPLICATION FOR GRADE 7', 'Melanie G. Banares, Jaeme J. Catacutan, Jervie P. Fernandez, Regine P. Quiambao', 1, NULL, 1, 1, 1, 2013, '2018-05-03 00:12:27', '2018-07-18 07:43:25'),
(80, 'mobileLMS: A STUDENT PERFORMANCE MONITORING ANDROID APPLICATION', 'Esrom Z. Galang, Marionne L. Operana, Rolly C. Pabalan, Jonell S. Suyom', 1, NULL, 1, 1, 1, 2013, '2018-05-03 00:12:43', '2018-07-18 07:43:26'),
(81, 'WEBSITE FOR LOCAL CAMPUS NEWS (EXEMPLAR)', 'John Bernard S. Dungca, Jocel C. Fermin, Annalyn R. Lao, Mac Denver Paul A. Paraiso', 1, NULL, 1, 1, 1, 2013, '2018-05-03 00:13:00', '2018-07-18 07:43:27'),
(82, 'A SURVEY GENERATOR WITH DECISION SUPPORT SYSTEM', 'Christian Paulo G. Angeles, Cris D. Buena, Mardy I. Pangilinan, David Franz D. Patiu', 1, NULL, 1, 1, 1, 2013, '2018-05-03 00:13:17', '2018-07-18 07:43:29'),
(83, 'SUNGKA: A 3D STRATEGIC GAME', 'Rustica F. Constantino, John Paulo P. Cortez, Amy P. David, John Patrick M. Rodriguez', 1, NULL, 1, 1, 1, 2013, '2018-05-03 00:13:38', '2018-07-18 07:43:30'),
(84, 'AN INTERACTIVE KNOWLEDGE-BASED ENGLISH LANGUAGE LEARNING WITH GAME ASSIMILATION FOR GRADE ONE PUPILS OF SPCF', 'Michael John M. Bongeo, Rosendo M. De Jesus, Elynor T. Kurzyniee, Katherine L. Yutuc', 1, NULL, 1, 1, 0, 2011, '2018-05-03 00:14:09', '2018-07-18 07:43:32'),
(85, 'A WEB-BASED PUBLICATION CONTENT MANAGEMENT SYSTEM FOR SYSTEMS PLUS COLLEGE FOUNDATION', 'Richelle P. Duma, Cahmil A. Hidalgo, Arvin Jebb C. Pamintuan, Jesus Q. Reyes Jr.', 1, NULL, 1, 1, 1, 2011, '2018-05-03 00:14:27', '2018-07-18 07:43:34'),
(86, 'INTRANET-BASED HUMAN RESOURCE INFORMATION SYSTEM FOR ST.NICOLAS COLLEGE OF BUSINESS AND TECHNOLOGY', 'Mr. Arthur R. Dela Pena', 1, NULL, 1, 1, 0, 2011, '2018-05-03 00:14:46', '2018-07-18 07:44:22'),
(87, 'ONLINE EXAMINATION MANAGEMENT SYSTEM with Cross-Platform Support', 'Maurice D. Goodloe, Jackie Lyn E. Hernandez, Ciara Jane A. Nonato, Jaye Ryan J. Reyes', 1, NULL, 1, 1, 1, 2011, '2018-05-03 00:14:59', '2018-07-31 10:23:35'),
(88, 'A Web CMS For CHEd R3 with SNPLP Scholarship Management and Monitoring System', 'Aaron T. Diga, Stacey Mariel B. Laquian, Reymond G. Miranda, Jay Ar B. Viluan', 1, NULL, 1, 1, 1, 2011, '2018-05-03 00:15:15', '2018-07-18 07:44:25'),
(89, 'A JERRY BRONS\' ALGORITHM BASED SLIDING PUZZLE SOLVER', 'Jerold B. Tejo, Lloyd Sixto S.Borja, Philip Joshua C. Dela Cruz, Prince Lawrence C. Sunga', 2, NULL, 1, 1, 1, 2011, '2018-05-03 00:15:30', '2018-08-17 08:25:13'),
(90, 'A FRIDRICH-PETRUS ALGORITHM BASED 3 X 3 X 3 CLASSIC CUBE SOLVER', 'May Anne A. Mag-aso, Princess Ann G. Balaba', 2, NULL, 1, 1, 0, 2010, '2018-05-03 03:20:53', '2018-08-17 08:27:11'),
(91, 'CLASS ROSTER MANAGEMENT SYSTEM AND PARENT PORTAL WITH SMS ADVISORY FOR SYSTEMS PLUS COLLEGE FOUNDATION', 'Lacson, John Abraham Calma, Lacson, Narwin Biag, Nofuente, Kevin Henson', 1, NULL, 1, 1, 1, 2010, '2018-05-03 03:22:42', '2018-07-18 07:44:29'),
(92, 'SPCF INFO-BOARD MONITORING SYSTEM', 'Antonio V. Dungca Jr.', 1, NULL, 1, 1, 1, 2011, '2018-05-03 03:23:50', '2018-07-18 07:44:31'),
(93, 'A VIDEO STREAMING MANAGEMENT SYSTEM FOR iTV EDUCATION PROGRAM OF TARLAC PUBLIC SCHOOL', 'Archie S. Bacani, Catherine Joy J. Espino, Harlyn M. Sedin', 1, NULL, 1, 1, 1, 2010, '2018-05-03 03:26:08', '2018-07-18 07:44:32'),
(94, 'INTRANET-BASED FACULTY PERFORMANCE EVALUATION FOR SYSTEMS PLUS COLLEGE FOUNDATION', 'Realyn S. Cayanan, John Aris N. Deang, Jayson M. Garalde', 1, NULL, 1, 1, 0, 2010, '2018-05-03 03:28:42', '2018-07-18 07:44:34'),
(95, 'A WEB-ENABLED JIT-BASED INVENTORY AND ORDER MONITORING SYSTEM FOR INFOWORX', 'Jeffrey M. Lacson, Evelyn M. Shane, Erwin B. Serrano', 1, NULL, 1, 1, 0, 2010, '2018-05-03 03:30:09', '2018-07-18 07:44:35'),
(96, 'VOICE COMMAND CONTROL FOR POCKET PC NAVIGATION', 'her m. arceo, reymark l. bince, maricel l. senapilo', 1, NULL, 1, 1, 0, 2009, '2018-05-03 03:34:02', '2018-07-18 07:45:13'),
(97, 'E-SIMS - STUDENT INFORMATION AND MANAGEMENT SYSTEMS FOR SYSTEMS PLUS COLLEGE FOUNDATION, BALIBAGO, ANGELES CITY', 'carolina sanchez', 1, NULL, 1, 1, 0, 2010, '2018-05-03 03:36:35', '2018-07-18 07:45:11'),
(98, 'JUMPSTART: AN ONLINE GAMING', 'john paul p. bernard, kristian mark v. ramos, richard c. rivera', 1, NULL, 1, 1, 0, 2009, '2018-05-03 03:38:54', '2018-07-18 07:45:09'),
(99, 'A HIGH SPEED SORTING ALGORITHM', 'jheric p. de guzman, isaac c. manlapaz, christopher adi d. pascual, ryan e. vijungco', 1, NULL, 1, 1, 0, 2009, '2018-05-03 03:40:27', '2018-07-18 07:45:07'),
(100, 'A WEB BASED CONTENT MANAGEMENT SYSTEM FOR THE LOCAL NEWSPAPER IN ANGELES CITY', 'francis jay c. flores, lorenzo a. luzong, mark joseph m. policarpio', 1, NULL, 1, 1, 0, 2009, '2018-05-03 03:42:19', '2018-07-18 07:45:06'),
(101, 'GENERIC E-SHOPPING SYSTEM', 'john ardy t. due, robell h. samson, marion v. robinson', 1, NULL, 1, 1, 0, 2008, '2018-05-03 03:44:26', '2018-07-18 07:45:04'),
(102, 'COMPUTER AIDED INSTRUCTION IN BASIC JAVA WITH LEARNING ASSESSMENT', 'ronnie l. razon, kenneth a. opolinto, raniel d. rapada, jerome a. dungca', 1, NULL, 1, 1, 0, 2008, '2018-05-03 03:46:38', '2018-07-18 07:45:03'),
(103, 'INFORMATION MANAGEMENT SYSTEM FOR SYSTEM PLUS COLLEGE FOUNDATION', 'Roy D. Dayrit', 5, NULL, 1, 1, 0, 2008, '2018-05-03 03:47:22', '2018-07-30 08:28:25'),
(104, 'STUDENT INFORMATION MANAGEMENT SYSTEM FOR SYSTEMS PLUS COLLEGE FOUNDATION HIGH SCHOOL DEPARTMENT', 'maria mia m. soriano', 5, NULL, 1, 1, 1, 2010, '2018-05-03 03:49:18', '2018-08-20 03:50:00'),
(105, 'LAN-BASED EXAMINATION SYSTEM UNDER THE BACHELOR OF SCIENCE IN INFORMATION TECHNOLOGY OF SYSTEMS PLUS COLLEGE FOUNDATION', 'cathy baluyut, april francis c. escoto, christopher eustaquio', 1, NULL, 1, 1, 0, 2008, '2018-05-03 03:51:08', '2018-07-18 07:44:55'),
(106, 'SMS AND WEB - BASED GRADING INQUIRY SERVICE SYSTEM FOR JOCSON COLLEGE INCORPORATED', 'charlie v. martinez, catherine c. bodoso, carlo jay t. ariem', NULL, NULL, 1, 1, 0, 2008, '2018-05-03 03:52:48', '2018-05-03 04:41:19'),
(107, 'INTEGRATED ENROLLMENT SYSTEM FOR SYSTEM PLUS COLLEGE FOUNDATION INFORMATION MANAGEMENT SYSTEM', 'john daryl r. baltazar, archie c. fabian, elina lani l. rojano', 1, NULL, 1, 1, 0, 2009, '2018-05-03 04:00:47', '2018-07-18 07:45:51'),
(108, 'INTEGRATED LIBRARY SYSTEM FOR SYSTEMS PLUS COLLEGE FOUNDATION INFORMATION MANAGEMENT SYSTEM', 'emmalyn d. liabore, neola marie gevarra, kenette soliman', 1, NULL, 1, 1, 0, 2009, '2018-05-03 04:13:34', '2018-07-18 07:45:49'),
(109, 'INTEGRATED GRADING SYSTEM FOR SYSTEMS PLUS COLLEGE FOUNDATION INFORMATION MANAGEMENT SYSTEM', 'erica kris p. baculi, francis b. lagazon, gerald r. olaso', 1, NULL, 1, 1, 0, 2009, '2018-05-03 04:15:43', '2018-07-18 07:45:47'),
(110, 'A PROPOSED POINT OF SALE AND INVENTORY SYSTEM OF BIG SHOP CONVENIENCE CENTER INDEPENDENT BUSINESS MANAGER (IBM)', 'norwin b. lacson, redentor e. timbol, roane m. gabriel, rozzel anne g. galindez', 1, NULL, 1, 1, 0, 2007, '2018-05-03 04:18:31', '2018-07-18 07:45:46'),
(111, 'ONLINE ORDERING SYSTEM FOR LAZY VILLAGE', 'rodrigo p. yturralde, joey e. quaizon, edwin ricamata', 1, NULL, 1, 1, 0, 2008, '2018-05-03 04:20:26', '2018-07-18 07:45:44'),
(112, 'BLAM FILE ENCRYPTION SYSTEM', 'harry willy m. lu, marissa m. matchado, mayeth q. baustista', 1, NULL, 1, 1, 1, 2010, '2018-05-03 04:23:14', '2018-07-18 07:45:42'),
(113, 'ONLINE PURCHASING  WITH SMS PAYMENT FOR SPCF CANTEEN: A TOOL FOR MONITORING STUDENT PURCHASES', 'karlo c. anunciacion', 1, NULL, 1, 1, 0, 2009, '2018-05-03 04:24:51', '2018-07-18 07:45:39'),
(114, '2D TOUR AND PATHFINDING ALGORITHM', 'jaymarc m. farala, christian c. gamboa, reiner o. guzman, jay-ar l santiago', 2, NULL, 1, 1, 1, 2010, '2018-05-03 04:27:27', '2018-08-20 03:51:07'),
(115, 'ACADEMIC INFORMATION MANAGEMENT SYSTEM FOR L\'ARTA MONNTESOORI SCHOOL INCORPORATED', 'jar ar b. garcia, jhun c. canlas, arvin d. bariquit, june king h. bobiles', 1, NULL, 1, 1, 0, 2010, '2018-05-03 04:29:27', '2018-07-18 07:45:36'),
(116, 'A LAN-BASED ENROLLMENT AND REGISTRATION SYSTEM FOR THE HIGH SCHOOL DEPARTMENT OF SYSTEMS PLUS COMPUTER COLLEGE', 'anneth t. agustin, george capulong, analy p. mendiola, gil p. tiglao', 1, NULL, 1, 1, 0, 2004, '2018-05-03 04:33:54', '2018-05-24 05:03:04'),
(117, 'COMPUTER AIDED INSTRUCTIONAL MODULE IN ENGLISH FOR ILI STUDENT OF SYSTEMS PLUS COLLEGE FOUNDATION', 'michael jr. s berueda, mishael l. cuenco, ernesto jr. l. galang, glenn r. masa', 1, NULL, 1, 1, 0, 2004, '2018-05-03 04:36:11', '2018-07-18 07:46:09'),
(118, 'MOBILE GAMING: A LEARNING APPROACH IN BIOLOGY', 'joy ivy s. francin, madelence joy g. fullero, ronnie jimenez', 1, NULL, 1, 1, 0, 2008, '2018-05-03 04:37:25', '2018-07-18 07:46:15'),
(119, 'A CENTRALIZED LAN-BASED OPERATIONAL SYSTEM FOR DEE HWA LIONG COLLEGE FOUNDATION', 'mary rose m. cordero, analy v. mercado, ramil c. pineda', 1, NULL, 1, 1, 0, 2006, '2018-05-03 04:38:33', '2018-07-18 07:46:16'),
(120, 'PERSONAL CLASS RECORD MANAGEMENT SYSTEM WITH MOBILE BASED APPLICATION', 'norman s. canlas, dalvin d. chapoco, herzon z. garlan', 1, NULL, 1, 1, 0, 2008, '2018-05-03 04:40:06', '2018-07-18 07:46:18'),
(121, 'ELBEN VILLAS WEB-BASED INQUIRY AND SERVICE REQUEST SYSTEM', 'kimberly anne c. bauzon, lady rowena t. manio, ryan n. tolentino', 1, NULL, 1, 1, 0, 2007, '2018-05-03 04:45:36', '2018-07-18 07:46:19'),
(123, 'A GAME-BASED LEARNING IN MATH FOR PRESCHOOLERS', 'shayne vel c. aguirre, ivan borgee m . cinco', 1, NULL, 1, 1, 0, 2008, '2018-05-03 04:48:56', '2018-07-18 07:46:21'),
(124, 'THE ROLE INFORMATION TECHNOLOGY IN HOTEL INDUSTRY IN ANGELES CITY', 'shayne vel c. aguirre, ivan borgee m . cinco, John ardy T. due', 1, NULL, 1, 1, 0, 2007, '2018-05-08 08:15:11', '2018-07-18 07:46:22'),
(125, 'Water Consumption Monitoring System via Raspberry Pi', 'Franz Joseph B. Banilla, Edwin Lorenz P. Barte, Marc Christian G. Samia, Romart M. Sampang', 4, NULL, 1, 1, 0, 2015, '2018-07-16 07:49:18', '2018-07-18 07:46:25'),
(126, 'University of the Assumption Wi-Mesh Internet Access Infrastructure and IP Based Laboratory Video Monitoring System', 'Marlon I. Tayag', 5, NULL, 1, 1, 0, 2010, '2018-07-16 07:51:21', '2018-07-18 07:46:26'),
(127, 'Admission and Registration Modules For Electronic School System of Holy Angel University', 'Avigail Pili Magbag', 5, NULL, 1, 1, 0, 2008, '2018-07-16 07:52:56', '2018-07-16 07:52:56'),
(128, 'Enrollment Module for Electronic System of Holy Angel University', 'Jannet Toquero Redoban', 5, NULL, 1, 1, 0, 2008, '2018-07-16 07:54:18', '2018-07-16 07:54:18'),
(129, 'Predictors of Academic Performance in Mathematics of Fourth Year Students, Camachiles Resettlement High School, Mabalacat, Pampanga', 'Jenvern A. Balenton, Michell C. Dayrit, Johanne E. Ganancial, May B. Lubay, Angelo T. Maniti, Stephanie Rose Ratunil, Kristel Anne S. Tiglao', 5, NULL, 1, 1, 0, 2010, '2018-07-16 07:59:19', '2018-07-16 07:59:19'),
(130, 'A Web-Based Class Scheduling and Faculty Loading with Grading System for Systems Plus College Foundation', 'Marcelo T. Regalado Jr.', 5, NULL, 1, 1, 0, 2010, '2018-07-16 08:01:29', '2018-07-16 08:01:29'),
(131, 'Human Resource Information System with SMS Notification for Pampanga Development Bank', 'Christian V. Iligan, Nina Gennalie V. Mercado, Dale Louis T. Salvador, Ann Gellie C. Tapnio', 1, NULL, 1, 1, 1, 2016, '2018-07-18 07:12:59', '2018-07-18 07:12:59'),
(132, 'Class Scheduling System For City College of Angeles', 'Romar C. Bucad, Mark Jemuel M. Pamintuan, An Janet V. Regala, Jordan B. Veraya', 2, NULL, 1, 1, 1, 2015, '2018-07-18 07:13:58', '2018-07-18 07:13:58'),
(133, 'A Tracking Management System For G4 Corporation', 'Denzel T. Callos, Aaron Jay Y. Dalut, Howell S. Marimla, Ronneil B. Mercado, Wilson D. Pepito', 1, NULL, 1, 1, 1, 2017, '2018-07-18 07:14:25', '2018-07-18 07:14:25'),
(134, 'iCuento: Interactive Story Telling Android Game App about the Filipino Modern Folklores for Kids', 'Raphael J. Albano, Xyron Jay L. Amio, Mary Ann C. Nocum, Maverick C. Siapo', 1, NULL, 1, 1, 1, 2017, '2018-07-18 07:17:41', '2018-07-18 07:17:41'),
(135, 'Design Up: A Cake Customizing, Designing and Website for DDL Homemade Cake', 'Ranzelle D. Maglaqui, Rodelio E. Mendoza Jr., Mark-jel Y. Reyes, Liamdrue M. Sapera', 1, NULL, 1, 1, 1, 2017, '2018-07-18 07:18:24', '2018-07-18 07:18:24'),
(136, 'Virtual Laboratory of Performing Acid-Based Experiments in Chemistry', 'Rommel C. Basco, Christopher BJ S. Hidalgo, Chinnie D. Mallari, Samantha Marie M. Panlilio, Kenneth Harold C. Salto', 2, NULL, 1, 1, 1, 2017, '2018-07-18 07:18:54', '2018-07-18 07:18:54'),
(137, 'TOMAS \"Trade Winds Online Mover\'s Application System\"', 'Gretchen R. Abesamis, Shaina D. Dela Cruz, Baby Maricel J. Dupale, Jelyza G. Tolentino', 1, NULL, 1, 1, 1, 2017, '2018-07-18 07:19:26', '2018-07-18 07:19:26'),
(138, 'An Online Water Billing System with Mobile andriod App and Bluetooth Printer for Xevera Water District Incorporated', 'Mariz A. Candelaria, Shaira Louise R. Capili, Manuel M. Manansala Jr., Joimie C. Mariano', 1, NULL, 1, 1, 1, 2016, '2018-07-18 07:19:50', '2018-07-18 07:19:50'),
(139, 'A Real-time Patient Information and Medical Supplies Monitoring System with QR Code for City Health Office of Angeles City', 'Rica Shella B. Dimacali, Clarisa G. Lapuz, Dianne Mariel D. Saldivar, Ma. Celine Joyce Tanglao', 1, NULL, 1, 1, 1, 2016, '2018-07-18 07:20:07', '2018-07-18 07:20:07'),
(140, 'Travel Adviser with Time Organizer', 'Angela D. Dimatulac, Alexis Joyce S. Laingco, Karen S. Nain, Warren B. Tahum', 1, NULL, 1, 1, 1, 2016, '2018-07-18 07:20:31', '2018-07-18 07:20:31'),
(141, 'U-Plan: An Event Management Hub', 'Dannica P. Bañola, Melvin C. Bumatay, Joshua Dela Peña, Archie c. Sagum', 1, NULL, 1, 1, 1, 2017, '2018-07-18 07:20:56', '2018-07-18 07:20:56'),
(142, 'Web-Based Mobile Zoo Information System for Zoocobia WEBMOZIS', 'Ryan Joseph Y. Dela Rosa, Jolan S. Masangcay, Jay Patrick S. Torres', 1, NULL, 1, 1, 1, 2016, '2018-07-18 07:21:16', '2018-07-18 07:21:16'),
(143, 'Prompt CARE Learning Center Web and Mobile Application', 'Jeric R. Cortez, Oliver N. Manuel, John Christian P. Reyes, Kenneth B. Valerio', 1, NULL, 1, 1, 1, 2016, '2018-07-18 07:21:36', '2018-07-18 07:21:36'),
(144, 'Web-Based Management System for Extreme Salon', 'Randy S. Policarpio, Keith Lance L. Gueco, Steven A. Fuller, Dean Jayson D. Castro', 1, NULL, 1, 1, 1, 2016, '2018-07-18 07:21:58', '2018-07-18 07:21:58'),
(145, 'Hotel Management System (Hotel SPCNO)', 'Jenel Valencia, Kent P. Alvarez, Sherry Rose L. Ignacio, Rae Nathaniel Tira', 1, NULL, 1, 1, 1, 2016, '2018-07-18 07:22:17', '2018-07-18 07:22:17'),
(146, 'GARDUINO - Automated Garden Watering Using Soil Moisture System', 'Kristopher Renzo C. Cabarle, Derick M. Gozun, Chantal Joy Idos, Ujeen A. Miranda', 1, NULL, 1, 1, 1, 2017, '2018-07-18 07:22:33', '2018-07-18 07:22:33'),
(147, 'Sicily Market Online Ordering System', 'Randolph G. Roldan, Francis T, Cortez, Russel M. Galang, Harvey P. Manalo', 1, NULL, 1, 1, 1, 2016, '2018-07-18 07:22:47', '2018-07-18 07:22:47'),
(148, '(CD Only) Mobishop: A Framework for Virtual Cart Using Android Phones', 'Sheryl R. Clemente, John Michael C. Franco, Mio Marlo M. Ong', 2, NULL, 1, 1, 1, 2012, '2018-07-19 02:12:02', '2018-08-20 03:55:25'),
(149, '(CD Only) A Real Time Ordering System With Inventory And Sales Report', 'Mark Kevin E. Bonon, Emerald Kim V. De Dios, Jamie S. Polidario, Jennyna Anne D. Ramos', 1, NULL, 1, 1, 1, 2013, '2018-07-19 02:14:17', '2018-07-19 02:29:37'),
(150, '(CD Only) Virtual Tour For SPCF IT Building', 'Christian Dale G. Lacsina, Marwin S. Glapon, Carlito S. Santiago Jr.', 1, NULL, 1, 1, 1, 2013, '2018-07-19 02:15:32', '2018-07-19 02:29:39'),
(151, '(CD Only) Corporate Personnel Tracking System', 'Berlin G. Adarvie Jr., William A. Leosala, Mildred Monterde, Vincent G. Silvia', 1, NULL, 1, 1, 1, 2012, '2018-07-19 02:16:40', '2018-08-17 03:12:11'),
(152, '(CD Only) An Online Bus Reservation And Tracking System For Manila Genesis Charter And Tours Incorporated', 'Rodney D. Caisip, Christin T. Calma, Kimberly G. Carreon, Jerome L. Rivera', 1, NULL, 1, 1, 1, 2014, '2018-07-19 02:25:36', '2018-07-19 02:29:43'),
(153, '(CD Only) Groovy Math: An Interactive Dance Revolution Math Game Using Dance Pad', 'Rogelyn C. Coper, Aimee A. Galang, Christopher John L. Pangilinan, Arvey V. Tobias, Nathaniel A. Tolentino', 1, NULL, 1, 1, 1, 2013, '2018-07-19 02:32:44', '2018-07-19 02:32:44'),
(154, '(CD Only) Balibago Waterworks System Inc. Billing and Collection System with Meter Reading Device using Android', 'Jonnel D. Dizon, Jayson A. Mamangun, Arnold John M. Pabillo, Lester Freud Soliman', 1, NULL, 1, 1, 1, 2015, '2018-07-19 02:36:49', '2018-07-19 02:36:49'),
(155, '(CD Only) Hanap Trabaho Online Application For Job Seeker in CDC', 'Shandelle C. Adrias, Ronald L. Lumanlan, Edmar L. Ocasiones, Jay Francis S. Ordona', 1, NULL, 1, 1, 1, 2015, '2018-07-19 02:38:28', '2018-07-19 02:38:28'),
(156, '(CD Only) Human Resource Information System', 'John Patrick L. Duya, Kenneth T. Gopez, Michael Angelo R. Marlangawe, Ma. Christina Olivet J. Tolentino', 1, NULL, 1, 1, 1, 2014, '2018-07-19 02:40:21', '2018-07-19 02:40:21'),
(157, '(CD Only) Path Finding Algorithm for Unmanned Ground Vehicle', 'Ian Christopher L. David, Ann Kemberly E. Espineda, Marielle Faye B. Garcia', 2, NULL, 1, 1, 1, 2010, '2018-07-19 02:46:48', '2018-07-19 02:46:48'),
(158, '(CD Only) Premonition++: Destination Prediction Capability Using Android Smartphones', 'Benzon A. Catap, Nathaniel M. Girasol, Norhan V. Montemayor, Ralph Lauren M. Guintu', 2, NULL, 1, 1, 1, 2012, '2018-07-19 02:49:59', '2018-07-19 02:49:59'),
(159, '(CD Only) Online Job Market for Systems Plus College Foundation', 'Allem F. Catacutan, John Albert T. Cunanan, Marlon John G. Enriquez, Harold O. Rivera, Lester C. Vilapana', 1, NULL, 1, 1, 1, 2012, '2018-07-19 03:00:26', '2018-07-19 03:00:26'),
(160, '(CD Only) A Mobile-Centric Location-Based Advertising and Marketing Application', 'Patrick Ian Y. Canlas, Dustin M. Tuazon, Mikko Q. Vasay', 2, NULL, 1, 1, 1, 2014, '2018-07-19 03:01:31', '2018-07-19 03:01:31'),
(161, '(CD Only) 3D Mapping System for Pampanga Agricultural College', 'Ocrine Jun-Jun S. Liwanag', 5, NULL, 1, 1, 1, 2013, '2018-07-19 03:04:27', '2018-07-19 03:04:27'),
(162, '(CD Only) QR Code File Keeping System for Mabalacat City Philippine National Police', 'Eduard S. Baracina, Gwendoline T. Ocampo, Renel B. Singian', 1, NULL, 1, 1, 1, 2013, '2018-07-19 03:06:17', '2018-07-19 03:06:17'),
(163, '(CD Only) An Interactive Gesture-Based Educational Game Using Kinect', 'Edwin G. Malig, Ronald D. Reyes, Robert Peter Mansion, Aiza C. Suarez, Arvin Magtuloy', 1, NULL, 1, 1, 1, 2013, '2018-07-19 03:11:05', '2018-07-19 03:11:05'),
(164, '(CD Only) Development of 3D Interactive Math Game on Basic Arithmetic Concepts', 'Ralph Joseph M. David, Ralph Vincent S. Evano, Imee V. Francisco, John Daniel C. Tiambeng', 1, NULL, 1, 1, 1, 2012, '2018-07-19 03:13:09', '2018-07-19 03:13:09'),
(165, '(CD Only) Web-Based Loan Application And Management for Merzon and Son Lending Corporaition', 'Alki Bem P. Cabral, Justin G. Canlas, Benjo B. Cunanan, Marion Karl A. Nunag', 1, NULL, 1, 1, 1, 2015, '2018-07-19 03:19:24', '2018-07-19 03:19:24'),
(166, '(CD Only) WebLMS - Web-based Learning Management System', 'Erwin Joseph M. Datu, Ruby Ann G. Freo, Roy Ace S. Lacsina, Christian Lawrence A. Rivera', 1, NULL, 1, 1, 1, 2012, '2018-07-19 03:20:55', '2018-07-19 03:20:55'),
(167, '(CD Only) SPCF IKELL with game assimilation', 'Michael John M. Bungco, Rosendo M. De Jesus, Elynor T. Kurzyniec, Katherine L. Yutuc', 1, NULL, 1, 1, 1, 2011, '2018-07-19 03:22:12', '2018-07-19 03:22:12'),
(169, '(CD Only) Mobile Grocery Hub', 'Joshua Angelo Diaz, Erwin Ello, Ivan Marc Hibanada, Angelica Cassandra Vallada', 1, NULL, 1, 1, 1, 2018, '2018-07-19 03:29:14', '2018-07-19 03:29:14'),
(170, '(CD Only) Aerial Monitoring for Detecting Rice Plant Health Through Image Processing', 'John Milton Morada, Christian Carangan, Russel Guintu, Kelvin Soberano, Tui Guiniven', 2, NULL, 1, 1, 1, 2018, '2018-07-19 03:31:22', '2018-07-19 03:32:47'),
(171, '(CD Only) Virtual Walk-Through for Pampanga State Agricultural University', 'Marvin C. Luquiaz', 5, NULL, 1, 1, 1, 2018, '2018-07-19 03:32:13', '2018-07-19 03:32:50'),
(172, '(CD Only) CocoKnock: Implementation of Fuzzy Logic to Measure the Coconut Maturity Level Using Arduino Controller', 'Hilene E. Hernandez', 5, NULL, 1, 1, 1, 2018, '2018-07-19 03:34:03', '2018-07-19 03:34:03'),
(173, '(CD Only) PIMSF', 'John Paul Miranda', 5, NULL, 1, 1, 1, 2018, '2018-07-19 03:34:46', '2018-07-19 03:34:46'),
(174, '(CD Only) Emergency Response Hub', 'Fernandez Hasibar Jhoneil', 5, NULL, 1, 1, 1, 2018, '2018-07-19 03:35:34', '2018-07-19 03:35:34'),
(175, '(CD Only) Aircraft Models and Maintenance Simulation Using Leap Motion for Philsca', 'Kim Gerald P. Cortes', 5, NULL, 1, 1, 1, 2018, '2018-07-19 03:36:49', '2018-07-19 03:36:49'),
(176, '(CD Only) Integrating Mixed Reality and Clustering Algorithm with Systematic Desensitization in Approach to Patients with Phobia', 'Mark Leonard B. Bongot, Susana B. Herron, Glen Kelvin H. Lim, Leiniel A. Magbanwa, Matthew Miclat', 3, NULL, 1, 1, 1, 2018, '2018-07-19 03:39:00', '2018-07-19 08:47:40'),
(177, '(CD ONLY) ePad: An Educators Class Organizer for iOS', 'Catherine Joyce M. Dizon, Daniel M. Pagcu, Rick Harvey R. Timpug', 1, NULL, 1, 1, 1, 2012, '2018-08-17 03:07:32', '2018-08-17 03:32:18'),
(178, '(CD Only) A Web Based Faculty Evaluation System for SPCF', 'Fernaliza Joy B. Canicosa, Annjeline S. Manuntag, Lester S. Roman, Alliza Keith R. Tobias, Joanne G. Tua', 1, NULL, 1, 1, 1, 2012, '2018-08-17 07:48:56', '2018-08-17 07:48:56'),
(179, '(CD Only) Mobishop v2.0: A Shopping Assistant for Android Phone Based on Shopper\'s Purchasing Pattern', 'Camille D. Cura, Joanabel Pauline C. Mancita, Kimberly T. Reyes', 2, NULL, 1, 1, 1, 2014, '2018-08-17 08:11:49', '2018-08-17 08:11:49'),
(180, '(CD Only) BIO-REALITY for Junior High School: An Augmented Reality for Biology Subject', 'John Vincent Lagmay', 5, NULL, 1, 1, 1, 2018, '2018-08-20 04:00:21', '2018-08-20 04:00:21'),
(181, '(CD Only) An IOS English Game Application For Grade 7', 'Jemelyn M. Alignay, Romano L. Atienza, Arrianne R. Dizon, Arman Camille D. Quino', 1, NULL, 1, 1, 1, 2013, '2018-08-20 05:51:17', '2018-08-20 05:51:17');

-- --------------------------------------------------------

--
-- Table structure for table `borrowers`
--

CREATE TABLE `borrowers` (
  `id` int(10) UNSIGNED NOT NULL,
  `book_id` int(11) NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deadline` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `courses`
--

CREATE TABLE `courses` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `courses`
--

INSERT INTO `courses` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'BSIT', '2018-05-10 15:03:47', '2018-06-13 06:11:05'),
(2, 'BSCS', '2018-05-10 15:04:20', '2018-06-13 06:12:45'),
(3, 'BSIS', '2018-06-12 14:12:10', '2018-06-12 14:12:10'),
(4, 'BSEE', '2018-07-16 07:48:06', '2018-07-16 07:48:06'),
(5, 'MIT', '2018-07-16 07:50:43', '2018-07-16 07:50:43');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(15, '2014_10_12_000000_create_users_table', 1),
(16, '2014_10_12_100000_create_password_resets_table', 1),
(17, '2018_04_12_083111_books', 1),
(18, '2018_04_13_024238_add_is_available_to_books_table', 1),
(19, '2018_04_15_151251_add_image_col_to_users', 1),
(20, '2018_04_17_111946_add_image_col_to_books', 1),
(21, '2018_04_26_131111_add_with_cd', 1),
(26, '2018_05_10_215045_add_course_id_col_to_books', 3),
(27, '2018_05_10_215612_create_courses_table', 3),
(28, '2018_08_30_110431_add_quantity_col_to_books', 4),
(29, '2018_05_01_133902_create_borrowers_table', 5);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('admin@gmail.com', '$2y$10$0K.3SXeDcGrr34/pglQK.OmmZVNeDoKX2xnzm7wrlxJZMexKudqCW', '2018-07-19 04:46:49'),
('allenlenon5@gmail.com', '$2y$10$M0ZMkjwLDO7SEmk0rDTFEucXgS4h3GMqmDiH1TO5quV3wEnk9eGye', '2018-08-15 15:46:31');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `image`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Jan Paulo', 'paulodelapena22@gmail.com', NULL, '$2y$10$EBVLC9YPBMD4OBdgdAKo2eVNKbBSV9uvY2ua9TjCxe2TOljMosJ.a', 'mHP8gNn7LUXiGiHLnzLhKLNef31jhK6H6nUuWk2uxPTW2k0hUVME3rGi6JWX', '2018-04-30 07:00:03', '2018-04-30 07:00:03'),
(2, 'sam todi', 'allenlenon5@gmail.com', '2.1533391245.jpg', '$2y$10$/l/jJqVHjMhTHpWg0GhuhuGj1QWTmgOweJO1HnxM/ke4J1tREfBOa', 'CMRcZlArpGXOC6xkaYNCqmZtcg6wAA0Fwe7HKxJlACyIrfqiHLFghp6UIEgJ', NULL, '2018-08-04 14:00:45');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `borrowers`
--
ALTER TABLE `borrowers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `courses`
--
ALTER TABLE `courses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `books`
--
ALTER TABLE `books`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=182;

--
-- AUTO_INCREMENT for table `borrowers`
--
ALTER TABLE `borrowers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `courses`
--
ALTER TABLE `courses`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
