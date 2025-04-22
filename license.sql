-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 22, 2025 at 03:39 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `django`
--
CREATE DATABASE IF NOT EXISTS `django` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `django`;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--
-- Error reading structure for table django.auth_group: #1932 - Table 'django.auth_group' doesn't exist in engine
-- Error reading data for table django.auth_group: #1064 - You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'FROM `django`.`auth_group`' at line 1

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--
-- Error reading structure for table django.auth_group_permissions: #1932 - Table 'django.auth_group_permissions' doesn't exist in engine
-- Error reading data for table django.auth_group_permissions: #1064 - You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'FROM `django`.`auth_group_permissions`' at line 1

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--
-- Error reading structure for table django.auth_permission: #1932 - Table 'django.auth_permission' doesn't exist in engine
-- Error reading data for table django.auth_permission: #1064 - You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'FROM `django`.`auth_permission`' at line 1

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--
-- Error reading structure for table django.auth_user: #1932 - Table 'django.auth_user' doesn't exist in engine
-- Error reading data for table django.auth_user: #1064 - You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'FROM `django`.`auth_user`' at line 1

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--
-- Error reading structure for table django.auth_user_groups: #1932 - Table 'django.auth_user_groups' doesn't exist in engine
-- Error reading data for table django.auth_user_groups: #1064 - You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'FROM `django`.`auth_user_groups`' at line 1

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--
-- Error reading structure for table django.auth_user_user_permissions: #1932 - Table 'django.auth_user_user_permissions' doesn't exist in engine
-- Error reading data for table django.auth_user_user_permissions: #1064 - You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'FROM `django`.`auth_user_user_permissions`' at line 1

-- --------------------------------------------------------

--
-- Table structure for table `crudapp_photoform`
--
-- Error reading structure for table django.crudapp_photoform: #1932 - Table 'django.crudapp_photoform' doesn't exist in engine
-- Error reading data for table django.crudapp_photoform: #1064 - You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'FROM `django`.`crudapp_photoform`' at line 1

-- --------------------------------------------------------

--
-- Table structure for table `crudapp_student`
--
-- Error reading structure for table django.crudapp_student: #1932 - Table 'django.crudapp_student' doesn't exist in engine
-- Error reading data for table django.crudapp_student: #1064 - You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'FROM `django`.`crudapp_student`' at line 1

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--
-- Error reading structure for table django.django_admin_log: #1932 - Table 'django.django_admin_log' doesn't exist in engine
-- Error reading data for table django.django_admin_log: #1064 - You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'FROM `django`.`django_admin_log`' at line 1

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--
-- Error reading structure for table django.django_content_type: #1932 - Table 'django.django_content_type' doesn't exist in engine
-- Error reading data for table django.django_content_type: #1064 - You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'FROM `django`.`django_content_type`' at line 1

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--
-- Error reading structure for table django.django_migrations: #1932 - Table 'django.django_migrations' doesn't exist in engine
-- Error reading data for table django.django_migrations: #1064 - You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'FROM `django`.`django_migrations`' at line 1

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--
-- Error reading structure for table django.django_session: #1932 - Table 'django.django_session' doesn't exist in engine
-- Error reading data for table django.django_session: #1064 - You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'FROM `django`.`django_session`' at line 1
--
-- Database: `ecommerce`
--
CREATE DATABASE IF NOT EXISTS `ecommerce` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `ecommerce`;
--
-- Database: `license`
--
CREATE DATABASE IF NOT EXISTS `license` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `license`;

-- --------------------------------------------------------

--
-- Table structure for table `app_address`
--

CREATE TABLE `app_address` (
  `id` bigint(20) NOT NULL,
  `province` varchar(100) NOT NULL,
  `district` varchar(100) NOT NULL,
  `licence_office` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `app_address`
--

INSERT INTO `app_address` (`id`, `province`, `district`, `licence_office`) VALUES
(1, 'Gandaki province', 'Syangja', '102'),
(2, 'Bagmati province', 'Chitwan', '101'),
(3, 'Lumbini province', 'Dang', '102'),
(4, 'Koshi province', 'Syangja', '101'),
(5, 'Sudurpashchim province', 'Bajura', '102'),
(6, 'Karnali province', 'salyan', '106'),
(7, 'Lumbini province', 'dang', '101'),
(8, 'Madesh province', 'mahottari', '104'),
(9, 'Koshi province', 'Mahottari', '104'),
(10, 'Karnali province', 'Jumla', '103'),
(11, 'Koshi province', 'Bhojpur', '106'),
(12, 'Karnali province', 'Palpa', '107'),
(13, 'Madesh province', 'Janakpur', '105'),
(14, 'Gandaki province', 'Myagdi', '106'),
(15, 'Koshi province', 'Syangja', '104'),
(16, 'Koshi province', 'Syangja', '102'),
(17, 'Lumbini province', 'Arghakhachi', '105');

-- --------------------------------------------------------

--
-- Table structure for table `app_key`
--

CREATE TABLE `app_key` (
  `id` bigint(20) NOT NULL,
  `private_key` longtext NOT NULL,
  `public_key` longtext NOT NULL,
  `created_at` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `app_key`
--

INSERT INTO `app_key` (`id`, `private_key`, `public_key`, `created_at`) VALUES
(1, '-----BEGIN PRIVATE KEY-----\nMIGEAgEAMBAGByqGSM49AgEGBSuBBAAKBG0wawIBAQQgC2CCDF6FhqI8sx+hOdgL\nSyx1TxYHBkE1bC46AtfkjVShRANCAAQR0fbaBf5PiipqPlMc6anLxk7062PKd0F3\nieIiLXn64eAhlxSBCt3LB9/M2V6rCC3l5OjtqnUJpwTXPf7Zs146\n-----END PRIVATE KEY-----\n', '-----BEGIN PUBLIC KEY-----\nMFYwEAYHKoZIzj0CAQYFK4EEAAoDQgAEEdH22gX+T4oqaj5THOmpy8ZO9OtjyndB\nd4niIi15+uHgIZcUgQrdywffzNleqwgt5eTo7ap1CacE1z3+2bNeOg==\n-----END PUBLIC KEY-----\n', '2024-09-18 08:38:01.456290');

-- --------------------------------------------------------

--
-- Table structure for table `app_licencedetails`
--

CREATE TABLE `app_licencedetails` (
  `id` bigint(20) NOT NULL,
  `licence_no` varchar(100) NOT NULL,
  `citizenship_no` varchar(100) NOT NULL,
  `issue_date` date NOT NULL,
  `expiry_date` date NOT NULL,
  `category` varchar(10) NOT NULL,
  `is_printed` tinyint(1) NOT NULL,
  `address_id` bigint(20) NOT NULL,
  `personal_info_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `app_licencedetails`
--

INSERT INTO `app_licencedetails` (`id`, `licence_no`, `citizenship_no`, `issue_date`, `expiry_date`, `category`, `is_printed`, `address_id`, `personal_info_id`) VALUES
(1, '102-14-41694477', '421050-120', '2024-09-18', '2029-09-18', 'A', 1, 1, 1),
(2, '101--40927088', '112233', '2024-09-19', '2029-09-19', 'B', 1, 2, 2),
(3, '102-08-27654600', '5678765', '2024-09-19', '2029-09-19', 'B', 1, 3, 3),
(4, '101--74451765', '122334', '2024-09-19', '2029-09-19', 'B', 1, 4, 4),
(5, '102-05-62627525', '421050', '2024-09-19', '2029-09-19', 'C1', 1, 5, 5),
(6, '106-25-46896135', '874687547', '2024-09-19', '2029-09-19', 'C1', 1, 6, 6),
(7, '101--85003685', '843758347', '2024-09-19', '2029-09-19', 'A', 1, 7, 7),
(8, '104-07-83125603', '7845434', '2024-09-19', '2029-09-19', 'A', 1, 9, 9),
(9, '103-18-58495658', '09289843', '2024-09-19', '2029-09-19', 'A', 1, 10, 10),
(10, '106-22-84317249', '2832838', '2024-09-19', '2029-09-19', 'C1', 1, 11, 11),
(11, '107-04-83456564', '48347373', '2024-09-19', '2029-09-19', 'A', 1, 12, 12),
(12, '105-06-99151157', '7327878', '2024-09-19', '2029-09-19', 'B', 0, 13, 13),
(13, '105-06-65342338', '5676', '2024-09-29', '2029-09-29', 'B', 1, 17, 14);

-- --------------------------------------------------------

--
-- Table structure for table `app_personalinfo`
--

CREATE TABLE `app_personalinfo` (
  `id` bigint(20) NOT NULL,
  `first_name` varchar(100) NOT NULL,
  `middle_name` varchar(100) DEFAULT NULL,
  `last_name` varchar(100) NOT NULL,
  `dob` date NOT NULL,
  `father_name` varchar(100) NOT NULL,
  `blood_group` varchar(5) NOT NULL,
  `contact_no` varchar(10) NOT NULL,
  `email` varchar(254) NOT NULL,
  `photo` varchar(100) DEFAULT NULL,
  `gender` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `app_personalinfo`
--

INSERT INTO `app_personalinfo` (`id`, `first_name`, `middle_name`, `last_name`, `dob`, `father_name`, `blood_group`, `contact_no`, `email`, `photo`, `gender`) VALUES
(1, 'Ashish', 'Raj', 'Poudel', '2003-08-14', 'Yam prasad Poudel', 'A+', '9840519731', 'poudelashishraj7@gmail.com', 'personal_photos/pp_photo_HWFguhT.jpg', 'Male'),
(2, 'Sujina', '', 'Pandey', '2003-01-01', 'Ram Pandey', 'B+', '9745654717', 'sujina@gmail.com', 'personal_photos/sujina.jpg', 'Female'),
(3, 'Mahendra ', '', 'Oli', '2001-09-08', 'Bhubaneshwor Oli', 'A+', '9866963331', 'olimahendra216@gmail.com', 'personal_photos/mahendra.jpg', 'Male'),
(4, 'Ashish', '', 'Poudel', '2000-08-14', 'Yam prasad Poudel', 'A+', '9844444444', 'ashishrajpoudel28@gmail.com', 'personal_photos/pp_photo_41Fafpq.jpg', 'Male'),
(5, 'Ram ', 'Hari', 'Sapkota', '1969-08-05', 'Rudramani Sapkota', 'B+', '9867654347', 'yorac94626@nastyx.com', 'personal_photos/2021-08-22_2.png', 'Male'),
(6, 'Susmita', '', 'KC', '2001-10-25', 'Hari KC', 'O-', '9872676473', 'susmita@gmail.com', 'personal_photos/susmita.jpg', 'Female'),
(7, 'Durga', '', 'Sharma', '2002-10-20', 'Keshab Sharma', 'O+', '9887385648', 'durga@gmail.com', 'personal_photos/durga.png', 'Male'),
(8, 'Laxmi', '', 'Pun', '1995-05-16', 'mohan pun', 'A+', '9856656456', 'jhgfjdshjkf@gmail.com', 'personal_photos/laxmi.jpg', 'Male'),
(9, 'Laxmi', '', 'Pun', '1995-10-07', 'Mohan  Pun', 'AB+', '9838765746', 'dhfdhjfds@gmail.com', 'personal_photos/laxmi_HyynuDW.jpg', 'Male'),
(10, 'Sandip', '', 'Sony', '2000-09-18', 'Bhim Sony', 'AB+', '9844657436', 'sandip@gmail.com', 'personal_photos/sandip.png', 'Male'),
(11, 'Maya', '', 'Gupta', '2001-12-22', 'Dhan Bahadur Gupta', 'AB+', '98r7477547', 'mayhjsha@gmail.com', 'personal_photos/maya.png', 'Female'),
(12, 'Milan', '', 'Newar', '1956-05-04', 'Samir Newar', 'B-', '9847478744', 'jhjifhj@gmail.com', 'personal_photos/milan.jpg', 'Male'),
(13, 'Sonam', '', 'Chaudhary', '1999-05-06', 'Ishor Chaudhary', 'B+', '9848574398', 'kjdhfjhfjd@gmail.com', 'personal_photos/sonam.jpg', 'Others'),
(14, 'Samrat', '', 'Thapa', '2003-05-06', 'Padam Bahadur Thapa', 'B+', '9867330294', 'samratthapa294@gmail.com', 'personal_photos/pp_photo_NJ4Kk55.jpg', '');

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

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
(25, 'Can add address', 7, 'add_address'),
(26, 'Can change address', 7, 'change_address'),
(27, 'Can delete address', 7, 'delete_address'),
(28, 'Can view address', 7, 'view_address'),
(29, 'Can add key', 8, 'add_key'),
(30, 'Can change key', 8, 'change_key'),
(31, 'Can delete key', 8, 'delete_key'),
(32, 'Can view key', 8, 'view_key'),
(33, 'Can add personal info', 9, 'add_personalinfo'),
(34, 'Can change personal info', 9, 'change_personalinfo'),
(35, 'Can delete personal info', 9, 'delete_personalinfo'),
(36, 'Can view personal info', 9, 'view_personalinfo'),
(37, 'Can add licence details', 10, 'add_licencedetails'),
(38, 'Can change licence details', 10, 'change_licencedetails'),
(39, 'Can delete licence details', 10, 'delete_licencedetails'),
(40, 'Can view licence details', 10, 'view_licencedetails');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$720000$WB4FuFZQ2dIyTuSWcTk9Wk$aN+izzQvf1dAxLmmSkPRWKDJMeL44qQfh8NrDW2vtXQ=', '2024-09-30 03:05:44.577204', 0, 'sujina@gmail.com', '', '', 'sujina@gmail.com', 0, 1, '2024-09-18 07:50:52.209886'),
(2, 'pbkdf2_sha256$720000$S1k11WsmwFsQoYR6PHm8ve$t7DG0nqh++hf2q5NbJ4P+nLZUwAmAMs4mNHtGTNJkSo=', '2024-09-21 15:11:42.643567', 0, 'sujina1@gmail.com', '', '', 'sujina1@gmail.com', 0, 1, '2024-09-18 13:45:33.161946'),
(3, 'pbkdf2_sha256$720000$zsvJR4xt5UUcrkx7s3T7pE$Nekc13HSxlD8ycJ2REl6rNaKTTYUuVOxQsTPmg404og=', '2025-04-22 10:35:32.444267', 0, 'ashishrajpoudel28@gmail.com', '', '', 'ashishrajpoudel28@gmail.com', 0, 1, '2024-09-21 15:26:11.375184');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(7, 'app', 'address'),
(8, 'app', 'key'),
(10, 'app', 'licencedetails'),
(9, 'app', 'personalinfo'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(6, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2024-09-18 07:47:35.902035'),
(2, 'auth', '0001_initial', '2024-09-18 07:47:36.823981'),
(3, 'admin', '0001_initial', '2024-09-18 07:47:37.068987'),
(4, 'admin', '0002_logentry_remove_auto_add', '2024-09-18 07:47:37.104037'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2024-09-18 07:47:37.111503'),
(6, 'app', '0001_initial', '2024-09-18 07:47:37.583990'),
(7, 'contenttypes', '0002_remove_content_type_name', '2024-09-18 07:47:37.674472'),
(8, 'auth', '0002_alter_permission_name_max_length', '2024-09-18 07:47:37.782484'),
(9, 'auth', '0003_alter_user_email_max_length', '2024-09-18 07:47:37.811728'),
(10, 'auth', '0004_alter_user_username_opts', '2024-09-18 07:47:37.819521'),
(11, 'auth', '0005_alter_user_last_login_null', '2024-09-18 07:47:37.889178'),
(12, 'auth', '0006_require_contenttypes_0002', '2024-09-18 07:47:37.897188'),
(13, 'auth', '0007_alter_validators_add_error_messages', '2024-09-18 07:47:37.905433'),
(14, 'auth', '0008_alter_user_username_max_length', '2024-09-18 07:47:37.924690'),
(15, 'auth', '0009_alter_user_last_name_max_length', '2024-09-18 07:47:37.940147'),
(16, 'auth', '0010_alter_group_name_max_length', '2024-09-18 07:47:37.968408'),
(17, 'auth', '0011_update_proxy_permissions', '2024-09-18 07:47:37.978008'),
(18, 'auth', '0012_alter_user_first_name_max_length', '2024-09-18 07:47:38.002137'),
(19, 'sessions', '0001_initial', '2024-09-18 07:47:38.052267');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('5g3rz54ythd20ehn6k9icuiyg4p9q5aj', '.eJxVjMsOwiAQRf-FtSE8nA64dN9vIMAMUjU0Ke3K-O_apAvd3nPOfYkQt7WGrfMSJhIXocXpd0sxP7jtgO6x3WaZ57YuU5K7Ig_a5TgTP6-H-3dQY6_fOmtlbIFisTjngLCg46xBWfScQZl05gFj1pbQDx40IaSoSFlw1rAS7w_OqDce:1srdXV:tgwP8Y4VaNR4Biev3MWTMBDbEPVuCZbQYVeaYNfwh8A', '2024-10-04 13:19:13.351544'),
('7h78mebeeafijsbvz7byihfcyzfesyfv', '.eJxVjEEOwiAQRe_C2hA7wFRcuu8ZyAxDpWpoUtqV8e7SpAvdvvf-f6tA25rDVtMSJlFXZdTplzHFZyq7kAeV-6zjXNZlYr0n-rBVD7Ok1-1o_w4y1dzW3htrRSxJ4m700mF0QGCSGGwILF_IteiM1LMHgZ4RII4O0CAgqs8X8do3qA:1u7AyS:-oAlqf9ex29x59_sR5J1NqdiYjjqQomdZgmMcZt_Y4g', '2025-05-06 10:35:32.452854'),
('euf9x0k4dni95w2hpj1wjd2tca6f413x', '.eJxVjMsOwiAQRf-FtSE8nA64dN9vIMAMUjU0Ke3K-O_apAvd3nPOfYkQt7WGrfMSJhIXocXpd0sxP7jtgO6x3WaZ57YuU5K7Ig_a5TgTP6-H-3dQY6_fOmtlbIFisTjngLCg46xBWfScQZl05gFj1pbQDx40IaSoSFlw1rAS7w_OqDce:1supjl:4_D-VDKs-m3XCOb8Wm1t3k6KCKARRRR99XoJFAlT2Rk', '2024-10-13 08:57:05.313706'),
('vd0h4m7fg187mmffahgf7ho1fg9w1ppz', '.eJxVjMsOwiAQRf-FtSE8nA64dN9vIMAMUjU0Ke3K-O_apAvd3nPOfYkQt7WGrfMSJhIXocXpd0sxP7jtgO6x3WaZ57YuU5K7Ig_a5TgTP6-H-3dQY6_fOmtlbIFisTjngLCg46xBWfScQZl05gFj1pbQDx40IaSoSFlw1rAS7w_OqDce:1sv6jI:a4Lyz55LzQNp98K4WoKFDa5qJJrvzPCcLOPw7GieApM', '2024-10-14 03:05:44.581860');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `app_address`
--
ALTER TABLE `app_address`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `app_key`
--
ALTER TABLE `app_key`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `app_licencedetails`
--
ALTER TABLE `app_licencedetails`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `licence_no` (`licence_no`),
  ADD UNIQUE KEY `citizenship_no` (`citizenship_no`),
  ADD UNIQUE KEY `personal_info_id` (`personal_info_id`),
  ADD KEY `app_licencedetails_address_id_89893212_fk_app_address_id` (`address_id`);

--
-- Indexes for table `app_personalinfo`
--
ALTER TABLE `app_personalinfo`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indexes for table `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indexes for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indexes for table `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `app_address`
--
ALTER TABLE `app_address`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `app_key`
--
ALTER TABLE `app_key`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `app_licencedetails`
--
ALTER TABLE `app_licencedetails`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `app_personalinfo`
--
ALTER TABLE `app_personalinfo`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `app_licencedetails`
--
ALTER TABLE `app_licencedetails`
  ADD CONSTRAINT `app_licencedetails_address_id_89893212_fk_app_address_id` FOREIGN KEY (`address_id`) REFERENCES `app_address` (`id`),
  ADD CONSTRAINT `app_licencedetails_personal_info_id_9736bf3f_fk_app_perso` FOREIGN KEY (`personal_info_id`) REFERENCES `app_personalinfo` (`id`);

--
-- Constraints for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

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
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);
--
-- Database: `myshop`
--
CREATE DATABASE IF NOT EXISTS `myshop` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `myshop`;
--
-- Database: `phpmyadmin`
--
CREATE DATABASE IF NOT EXISTS `phpmyadmin` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;
USE `phpmyadmin`;

-- --------------------------------------------------------

--
-- Table structure for table `pma__bookmark`
--

CREATE TABLE `pma__bookmark` (
  `id` int(10) UNSIGNED NOT NULL,
  `dbase` varchar(255) NOT NULL DEFAULT '',
  `user` varchar(255) NOT NULL DEFAULT '',
  `label` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `query` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Bookmarks';

-- --------------------------------------------------------

--
-- Table structure for table `pma__central_columns`
--

CREATE TABLE `pma__central_columns` (
  `db_name` varchar(64) NOT NULL,
  `col_name` varchar(64) NOT NULL,
  `col_type` varchar(64) NOT NULL,
  `col_length` text DEFAULT NULL,
  `col_collation` varchar(64) NOT NULL,
  `col_isNull` tinyint(1) NOT NULL,
  `col_extra` varchar(255) DEFAULT '',
  `col_default` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Central list of columns';

-- --------------------------------------------------------

--
-- Table structure for table `pma__column_info`
--

CREATE TABLE `pma__column_info` (
  `id` int(5) UNSIGNED NOT NULL,
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `table_name` varchar(64) NOT NULL DEFAULT '',
  `column_name` varchar(64) NOT NULL DEFAULT '',
  `comment` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `mimetype` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `transformation` varchar(255) NOT NULL DEFAULT '',
  `transformation_options` varchar(255) NOT NULL DEFAULT '',
  `input_transformation` varchar(255) NOT NULL DEFAULT '',
  `input_transformation_options` varchar(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Column information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__designer_settings`
--

CREATE TABLE `pma__designer_settings` (
  `username` varchar(64) NOT NULL,
  `settings_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Settings related to Designer';

-- --------------------------------------------------------

--
-- Table structure for table `pma__export_templates`
--

CREATE TABLE `pma__export_templates` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) NOT NULL,
  `export_type` varchar(10) NOT NULL,
  `template_name` varchar(64) NOT NULL,
  `template_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved export templates';

-- --------------------------------------------------------

--
-- Table structure for table `pma__favorite`
--

CREATE TABLE `pma__favorite` (
  `username` varchar(64) NOT NULL,
  `tables` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Favorite tables';

-- --------------------------------------------------------

--
-- Table structure for table `pma__history`
--

CREATE TABLE `pma__history` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(64) NOT NULL DEFAULT '',
  `db` varchar(64) NOT NULL DEFAULT '',
  `table` varchar(64) NOT NULL DEFAULT '',
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp(),
  `sqlquery` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='SQL history for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__navigationhiding`
--

CREATE TABLE `pma__navigationhiding` (
  `username` varchar(64) NOT NULL,
  `item_name` varchar(64) NOT NULL,
  `item_type` varchar(64) NOT NULL,
  `db_name` varchar(64) NOT NULL,
  `table_name` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Hidden items of navigation tree';

-- --------------------------------------------------------

--
-- Table structure for table `pma__pdf_pages`
--

CREATE TABLE `pma__pdf_pages` (
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `page_nr` int(10) UNSIGNED NOT NULL,
  `page_descr` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='PDF relation pages for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__recent`
--

CREATE TABLE `pma__recent` (
  `username` varchar(64) NOT NULL,
  `tables` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Recently accessed tables';

--
-- Dumping data for table `pma__recent`
--

INSERT INTO `pma__recent` (`username`, `tables`) VALUES
('root', '[{\"db\":\"license\",\"table\":\"app_key\"},{\"db\":\"license\",\"table\":\"auth_user\"},{\"db\":\"license\",\"table\":\"app_personalinfo\"}]');

-- --------------------------------------------------------

--
-- Table structure for table `pma__relation`
--

CREATE TABLE `pma__relation` (
  `master_db` varchar(64) NOT NULL DEFAULT '',
  `master_table` varchar(64) NOT NULL DEFAULT '',
  `master_field` varchar(64) NOT NULL DEFAULT '',
  `foreign_db` varchar(64) NOT NULL DEFAULT '',
  `foreign_table` varchar(64) NOT NULL DEFAULT '',
  `foreign_field` varchar(64) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Relation table';

-- --------------------------------------------------------

--
-- Table structure for table `pma__savedsearches`
--

CREATE TABLE `pma__savedsearches` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) NOT NULL DEFAULT '',
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `search_name` varchar(64) NOT NULL DEFAULT '',
  `search_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved searches';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_coords`
--

CREATE TABLE `pma__table_coords` (
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `table_name` varchar(64) NOT NULL DEFAULT '',
  `pdf_page_number` int(11) NOT NULL DEFAULT 0,
  `x` float UNSIGNED NOT NULL DEFAULT 0,
  `y` float UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for phpMyAdmin PDF output';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_info`
--

CREATE TABLE `pma__table_info` (
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `table_name` varchar(64) NOT NULL DEFAULT '',
  `display_field` varchar(64) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_uiprefs`
--

CREATE TABLE `pma__table_uiprefs` (
  `username` varchar(64) NOT NULL,
  `db_name` varchar(64) NOT NULL,
  `table_name` varchar(64) NOT NULL,
  `prefs` text NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Tables'' UI preferences';

-- --------------------------------------------------------

--
-- Table structure for table `pma__tracking`
--

CREATE TABLE `pma__tracking` (
  `db_name` varchar(64) NOT NULL,
  `table_name` varchar(64) NOT NULL,
  `version` int(10) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `schema_snapshot` text NOT NULL,
  `schema_sql` text DEFAULT NULL,
  `data_sql` longtext DEFAULT NULL,
  `tracking` set('UPDATE','REPLACE','INSERT','DELETE','TRUNCATE','CREATE DATABASE','ALTER DATABASE','DROP DATABASE','CREATE TABLE','ALTER TABLE','RENAME TABLE','DROP TABLE','CREATE INDEX','DROP INDEX','CREATE VIEW','ALTER VIEW','DROP VIEW') DEFAULT NULL,
  `tracking_active` int(1) UNSIGNED NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Database changes tracking for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__userconfig`
--

CREATE TABLE `pma__userconfig` (
  `username` varchar(64) NOT NULL,
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `config_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User preferences storage for phpMyAdmin';

--
-- Dumping data for table `pma__userconfig`
--

INSERT INTO `pma__userconfig` (`username`, `timevalue`, `config_data`) VALUES
('root', '2025-04-22 13:37:22', '{\"Console\\/Mode\":\"collapse\"}');

-- --------------------------------------------------------

--
-- Table structure for table `pma__usergroups`
--

CREATE TABLE `pma__usergroups` (
  `usergroup` varchar(64) NOT NULL,
  `tab` varchar(64) NOT NULL,
  `allowed` enum('Y','N') NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User groups with configured menu items';

-- --------------------------------------------------------

--
-- Table structure for table `pma__users`
--

CREATE TABLE `pma__users` (
  `username` varchar(64) NOT NULL,
  `usergroup` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Users and their assignments to user groups';

--
-- Indexes for dumped tables
--

--
-- Indexes for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pma__central_columns`
--
ALTER TABLE `pma__central_columns`
  ADD PRIMARY KEY (`db_name`,`col_name`);

--
-- Indexes for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `db_name` (`db_name`,`table_name`,`column_name`);

--
-- Indexes for table `pma__designer_settings`
--
ALTER TABLE `pma__designer_settings`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_user_type_template` (`username`,`export_type`,`template_name`);

--
-- Indexes for table `pma__favorite`
--
ALTER TABLE `pma__favorite`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__history`
--
ALTER TABLE `pma__history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`,`db`,`table`,`timevalue`);

--
-- Indexes for table `pma__navigationhiding`
--
ALTER TABLE `pma__navigationhiding`
  ADD PRIMARY KEY (`username`,`item_name`,`item_type`,`db_name`,`table_name`);

--
-- Indexes for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  ADD PRIMARY KEY (`page_nr`),
  ADD KEY `db_name` (`db_name`);

--
-- Indexes for table `pma__recent`
--
ALTER TABLE `pma__recent`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__relation`
--
ALTER TABLE `pma__relation`
  ADD PRIMARY KEY (`master_db`,`master_table`,`master_field`),
  ADD KEY `foreign_field` (`foreign_db`,`foreign_table`);

--
-- Indexes for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_savedsearches_username_dbname` (`username`,`db_name`,`search_name`);

--
-- Indexes for table `pma__table_coords`
--
ALTER TABLE `pma__table_coords`
  ADD PRIMARY KEY (`db_name`,`table_name`,`pdf_page_number`);

--
-- Indexes for table `pma__table_info`
--
ALTER TABLE `pma__table_info`
  ADD PRIMARY KEY (`db_name`,`table_name`);

--
-- Indexes for table `pma__table_uiprefs`
--
ALTER TABLE `pma__table_uiprefs`
  ADD PRIMARY KEY (`username`,`db_name`,`table_name`);

--
-- Indexes for table `pma__tracking`
--
ALTER TABLE `pma__tracking`
  ADD PRIMARY KEY (`db_name`,`table_name`,`version`);

--
-- Indexes for table `pma__userconfig`
--
ALTER TABLE `pma__userconfig`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__usergroups`
--
ALTER TABLE `pma__usergroups`
  ADD PRIMARY KEY (`usergroup`,`tab`,`allowed`);

--
-- Indexes for table `pma__users`
--
ALTER TABLE `pma__users`
  ADD PRIMARY KEY (`username`,`usergroup`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__history`
--
ALTER TABLE `pma__history`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  MODIFY `page_nr` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Database: `quicklicence`
--
CREATE DATABASE IF NOT EXISTS `quicklicence` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `quicklicence`;
--
-- Database: `test`
--
CREATE DATABASE IF NOT EXISTS `test` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `test`;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
