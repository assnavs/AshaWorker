-- phpMyAdmin SQL Dump
-- version 4.1.12
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: May 08, 2023 at 08:39 PM
-- Server version: 5.6.16
-- PHP Version: 5.5.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `ashaworker`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE IF NOT EXISTS `admin` (
  `id` int(12) NOT NULL AUTO_INCREMENT,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `confirm password` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `ashaworker_familydetails`
--

CREATE TABLE IF NOT EXISTS `ashaworker_familydetails` (
  `id` int(12) NOT NULL AUTO_INCREMENT,
  `husbent_name` varchar(50) NOT NULL,
  `husbent_age` varchar(50) NOT NULL,
  `h_aadhar_number` varchar(50) NOT NULL,
  `husbent_job` varchar(100) NOT NULL,
  `consult_hospital` varchar(100) NOT NULL,
  `wardname` varchar(100) NOT NULL,
  `wardnumber` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `ashaworker_familydetails`
--

INSERT INTO `ashaworker_familydetails` (`id`, `husbent_name`, `husbent_age`, `h_aadhar_number`, `husbent_job`, `consult_hospital`, `wardname`, `wardnumber`) VALUES
(4, 'ghh', 'hhhff', 'f', 'f', 'f', 'f', 'f'),
(5, 'ghh', 'hhhff', 'f', 'f', 'f', 'f', 'f'),
(6, 'xcdc', 'dd', 'dd', 'dd', 'dd', 'dd', 'ddd');

-- --------------------------------------------------------

--
-- Table structure for table `ashaworker_instructions`
--

CREATE TABLE IF NOT EXISTS `ashaworker_instructions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `aser` varchar(200) NOT NULL,
  `ains` varchar(225) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `ashaworker_instructions`
--

INSERT INTO `ashaworker_instructions` (`id`, `aser`, `ains`) VALUES
(1, 'Immunisation', 's'),
(2, 'Corona Care', 'asd');

-- --------------------------------------------------------

--
-- Table structure for table `ashaworker_pregregisters`
--

CREATE TABLE IF NOT EXISTS `ashaworker_pregregisters` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ward_number` varchar(200) NOT NULL,
  `house_number` varchar(200) NOT NULL,
  `name` varchar(200) NOT NULL,
  `con_date` varchar(200) NOT NULL,
  `last_periods_date` varchar(200) NOT NULL,
  `blood_group` varchar(200) NOT NULL,
  `weight` varchar(200) NOT NULL,
  `height` varchar(200) NOT NULL,
  `dob` varchar(200) NOT NULL,
  `last_checkup_date` varchar(200) NOT NULL,
  `disease` varchar(200) NOT NULL,
  `husbands_name` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `ashaworker_pregregisters`
--

INSERT INTO `ashaworker_pregregisters` (`id`, `ward_number`, `house_number`, `name`, `con_date`, `last_periods_date`, `blood_group`, `weight`, `height`, `dob`, `last_checkup_date`, `disease`, `husbands_name`) VALUES
(1, 'dd', 'dd', 'dd', 'dd', 'd', 'd', 'd', 'd', 'd', 'd', 'd', 'd'),
(2, 'lkh', 'khj', 'kjkj', 'hkjhkjh', 'kjhkjh', 'kjhkj', 'jhjbj', 'jhkj', 'hkjh', 'jhkj', '''m', 'nl');

-- --------------------------------------------------------

--
-- Table structure for table `ashaworker_questions`
--

CREATE TABLE IF NOT EXISTS `ashaworker_questions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` varchar(200) NOT NULL,
  `date` varchar(225) NOT NULL,
  `question` varchar(225) NOT NULL,
  `reply` varchar(200) NOT NULL,
  `status` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `ashaworker_questions`
--

INSERT INTO `ashaworker_questions` (`id`, `uid`, `date`, `question`, `reply`, `status`) VALUES
(1, '2', '', 'xcv', 'sdfdf', 'reply'),
(2, '2', '2022-10-13', 'qwer', '', 'pending'),
(3, '2', '2022-10-13', 'qwer', 'zxc', 'reply');

-- --------------------------------------------------------

--
-- Table structure for table `ashaworker_register`
--

CREATE TABLE IF NOT EXISTS `ashaworker_register` (
  `id` int(12) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `address` varchar(50) NOT NULL,
  `number` varchar(50) NOT NULL,
  `ward_number` varchar(50) NOT NULL,
  `work_place` varchar(50) NOT NULL,
  `panchayat` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=11 ;

--
-- Dumping data for table `ashaworker_register`
--

INSERT INTO `ashaworker_register` (`id`, `name`, `address`, `number`, `ward_number`, `work_place`, `panchayat`, `email`, `password`) VALUES
(9, 'dd', 'dddd', 'dd', 'd', 'd', 'd', 's@2', 'sss'),
(10, 'v', 'vjhv', 'jhvjhv', 'jvjhv', 'jvv', ',bvjh', 'nithin@gmail.com', '12345');

-- --------------------------------------------------------

--
-- Table structure for table `ashaworker_report`
--

CREATE TABLE IF NOT EXISTS `ashaworker_report` (
  `id` int(12) NOT NULL AUTO_INCREMENT,
  `subject` varchar(50) NOT NULL,
  `description` varchar(50) NOT NULL,
  `no_pregnent_womens` varchar(50) NOT NULL,
  `no_vacination_child` varchar(50) NOT NULL,
  `ward_no` varchar(50) NOT NULL,
  `panchayat` varchar(50) NOT NULL,
  `aid` varchar(115) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `ashaworker_report`
--

INSERT INTO `ashaworker_report` (`id`, `subject`, `description`, `no_pregnent_womens`, `no_vacination_child`, `ward_no`, `panchayat`, `aid`) VALUES
(5, 'g', 'g', 'g', 'g', 'g', 'g', '10'),
(6, 'hkj', 'hkj', 'khkjh', 'khkj', 'hkhk', 'hkh', '10'),
(7, 'hkj', 'hkj', 'khkjh', 'khkj', 'hkhk', 'hkh', '10');

-- --------------------------------------------------------

--
-- Table structure for table `ashaworker_userregisters`
--

CREATE TABLE IF NOT EXISTS `ashaworker_userregisters` (
  `id` int(12) NOT NULL AUTO_INCREMENT,
  `uname` varchar(100) NOT NULL,
  `age` varchar(100) NOT NULL,
  `number` varchar(10) NOT NULL,
  `ward_no` varchar(100) NOT NULL,
  `place` varchar(100) NOT NULL,
  `aadhar_number` varchar(500) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `ashaworker_userregisters`
--

INSERT INTO `ashaworker_userregisters` (`id`, `uname`, `age`, `number`, `ward_no`, `place`, `aadhar_number`, `email`, `password`) VALUES
(2, 'bhj', 'gjhg', 'ghj', 'gjhghj', 'gjhgjh', 'gjg', 'gokulsaik@gmail.com', '123');

-- --------------------------------------------------------

--
-- Table structure for table `ashaworker_vaccines`
--

CREATE TABLE IF NOT EXISTS `ashaworker_vaccines` (
  `id` int(12) NOT NULL AUTO_INCREMENT,
  `father_name` varchar(50) NOT NULL,
  `mother_name` varchar(50) NOT NULL,
  `child_name` varchar(50) NOT NULL,
  `house_number` varchar(50) NOT NULL,
  `ward_no` varchar(50) NOT NULL,
  `dob` date NOT NULL,
  `age` varchar(50) NOT NULL,
  `vaccine_details` varchar(50) NOT NULL,
  `phone_no` varchar(50) NOT NULL,
  `place` varchar(50) NOT NULL,
  `aid` varchar(116) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `ashaworker_vaccines`
--

INSERT INTO `ashaworker_vaccines` (`id`, `father_name`, `mother_name`, `child_name`, `house_number`, `ward_no`, `dob`, `age`, `vaccine_details`, `phone_no`, `place`, `aid`) VALUES
(4, 'dd', 'hh', 'dfgh', 'dd', '3', '2022-09-16', 'efwe', 'wgsg', '354435', 'dff', ''),
(5, 'were', 'bjh', 'kjhkj', 'kjkj', 'kjj', '2022-10-26', '21', 'q', '8787987909', 'tyutu', ''),
(6, 'were', 'bjh', 'kjhkj', 'kjkj', 'kjj', '2022-10-26', '21', 'q', '8787987909', 'tyutu', '10'),
(7, 'ui1kk', 'jlkj', 'jkjk', 'jkhk', 'khkj', '2022-10-26', '67', 'jk', 'kjkj', 'kjk', '10');

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE IF NOT EXISTS `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE IF NOT EXISTS `auth_group_permissions` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE IF NOT EXISTS `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=33 ;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add user', 4, 'add_user'),
(14, 'Can change user', 4, 'change_user'),
(15, 'Can delete user', 4, 'delete_user'),
(16, 'Can view user', 4, 'view_user'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session'),
(25, 'Can add register', 7, 'add_register'),
(26, 'Can change register', 7, 'change_register'),
(27, 'Can delete register', 7, 'delete_register'),
(28, 'Can view register', 7, 'view_register'),
(29, 'Can add instructions', 8, 'add_instructions'),
(30, 'Can change instructions', 8, 'change_instructions'),
(31, 'Can delete instructions', 8, 'delete_instructions'),
(32, 'Can view instructions', 8, 'view_instructions');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

CREATE TABLE IF NOT EXISTS `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE IF NOT EXISTS `auth_user_groups` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE IF NOT EXISTS `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `child_details`
--

CREATE TABLE IF NOT EXISTS `child_details` (
  `id` int(12) NOT NULL AUTO_INCREMENT,
  `delivery_date` date NOT NULL,
  `gender` varchar(50) NOT NULL,
  `hospital_name` varchar(50) NOT NULL,
  `type_of_delivery` varchar(50) NOT NULL,
  `blood_group` varchar(50) NOT NULL,
  `weight` varchar(50) NOT NULL,
  `BCG_date` date NOT NULL,
  `hepatitis_b_date` date NOT NULL,
  `opv_date` date NOT NULL,
  `discharge_date` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `child_details`
--

INSERT INTO `child_details` (`id`, `delivery_date`, `gender`, `hospital_name`, `type_of_delivery`, `blood_group`, `weight`, `BCG_date`, `hepatitis_b_date`, `opv_date`, `discharge_date`) VALUES
(1, '2022-06-16', 'male', 'rainbow', 'vkxvjxkj', 'A-ve', '34', '2022-06-17', '2022-06-23', '2022-06-22', '2022-06-22');

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE IF NOT EXISTS `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE IF NOT EXISTS `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(8, 'ashaworker', 'instructions'),
(7, 'ashaworker', 'register'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(6, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE IF NOT EXISTS `django_migrations` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=19 ;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2022-09-12 06:44:06.305461'),
(2, 'auth', '0001_initial', '2022-09-12 06:44:10.552409'),
(3, 'admin', '0001_initial', '2022-09-12 06:44:11.628827'),
(4, 'admin', '0002_logentry_remove_auto_add', '2022-09-12 06:44:11.697992'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2022-09-12 06:44:11.745990'),
(6, 'contenttypes', '0002_remove_content_type_name', '2022-09-12 06:44:12.353241'),
(7, 'auth', '0002_alter_permission_name_max_length', '2022-09-12 06:44:12.687067'),
(8, 'auth', '0003_alter_user_email_max_length', '2022-09-12 06:44:12.937648'),
(9, 'auth', '0004_alter_user_username_opts', '2022-09-12 06:44:13.004887'),
(10, 'auth', '0005_alter_user_last_login_null', '2022-09-12 06:44:13.392447'),
(11, 'auth', '0006_require_contenttypes_0002', '2022-09-12 06:44:13.419298'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2022-09-12 06:44:13.499277'),
(13, 'auth', '0008_alter_user_username_max_length', '2022-09-12 06:44:13.831008'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2022-09-12 06:44:14.174061'),
(15, 'auth', '0010_alter_group_name_max_length', '2022-09-12 06:44:14.497582'),
(16, 'auth', '0011_update_proxy_permissions', '2022-09-12 06:44:14.582158'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2022-09-12 06:44:14.910972'),
(18, 'sessions', '0001_initial', '2022-09-12 06:44:15.390734');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE IF NOT EXISTS `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('1gx3dix15eaixic3lcje9ayjx0t4rkqv', 'e30:1oY0Lt:pY3Jt2ENRSQ9WQiG-Ob1HU6aVltNrvbYW7GTxW378p0', '2022-09-27 07:29:01.300001'),
('avgdip7stulhr5xqwh9qir99dqxj345n', 'e30:1onGZ7:3XR5Vj516cVMsTAyhcGJteGhyb4HdkhuNt9F8uqck9M', '2022-11-08 09:49:45.453280'),
('e15g8jdy4c0m6uag5h9wl0wh4ftnghfp', 'e30:1olivy:8c6pFel1a1-g1Oe1u8PLIatSYs8XYJ7UzPPDkU3oVoE', '2022-11-04 03:42:58.916944'),
('tfz9stof9y4utbz6qk3v9lgr5jq07wp7', 'eyJhaWQiOjEwLCJuYW1lIjoidiIsImVtYWlsIjoibml0aGluQGdtYWlsLmNvbSIsImFzaGEiOiJhc2hhIn0:1ompxF:Xbk8FAqjz-WKL8nZzcurJ9NiW3UMQstH4A5e8_u8I7s', '2022-11-07 05:24:53.272919'),
('vscuhhdv4npl8wgx9ppw3716fbuoxsr5', 'eyJ1aWQiOjIsInVuYW1lIjoiYmhqIiwiZW1haWwiOiJnb2t1bHNhaWtAZ21haWwuY29tIiwidXNlciI6InVzZXIifQ:1olm5x:Cz5k9o7kyGYEKPro-7bax6zHBmZljNHg3o1oIFezjV8', '2022-11-04 07:05:29.339264');

-- --------------------------------------------------------

--
-- Table structure for table `family_details`
--

CREATE TABLE IF NOT EXISTS `family_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ward_number` varchar(50) NOT NULL,
  `house_number` varchar(50) NOT NULL,
  `house_name` varchar(50) NOT NULL,
  `name` varchar(50) NOT NULL,
  `dob` date NOT NULL,
  `age` varchar(50) NOT NULL,
  `relationship_head` varchar(50) NOT NULL,
  `mobile_number` varchar(50) NOT NULL,
  `address` varchar(100) NOT NULL,
  `aadhar_number` varchar(50) NOT NULL,
  `blood_group` varchar(50) NOT NULL,
  `weight` varchar(50) NOT NULL,
  `height` varchar(50) NOT NULL,
  `job` varchar(50) NOT NULL,
  `email` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `family_details`
--

INSERT INTO `family_details` (`id`, `ward_number`, `house_number`, `house_name`, `name`, `dob`, `age`, `relationship_head`, `mobile_number`, `address`, `aadhar_number`, `blood_group`, `weight`, `height`, `job`, `email`) VALUES
(1, '5', '7', 'Abcd', 'Anandu', '2022-07-12', '22', 'Abcd', '8943409211', 'Gshhsia', '7828992992', 'A+', '70', '160', 'Daily ', 'daily@gmail.com'),
(2, '5', '101', 'Aaab', 'Abcd', '2022-07-12', '30', 'Bcf', '893215678', 'Alpy', '87626181991', 'B+ve', '80', '175', 'Sr service ', 'Abcd@gmail.com'),
(3, '', '', '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', ''),
(4, '5', '6', 'Asdf', 'Abu', '2022-08-02', '32', 'Abu', '6857464241', 'Xhxhxjckv', '976858635251', 'A', '45', '123', 'Nil', 'anu@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

CREATE TABLE IF NOT EXISTS `questions` (
  `id` int(12) NOT NULL AUTO_INCREMENT,
  `uid` varchar(100) NOT NULL,
  `date` date NOT NULL,
  `question` varchar(500) NOT NULL,
  `reply` varchar(500) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `questions`
--

INSERT INTO `questions` (`id`, `uid`, `date`, `question`, `reply`) VALUES
(1, '3', '2022-06-16', 'cckdkkkvksd', 'Gg'),
(2, '1', '2022-07-12', 'Ask', 'Nothing'),
(3, '1', '2022-07-30', 'Hy', ''),
(4, '2', '2022-07-31', 'Hiii', '');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `id` int(12) NOT NULL AUTO_INCREMENT,
  `ward_number` varchar(100) NOT NULL,
  `house_number` varchar(100) NOT NULL,
  `house_name` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `dob` varchar(100) NOT NULL,
  `age` varchar(100) NOT NULL,
  `mobile_number` varchar(100) NOT NULL,
  `address` varchar(100) NOT NULL,
  `aadhar_number` varchar(100) NOT NULL,
  `blood_group` varchar(100) NOT NULL,
  `weight` varchar(100) NOT NULL,
  `height` varchar(100) NOT NULL,
  `job` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `ward_number`, `house_number`, `house_name`, `name`, `dob`, `age`, `mobile_number`, `address`, `aadhar_number`, `blood_group`, `weight`, `height`, `job`, `email`, `password`) VALUES
(1, '3', '500', 'abcd', 'seema', '12/05/1998', '30', '8956452310', 'ekm', '86695641235', '', '', '', '', 'anandu@gmail.com', '555'),
(2, '5', '101', 'Aaab', 'Abcd', '12/03/1998', '30', '893215678', 'Alpy', '87626181991', 'B+ve', '80', '175', 'Sr service ', 'Abcd@gmail.com', '888'),
(3, '', '852', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(4, '5', '432', 'Asdf', 'Abu', '13/02/1987', '32', '6857464241', 'Xhxhxjckv', '976858635251', 'A', '45', '123', 'Nil', 'anu@gmail.com', '666'),
(5, '2', '2', 'Abcd', 'Abi', '12/09/1888', '23', '77289291919', 'Alpy', '62728282881', 'A+ve', '70', '120', 'No', 'abi@gmail.com', '7777'),
(7, '5', '456', 'Abcd', 'Abu', '13/08/2000', '20', '8965432109', 'Alpy', '9887777664411', 'A+ve', '80', '175', 'Driver', 'abu@gmail.com', '777');

-- --------------------------------------------------------

--
-- Table structure for table `user_registration`
--

CREATE TABLE IF NOT EXISTS `user_registration` (
  `id` int(12) NOT NULL AUTO_INCREMENT,
  `user_id` varchar(100) NOT NULL,
  `preg_count` varchar(100) NOT NULL,
  `p_name` varchar(100) NOT NULL,
  `month` varchar(100) NOT NULL,
  `dob` date NOT NULL,
  `age` varchar(100) NOT NULL,
  `p_blood_group` varchar(100) NOT NULL,
  `p_weight` varchar(100) NOT NULL,
  `p_height` varchar(100) NOT NULL,
  `p_aadhar_number` varchar(200) NOT NULL,
  `td_date` date NOT NULL,
  `last_periods_date` date NOT NULL,
  `disease` varchar(100) NOT NULL,
  `other` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `user_registration`
--

INSERT INTO `user_registration` (`id`, `user_id`, `preg_count`, `p_name`, `month`, `dob`, `age`, `p_blood_group`, `p_weight`, `p_height`, `p_aadhar_number`, `td_date`, `last_periods_date`, `disease`, `other`) VALUES
(3, '10034', '3', 'sree', '2', '2022-06-17', 'A-ve', '75', '167', '98564310', '2022-06-25', '2022-06-25', '2022-06-19', 'Colostrol', 'no'),
(4, '1', '2', 'Abcd', '5', '2022-07-08', 'B', '70', '160', '9876554321', '2022-07-24', '2022-07-24', '2022-07-28', 'Colostrol', 'Nil');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`);

--
-- Constraints for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Constraints for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
