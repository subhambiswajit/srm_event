-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: May 14, 2016 at 05:34 PM
-- Server version: 5.6.21
-- PHP Version: 5.5.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `subhambiswajit`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE IF NOT EXISTS `auth_group` (
`id` int(11) NOT NULL,
  `name` varchar(80) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE IF NOT EXISTS `auth_group_permissions` (
`id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE IF NOT EXISTS `auth_permission` (
`id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=73 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can add permission', 2, 'add_permission'),
(5, 'Can change permission', 2, 'change_permission'),
(6, 'Can delete permission', 2, 'delete_permission'),
(7, 'Can add group', 3, 'add_group'),
(8, 'Can change group', 3, 'change_group'),
(9, 'Can delete group', 3, 'delete_group'),
(10, 'Can add user', 4, 'add_user'),
(11, 'Can change user', 4, 'change_user'),
(12, 'Can delete user', 4, 'delete_user'),
(13, 'Can add content type', 5, 'add_contenttype'),
(14, 'Can change content type', 5, 'change_contenttype'),
(15, 'Can delete content type', 5, 'delete_contenttype'),
(16, 'Can add session', 6, 'add_session'),
(17, 'Can change session', 6, 'change_session'),
(18, 'Can delete session', 6, 'delete_session'),
(19, 'Can add global users', 7, 'add_globalusers'),
(20, 'Can change global users', 7, 'change_globalusers'),
(21, 'Can delete global users', 7, 'delete_globalusers'),
(22, 'Can add candidate activity', 8, 'add_candidateactivity'),
(23, 'Can change candidate activity', 8, 'change_candidateactivity'),
(24, 'Can delete candidate activity', 8, 'delete_candidateactivity'),
(25, 'Can add candidate performance', 9, 'add_candidateperformance'),
(26, 'Can change candidate performance', 9, 'change_candidateperformance'),
(27, 'Can delete candidate performance', 9, 'delete_candidateperformance'),
(28, 'Can add candidate national recognition', 10, 'add_candidatenationalrecognition'),
(29, 'Can change candidate national recognition', 10, 'change_candidatenationalrecognition'),
(30, 'Can delete candidate national recognition', 10, 'delete_candidatenationalrecognition'),
(31, 'Can add candidate initiatives', 11, 'add_candidateinitiatives'),
(32, 'Can change candidate initiatives', 11, 'change_candidateinitiatives'),
(33, 'Can delete candidate initiatives', 11, 'delete_candidateinitiatives'),
(34, 'Can add candidate internship', 12, 'add_candidateinternship'),
(35, 'Can change candidate internship', 12, 'change_candidateinternship'),
(36, 'Can delete candidate internship', 12, 'delete_candidateinternship'),
(37, 'Can add candidate journals', 13, 'add_candidatejournals'),
(38, 'Can change candidate journals', 13, 'change_candidatejournals'),
(39, 'Can delete candidate journals', 13, 'delete_candidatejournals'),
(40, 'Can add candidate paper conference', 14, 'add_candidatepaperconference'),
(41, 'Can change candidate paper conference', 14, 'change_candidatepaperconference'),
(42, 'Can delete candidate paper conference', 14, 'delete_candidatepaperconference'),
(43, 'Can add candidate development', 15, 'add_candidatedevelopment'),
(44, 'Can change candidate development', 15, 'change_candidatedevelopment'),
(45, 'Can delete candidate development', 15, 'delete_candidatedevelopment'),
(46, 'Can add fac awards', 16, 'add_facawards'),
(47, 'Can change fac awards', 16, 'change_facawards'),
(48, 'Can delete fac awards', 16, 'delete_facawards'),
(49, 'Can add fac consultancy activities', 17, 'add_facconsultancyactivities'),
(50, 'Can change fac consultancy activities', 17, 'change_facconsultancyactivities'),
(51, 'Can delete fac consultancy activities', 17, 'delete_facconsultancyactivities'),
(52, 'Can add fac international conference', 18, 'add_facinternationalconference'),
(53, 'Can change fac international conference', 18, 'change_facinternationalconference'),
(54, 'Can delete fac international conference', 18, 'delete_facinternationalconference'),
(55, 'Can add fac internatonal journals', 19, 'add_facinternatonaljournals'),
(56, 'Can change fac internatonal journals', 19, 'change_facinternatonaljournals'),
(57, 'Can delete fac internatonal journals', 19, 'delete_facinternatonaljournals'),
(58, 'Can add fac manual publications', 20, 'add_facmanualpublications'),
(59, 'Can change fac manual publications', 20, 'change_facmanualpublications'),
(60, 'Can delete fac manual publications', 20, 'delete_facmanualpublications'),
(61, 'Can add fac national conference', 21, 'add_facnationalconference'),
(62, 'Can change fac national conference', 21, 'change_facnationalconference'),
(63, 'Can delete fac national conference', 21, 'delete_facnationalconference'),
(64, 'Can add fac national journals', 22, 'add_facnationaljournals'),
(65, 'Can change fac national journals', 22, 'change_facnationaljournals'),
(66, 'Can delete fac national journals', 22, 'delete_facnationaljournals'),
(67, 'Can add fac seminars', 23, 'add_facseminars'),
(68, 'Can change fac seminars', 23, 'change_facseminars'),
(69, 'Can delete fac seminars', 23, 'delete_facseminars'),
(70, 'Can add fac software development', 24, 'add_facsoftwaredevelopment'),
(71, 'Can change fac software development', 24, 'change_facsoftwaredevelopment'),
(72, 'Can delete fac software development', 24, 'delete_facsoftwaredevelopment');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

CREATE TABLE IF NOT EXISTS `auth_user` (
`id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime NOT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(30) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `email` varchar(75) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE IF NOT EXISTS `auth_user_groups` (
`id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE IF NOT EXISTS `auth_user_user_permissions` (
`id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `candidate_activity`
--

CREATE TABLE IF NOT EXISTS `candidate_activity` (
`candidate_id` int(11) NOT NULL,
  `cand_act_name` text,
  `cand_act_gusid` int(11) DEFAULT NULL,
  `cand_act_date` datetime DEFAULT NULL,
  `cand_act_prize` text,
  `cand_act_nature` text,
  `cand_act_year` varchar(100) DEFAULT NULL,
  `cand_act_isused` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `candidate_activity`
--

INSERT INTO `candidate_activity` (`candidate_id`, `cand_act_name`, `cand_act_gusid`, `cand_act_date`, `cand_act_prize`, `cand_act_nature`, `cand_act_year`, `cand_act_isused`) VALUES
(5, 'Aaruush16', 3, NULL, 'certificate', 'volunteer', '1st year', 0),
(6, '', 3, NULL, '', '', '', 0),
(7, 'Aaruush15', 6, NULL, 'Best event award', 'Event organiser', '3rd year,2012', 0),
(8, 'National Hackathon race ', 6, NULL, 'Best time based performer', 'Programmer ', '3rd year', 0),
(9, 'National science conference', 3, NULL, '', 'Volunteer', '2nd year,2014', 0),
(10, '', 6, NULL, '', '', '', 0),
(11, 'subham', 6, NULL, '', '', '', 0),
(12, 'kkakak', 6, NULL, 'sksksk', 'ksksks', 'sksksk', 0),
(13, 'kkakak', 6, NULL, 'sksksk', 'ksksks', 'sksksk', 0),
(14, 'ssksk', 6, NULL, 'ksksk', 'kdkd', 'ksksks', 0),
(15, 'ksksk', 6, NULL, 'ksks', 'kks', 'sks', 0),
(26, 'Aaruush16', 6, '2016-04-09 18:30:00', 'Certification', 'Volunteer', '2nd year', 0),
(27, 'checked updation', 15, '2016-05-05 18:30:00', 'sample', 'sample', 'sample', 1),
(28, 'Aaruush 16 ', 15, '2016-02-09 18:30:00', 'volunteer', 'certification ', '2nd year ', 1),
(29, 'Aaruush 15', 15, '2016-05-03 18:30:00', 'Volunteer', 'Certification', '2nd year ', 1),
(30, 'aaruush 16', 18, '2016-05-01 18:30:00', 'coder ', 'coder ', '3rd year ', 1);

-- --------------------------------------------------------

--
-- Table structure for table `candidate_development`
--

CREATE TABLE IF NOT EXISTS `candidate_development` (
`cand_dev_id` int(11) NOT NULL,
  `cand_dev_gusid` int(11) DEFAULT NULL,
  `cand_dev_name` text NOT NULL,
  `cand_dev_faculty` text NOT NULL,
  `cand_dev_isused` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `candidate_development`
--

INSERT INTO `candidate_development` (`cand_dev_id`, `cand_dev_gusid`, `cand_dev_name`, `cand_dev_faculty`, `cand_dev_isused`) VALUES
(2, 3, 'Uniwip.com', 'S.Priya (asst Prof, Department of Computer Science)', 0),
(3, 15, 'sample checked', 'sample', 1);

-- --------------------------------------------------------

--
-- Table structure for table `candidate_initiatives`
--

CREATE TABLE IF NOT EXISTS `candidate_initiatives` (
`cand_ini_id` int(11) NOT NULL,
  `cand_ini_gusid` int(11) DEFAULT NULL,
  `cand_ini_level` varchar(100) DEFAULT NULL,
  `cand_ini_name` varchar(100) DEFAULT NULL,
  `cand_ini_venue` varchar(100) DEFAULT NULL,
  `cand_ini_date` datetime DEFAULT NULL,
  `cand_ini_isused` int(2) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `candidate_initiatives`
--

INSERT INTO `candidate_initiatives` (`cand_ini_id`, `cand_ini_gusid`, `cand_ini_level`, `cand_ini_name`, `cand_ini_venue`, `cand_ini_date`, `cand_ini_isused`) VALUES
(3, 3, 'xxad', 'sddsd', 'dsds', '2016-05-12 18:30:00', 0),
(4, 15, 'sample checked', 'sample', 'sample', '2016-05-05 18:30:00', 1);

-- --------------------------------------------------------

--
-- Table structure for table `candidate_internship`
--

CREATE TABLE IF NOT EXISTS `candidate_internship` (
`cand_int_id` int(11) NOT NULL,
  `cand_int_gusid` int(11) DEFAULT NULL,
  `cand_int_name` varchar(100) DEFAULT NULL,
  `cand_int_start` datetime DEFAULT NULL,
  `cand_int_end` datetime DEFAULT NULL,
  `cand_int_stipend` varchar(100) DEFAULT NULL,
  `cand_int_isused` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `candidate_internship`
--

INSERT INTO `candidate_internship` (`cand_int_id`, `cand_int_gusid`, `cand_int_name`, `cand_int_start`, `cand_int_end`, `cand_int_stipend`, `cand_int_isused`) VALUES
(7, 3, 'PlanMyTour', '2016-04-28 18:30:00', '2016-04-23 18:30:00', '2500', 0),
(8, 3, 'xz', '2016-04-09 18:30:00', '2016-04-21 18:30:00', 'lzlzlz', 0),
(9, 4, 'Microsoft Corp ', '2012-05-31 18:30:00', '2016-04-09 18:30:00', '15-16 lakhs', 0),
(10, 15, 'checked', '2016-05-12 18:30:00', '2016-05-07 18:30:00', 'got nothing ', 1),
(11, 15, 'planmytour', '2016-05-19 18:30:00', '2016-05-11 18:30:00', '5000', 0);

-- --------------------------------------------------------

--
-- Table structure for table `candidate_journals`
--

CREATE TABLE IF NOT EXISTS `candidate_journals` (
`cand_jour_id` int(11) NOT NULL,
  `cand_jour_gusid` int(11) DEFAULT NULL,
  `cand_jour_title` varchar(500) DEFAULT NULL,
  `cand_jour_fauthor` varchar(100) DEFAULT NULL,
  `cand_jour_oauthor` varchar(500) DEFAULT NULL,
  `cand_jour_name` varchar(100) DEFAULT NULL,
  `cand_jour_date` datetime DEFAULT NULL,
  `cand_jour_vol` varchar(100) DEFAULT NULL,
  `cand_jour_impact` varchar(100) DEFAULT NULL,
  `cand_jour_citation` varchar(100) DEFAULT NULL,
  `cand_jour_indexed` varchar(100) DEFAULT NULL,
  `cand_jour_isused` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `candidate_journals`
--

INSERT INTO `candidate_journals` (`cand_jour_id`, `cand_jour_gusid`, `cand_jour_title`, `cand_jour_fauthor`, `cand_jour_oauthor`, `cand_jour_name`, `cand_jour_date`, `cand_jour_vol`, `cand_jour_impact`, `cand_jour_citation`, `cand_jour_indexed`, `cand_jour_isused`) VALUES
(3, 3, 'Pattern Recognition', 'Dawn Schalfof', 'Subham Biswajit, Suvojit Kar', 'IEEE version 2.0', '2016-04-13 18:30:00', '3', '2', '233', 'indexed', 0),
(4, 15, 'sample checked', 'sample', 'sample', 'sample', '2016-05-10 18:30:00', 'sample', 'sample', 'sample', 'sample', 1);

-- --------------------------------------------------------

--
-- Table structure for table `candidate_national_recognition`
--

CREATE TABLE IF NOT EXISTS `candidate_national_recognition` (
`cand_nat_reg_id` int(11) NOT NULL,
  `cand_nat_reg_gus_id` int(11) DEFAULT NULL,
  `cand_nat_reg_details` text,
  `cand_nat_reg_year` varchar(30) DEFAULT NULL,
  `cand_nat_reg_isused` int(2) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `candidate_national_recognition`
--

INSERT INTO `candidate_national_recognition` (`cand_nat_reg_id`, `cand_nat_reg_gus_id`, `cand_nat_reg_details`, `cand_nat_reg_year`, `cand_nat_reg_isused`) VALUES
(1, 3, 'lecturer of the academic ', '2016 ', 0),
(2, 15, 'sample', 'sample', 1),
(3, 15, 'sample', 'sample', 1),
(4, 15, 'sample checked again', 'sample', 1);

-- --------------------------------------------------------

--
-- Table structure for table `candidate_paper_conference`
--

CREATE TABLE IF NOT EXISTS `candidate_paper_conference` (
`cand_pap_conf_id` int(11) NOT NULL,
  `cand_pap_conf_gusid` int(11) DEFAULT NULL,
  `cand_pap_conf_title` varchar(100) DEFAULT NULL,
  `cand_pap_conf_author` varchar(100) DEFAULT NULL,
  `cand_pap_conf_cname` varchar(100) DEFAULT NULL,
  `cand_pap_conf_date` datetime DEFAULT NULL,
  `cand_pap_conf_duration` varchar(50) DEFAULT NULL,
  `cand_pap_conf_org` varchar(100) DEFAULT NULL,
  `cand_pap_conf_venue` varchar(50) DEFAULT NULL,
  `cand_pap_conf_status` varchar(50) DEFAULT NULL,
  `cand_pap_conf_isused` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `candidate_paper_conference`
--

INSERT INTO `candidate_paper_conference` (`cand_pap_conf_id`, `cand_pap_conf_gusid`, `cand_pap_conf_title`, `cand_pap_conf_author`, `cand_pap_conf_cname`, `cand_pap_conf_date`, `cand_pap_conf_duration`, `cand_pap_conf_org`, `cand_pap_conf_venue`, `cand_pap_conf_status`, `cand_pap_conf_isused`) VALUES
(10, 15, 'sample checked', 'sample', 'sample', '2016-05-11 18:30:00', 'sample', 'sample', 'sample', 'sample', 1);

-- --------------------------------------------------------

--
-- Table structure for table `candidate_performance`
--

CREATE TABLE IF NOT EXISTS `candidate_performance` (
`cand_per_id` int(11) NOT NULL,
  `cand_per_gusid` int(11) DEFAULT NULL,
  `cand_per_exam` varchar(100) DEFAULT NULL,
  `cand_per_ypass` varchar(30) DEFAULT NULL,
  `cand_per_marks` varchar(30) DEFAULT NULL,
  `cand_per_year` varchar(30) DEFAULT NULL,
  `cand_per_isused` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `candidate_performance`
--

INSERT INTO `candidate_performance` (`cand_per_id`, `cand_per_gusid`, `cand_per_exam`, `cand_per_ypass`, `cand_per_marks`, `cand_per_year`, `cand_per_isused`) VALUES
(2, 3, 'GRE', '2015', '12%', '3rd year', 0),
(6, 3, 'National Science Olympiad', '2010', '93%', '11th grade', 0),
(7, 15, 'samdle checked', 'sample checked', 'sample', 'sample', 1),
(8, 18, 'sample checked ', 'sample ', 'sample ', 'sample ', 0);

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE IF NOT EXISTS `django_admin_log` (
`id` int(11) NOT NULL,
  `action_time` datetime NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE IF NOT EXISTS `django_content_type` (
`id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `name`, `app_label`, `model`) VALUES
(1, 'log entry', 'admin', 'logentry'),
(2, 'permission', 'auth', 'permission'),
(3, 'group', 'auth', 'group'),
(4, 'user', 'auth', 'user'),
(5, 'content type', 'contenttypes', 'contenttype'),
(6, 'session', 'sessions', 'session'),
(7, 'global users', 'backends', 'globalusers'),
(8, 'candidate activity', 'backends', 'candidateactivity'),
(9, 'candidate performance', 'backends', 'candidateperformance'),
(10, 'candidate national recognition', 'backends', 'candidatenationalrecognition'),
(11, 'candidate initiatives', 'backends', 'candidateinitiatives'),
(12, 'candidate internship', 'backends', 'candidateinternship'),
(13, 'candidate journals', 'backends', 'candidatejournals'),
(14, 'candidate paper conference', 'backends', 'candidatepaperconference'),
(15, 'candidate development', 'backends', 'candidatedevelopment'),
(16, 'fac awards', 'backends', 'facawards'),
(17, 'fac consultancy activities', 'backends', 'facconsultancyactivities'),
(18, 'fac international conference', 'backends', 'facinternationalconference'),
(19, 'fac internatonal journals', 'backends', 'facinternatonaljournals'),
(20, 'fac manual publications', 'backends', 'facmanualpublications'),
(21, 'fac national conference', 'backends', 'facnationalconference'),
(22, 'fac national journals', 'backends', 'facnationaljournals'),
(23, 'fac seminars', 'backends', 'facseminars'),
(24, 'fac software development', 'backends', 'facsoftwaredevelopment');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE IF NOT EXISTS `django_migrations` (
`id` int(11) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2016-04-02 19:22:30'),
(2, 'auth', '0001_initial', '2016-04-02 19:22:44'),
(3, 'admin', '0001_initial', '2016-04-02 19:22:49'),
(4, 'sessions', '0001_initial', '2016-04-02 19:22:50'),
(5, 'backends', '0001_initial', '2016-04-10 07:03:09'),
(6, 'backends', '0002_facawards_facconsultancyactivities_facinternationalconference_facinternatonaljournals_facmanualpubli', '2016-04-14 07:08:37');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE IF NOT EXISTS `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('01pltcndw0afsws6m23igmv2wzeihskb', 'OTg2NGUyZTUzZjY4NjQ2ZTliZjNiZGQ0NjY4OWRlNmU5NzA3NDhjYTp7Il9hdXRoX3VzZXJfaGFzaCI6IiIsIl9hdXRoX3VzZXJfaWQiOjMsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImN1c3RvbWJhY2tlbmRzLmJhY2tlbmRzLlNybUV2ZW50QmFja2VuZCJ9', '2016-04-24 04:13:13'),
('1bcp8j7oqgzovawajdsf1s8sn8seyggg', 'OTg2NGUyZTUzZjY4NjQ2ZTliZjNiZGQ0NjY4OWRlNmU5NzA3NDhjYTp7Il9hdXRoX3VzZXJfaGFzaCI6IiIsIl9hdXRoX3VzZXJfaWQiOjMsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImN1c3RvbWJhY2tlbmRzLmJhY2tlbmRzLlNybUV2ZW50QmFja2VuZCJ9', '2016-04-22 10:53:19'),
('46xrjlsg0uq5fbv9v9adyoy5ifq07qab', 'N2FiMGYyNTY3NTlmYWM3MTYwNWIzNTM0ZjE0YzY1NmRkZmRiYWMxODp7Il9hdXRoX3VzZXJfaGFzaCI6IiIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImN1c3RvbWJhY2tlbmRzLmJhY2tlbmRzLlNybUV2ZW50QmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjE1fQ==', '2016-05-23 11:11:18'),
('498o0lsersq92lqdmw9tg8m1ro5qrk4b', 'YTRkY2Y1MGY2MDc2MjcyMTYwNzFmNDc0MjgwODdiZDUwY2U0ZmI4Zjp7Il9hdXRoX3VzZXJfaGFzaCI6IiIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImN1c3RvbWJhY2tlbmRzLmJhY2tlbmRzLlNybUV2ZW50QmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjE5fQ==', '2016-05-28 09:24:58'),
('4x1to4lqy8nwbktpuk3c1hna48jkw3ma', 'YzE3N2ZiY2U2YzczZmVjMWE2Nzg2NTdkMzY1NTAxNDY3YzNmZWJhMTp7fQ==', '2016-05-21 04:23:17'),
('a6tue05j7d7zvedccztl9lnrfhhfvte9', 'OTg2NGUyZTUzZjY4NjQ2ZTliZjNiZGQ0NjY4OWRlNmU5NzA3NDhjYTp7Il9hdXRoX3VzZXJfaGFzaCI6IiIsIl9hdXRoX3VzZXJfaWQiOjMsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImN1c3RvbWJhY2tlbmRzLmJhY2tlbmRzLlNybUV2ZW50QmFja2VuZCJ9', '2016-04-24 04:43:39'),
('atxs01cbl2foqff0rjekotffykb95v0p', 'NmU2NzY4NDRhYzAxZjE3NWVlOTM3NmNhZWQxNTE2Yjc3NTBhYTY2Mzp7Il9hdXRoX3VzZXJfaGFzaCI6IiIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImN1c3RvbWJhY2tlbmRzLmJhY2tlbmRzLlNybUV2ZW50QmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjN9', '2016-05-22 06:23:29'),
('bp8hoqb0p13q9c2jbdx7x47s2zx3hdqs', 'OTg2NGUyZTUzZjY4NjQ2ZTliZjNiZGQ0NjY4OWRlNmU5NzA3NDhjYTp7Il9hdXRoX3VzZXJfaGFzaCI6IiIsIl9hdXRoX3VzZXJfaWQiOjMsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImN1c3RvbWJhY2tlbmRzLmJhY2tlbmRzLlNybUV2ZW50QmFja2VuZCJ9', '2016-04-23 15:06:10'),
('czxcl03yq0h9nxe0o42nac2qjcb8l4az', 'NmU2NzY4NDRhYzAxZjE3NWVlOTM3NmNhZWQxNTE2Yjc3NTBhYTY2Mzp7Il9hdXRoX3VzZXJfaGFzaCI6IiIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImN1c3RvbWJhY2tlbmRzLmJhY2tlbmRzLlNybUV2ZW50QmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjN9', '2016-05-26 05:36:26'),
('jhlfw4gfodk8p9n0mxv9x421yve5i7n6', 'NmU2NzY4NDRhYzAxZjE3NWVlOTM3NmNhZWQxNTE2Yjc3NTBhYTY2Mzp7Il9hdXRoX3VzZXJfaGFzaCI6IiIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImN1c3RvbWJhY2tlbmRzLmJhY2tlbmRzLlNybUV2ZW50QmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjN9', '2016-05-22 06:23:30'),
('mm40wef50phrqi30g83icltfv1tonxy7', 'ZTBiYTRkOWY2ZDRmMDA1YzdjNjk0MGI3NmMzMWI4NDY3OTIxNWFjMTp7Il9hdXRoX3VzZXJfaGFzaCI6IiIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImN1c3RvbWJhY2tlbmRzLmJhY2tlbmRzLlNybUV2ZW50QmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjZ9', '2016-05-22 06:16:28'),
('oy25dzrwttsl2jc3gvqhuffo2w80r34h', 'NmU2NzY4NDRhYzAxZjE3NWVlOTM3NmNhZWQxNTE2Yjc3NTBhYTY2Mzp7Il9hdXRoX3VzZXJfaGFzaCI6IiIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImN1c3RvbWJhY2tlbmRzLmJhY2tlbmRzLlNybUV2ZW50QmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjN9', '2016-05-26 15:07:26'),
('pw9f3qc9j5maa8bxtxlhae2y3f8k3k1m', 'ZjM4Nzg1MWYxNTE0MWNkNTkzZGE0ZjI0NmI2MTgyY2E4Nzc1NTU4NTp7Il9hdXRoX3VzZXJfaGFzaCI6IiIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImN1c3RvbWJhY2tlbmRzLmJhY2tlbmRzLlNybUV2ZW50QmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjE2fQ==', '2016-05-21 20:55:10'),
('sz53sc2e544utlh17qrmytrx1ck34ixz', 'NmU2NzY4NDRhYzAxZjE3NWVlOTM3NmNhZWQxNTE2Yjc3NTBhYTY2Mzp7Il9hdXRoX3VzZXJfaGFzaCI6IiIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImN1c3RvbWJhY2tlbmRzLmJhY2tlbmRzLlNybUV2ZW50QmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjN9', '2016-05-22 05:50:57'),
('u2wzntf3a71kp9lcpebhpcoi5hcybl3l', 'YTRkY2Y1MGY2MDc2MjcyMTYwNzFmNDc0MjgwODdiZDUwY2U0ZmI4Zjp7Il9hdXRoX3VzZXJfaGFzaCI6IiIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImN1c3RvbWJhY2tlbmRzLmJhY2tlbmRzLlNybUV2ZW50QmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjE5fQ==', '2016-05-28 05:46:26'),
('u7tqvrt2mainrolc7i6rx0ocu4cl5886', 'NmU2NzY4NDRhYzAxZjE3NWVlOTM3NmNhZWQxNTE2Yjc3NTBhYTY2Mzp7Il9hdXRoX3VzZXJfaGFzaCI6IiIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImN1c3RvbWJhY2tlbmRzLmJhY2tlbmRzLlNybUV2ZW50QmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjN9', '2016-05-24 20:06:14'),
('whinfmik8cz0yc2ijt7wmr2vijxl9etk', 'YzE3N2ZiY2U2YzczZmVjMWE2Nzg2NTdkMzY1NTAxNDY3YzNmZWJhMTp7fQ==', '2016-05-22 04:54:45');

-- --------------------------------------------------------

--
-- Table structure for table `fac_awards`
--

CREATE TABLE IF NOT EXISTS `fac_awards` (
`fac_awards_id` int(11) NOT NULL,
  `fac_awards_gusid` int(11) DEFAULT NULL,
  `fac_awards_name` varchar(100) DEFAULT NULL,
  `fac_awards_details` text,
  `fac_awards_isused` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `fac_awards`
--

INSERT INTO `fac_awards` (`fac_awards_id`, `fac_awards_gusid`, `fac_awards_name`, `fac_awards_details`, `fac_awards_isused`) VALUES
(5, 3, 'Subham Biswajit', 'Uniwip Project ', 1),
(6, 3, '', '', 1),
(7, 16, '', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `fac_consultancy_activities`
--

CREATE TABLE IF NOT EXISTS `fac_consultancy_activities` (
`fac_con_act_id` int(11) NOT NULL,
  `fac_con_act_gusid` int(11) DEFAULT NULL,
  `fac_con_act_nature` text,
  `fac_con_act_client` varchar(100) DEFAULT NULL,
  `fac_con_act_dept` varchar(1000) DEFAULT NULL,
  `fac_con_act_revenue` varchar(100) DEFAULT NULL,
  `fac_con_act_isused` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `fac_consultancy_activities`
--

INSERT INTO `fac_consultancy_activities` (`fac_con_act_id`, `fac_con_act_gusid`, `fac_con_act_nature`, `fac_con_act_client`, `fac_con_act_dept`, `fac_con_act_revenue`, `fac_con_act_isused`) VALUES
(1, 3, 'subham', 'sshs', 'hshsh', 'shshs', 1),
(2, 3, 'Tata Tender Program for rural Empowerment ', 'TCS', 'Computer Science Department ', '1 lakh ', 0);

-- --------------------------------------------------------

--
-- Table structure for table `fac_international_conference`
--

CREATE TABLE IF NOT EXISTS `fac_international_conference` (
`fac_int_conf_id` int(11) NOT NULL,
  `fac_int_conf_gusid` int(11) DEFAULT NULL,
  `fac_int_conf_title` varchar(100) DEFAULT NULL,
  `fac_int_conf_author` varchar(100) DEFAULT NULL,
  `fac_int_conf_name` varchar(100) DEFAULT NULL,
  `fac_int_conf_journame` varchar(100) DEFAULT NULL,
  `fac_int_conf_date` datetime DEFAULT NULL,
  `fac_int_conf_venue` varchar(100) DEFAULT NULL,
  `fac_int_conf_status` varchar(100) DEFAULT NULL,
  `fac_int_conf_isused` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `fac_international_conference`
--

INSERT INTO `fac_international_conference` (`fac_int_conf_id`, `fac_int_conf_gusid`, `fac_int_conf_title`, `fac_int_conf_author`, `fac_int_conf_name`, `fac_int_conf_journame`, `fac_int_conf_date`, `fac_int_conf_venue`, `fac_int_conf_status`, `fac_int_conf_isused`) VALUES
(1, 3, 'Fundamentals of coding ', 'Arthur Ken', 'Coding session', 'IEEE version 9.0', '2016-04-06 18:30:00', 'Indian Institute of Science and Technology, Chennai', 'Presented', 1),
(2, 3, 'bigdata', 'bigdata', 'bigdata', 'bigdata', '2016-05-03 18:30:00', 'srm', 'presented', 1),
(3, 3, 'sample', 'sample', 'sample', 'sample', '2016-05-02 18:30:00', 'suvojit', 'sample', 1);

-- --------------------------------------------------------

--
-- Table structure for table `fac_internatonal_journals`
--

CREATE TABLE IF NOT EXISTS `fac_internatonal_journals` (
`fac_int_jour_id` int(11) NOT NULL,
  `fac_int_jour_gusid` int(11) DEFAULT NULL,
  `fac_int_jour_title` varchar(100) DEFAULT NULL,
  `fac_int_jour_author` varchar(100) DEFAULT NULL,
  `fac_int_jour_oauthor` varchar(100) DEFAULT NULL,
  `fac_int_jour_name` varchar(100) DEFAULT NULL,
  `fac_int_jour_date` datetime DEFAULT NULL,
  `fac_int_jour_vol` varchar(100) DEFAULT NULL,
  `fac_int_jour_impact` varchar(100) DEFAULT NULL,
  `fac_int_jour_citation` varchar(100) DEFAULT NULL,
  `fac_int_jour_status` varchar(100) DEFAULT NULL,
  `fac_int_jour_isused` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `fac_internatonal_journals`
--

INSERT INTO `fac_internatonal_journals` (`fac_int_jour_id`, `fac_int_jour_gusid`, `fac_int_jour_title`, `fac_int_jour_author`, `fac_int_jour_oauthor`, `fac_int_jour_name`, `fac_int_jour_date`, `fac_int_jour_vol`, `fac_int_jour_impact`, `fac_int_jour_citation`, `fac_int_jour_status`, `fac_int_jour_isused`) VALUES
(1, 3, 'jddjj', 'jjd', 'jdjd', 'jddj', '2016-05-05 18:30:00', 'kdkd', 'kk', 'ksks', 'kdkd', 1),
(2, 3, 'IOT ', 'sample ', 'sample ', 'sample ', '2016-05-06 18:30:00', 'sample', 'sample', 'sample', 'sample', 1),
(3, 3, 'after date ', 'sample samo', 'sample', 'sample', '2016-05-02 18:30:00', 'date', 'date', 'sate', 'date', 1);

-- --------------------------------------------------------

--
-- Table structure for table `fac_manual_publications`
--

CREATE TABLE IF NOT EXISTS `fac_manual_publications` (
`fac_man_pub_id` int(11) NOT NULL,
  `fac_man_pub_gusid` int(11) DEFAULT NULL,
  `fac_man_pub_title` varchar(100) DEFAULT NULL,
  `fac_man_pub_author` varchar(100) DEFAULT NULL,
  `fac_man_pub_publisher` varchar(100) DEFAULT NULL,
  `fac_man_pub_fedition` varchar(100) DEFAULT NULL,
  `fac_man_pub_oedition` varchar(100) DEFAULT NULL,
  `fac_man_pub_details` varchar(100) DEFAULT NULL,
  `fac_man_pub_isused` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `fac_manual_publications`
--

INSERT INTO `fac_manual_publications` (`fac_man_pub_id`, `fac_man_pub_gusid`, `fac_man_pub_title`, `fac_man_pub_author`, `fac_man_pub_publisher`, `fac_man_pub_fedition`, `fac_man_pub_oedition`, `fac_man_pub_details`, `fac_man_pub_isused`) VALUES
(12, 3, 'sdsf', 'sds', 'dsdsd', 'sdsd', 'sdds', 'sds', 1);

-- --------------------------------------------------------

--
-- Table structure for table `fac_national_conference`
--

CREATE TABLE IF NOT EXISTS `fac_national_conference` (
`fac_nat_conf_id` int(11) NOT NULL,
  `fac_nat_conf_isused` int(11) NOT NULL DEFAULT '0',
  `fac_nat_conf_gusid` int(11) DEFAULT NULL,
  `fac_nat_conf_title` varchar(50) DEFAULT NULL,
  `fac_nat_conf_author` varchar(100) DEFAULT NULL,
  `fac_nat_conf_name` varchar(100) DEFAULT NULL,
  `fac_nat_conf_journame` varchar(100) DEFAULT NULL,
  `fac_nat_conf_date` datetime DEFAULT NULL,
  `fac_nat_conf_venue` varchar(100) DEFAULT NULL,
  `fac_nat_conf_status` varchar(30) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `fac_national_conference`
--

INSERT INTO `fac_national_conference` (`fac_nat_conf_id`, `fac_nat_conf_isused`, `fac_nat_conf_gusid`, `fac_nat_conf_title`, `fac_nat_conf_author`, `fac_nat_conf_name`, `fac_nat_conf_journame`, `fac_nat_conf_date`, `fac_nat_conf_venue`, `fac_nat_conf_status`) VALUES
(1, 1, 3, 'The Big Data analytics ', 'Ken thompson', 'The Big Data ', 'IEEE version 9.0', '2016-03-31 18:30:00', 'SRM University, Chennai', 'Published'),
(3, 0, 7, 'The internet OF things', 'Ken Thomson ', 'IOT', 'IEEE version 9.0', '2016-04-05 18:30:00', 'SRM chennai', 'Presented'),
(4, 0, 7, 'Something', 'jsjsj', 'jsjssj', 'jssjs', '2016-04-05 18:30:00', 'ksksk', 'kdkddk'),
(5, 1, 3, 'Srm sheet', 'subham', 'iot', 'journal', '2016-05-06 18:30:00', 'SRM university', 'presented'),
(6, 1, 3, 'Srm sheet', 'subham', 'iot', 'journal', '2016-05-06 18:30:00', 'SRM university', 'presented'),
(7, 1, 3, 'bigdata', 'bigdata', 'bigdata', 'bidata', '2016-05-04 18:30:00', 'sample', 'sample'),
(8, 1, 3, 'Sample', 'Sample', 'Sample', 'Sample', '2016-05-11 18:30:00', 'Sample', 'Accepted'),
(9, 1, 3, 'Sample', 'Sample', 'Sample', 'Sample', '2016-05-11 18:30:00', 'Sample', 'Accepted'),
(10, 1, 3, 'Sample', 'Sample', 'Sample', 'Sample', '2016-05-11 18:30:00', 'Sample', 'Accepted'),
(11, 1, 3, 'subham', 'au', 'ss', 'ss', '2016-05-12 18:30:00', 'k', 'ks'),
(12, 1, 3, 'sample', 'sas', 'saa', 'aas', '2016-05-09 18:30:00', 'sds', 'dssd'),
(13, 0, 3, 'sample', 'sample', 'sample', 'sample', '2016-05-02 18:30:00', 'sample', 'sample');

-- --------------------------------------------------------

--
-- Table structure for table `fac_national_journals`
--

CREATE TABLE IF NOT EXISTS `fac_national_journals` (
`fac_nat_jour_id` int(11) NOT NULL,
  `fac_nat_jour_gusid` int(11) DEFAULT NULL,
  `fac_nat_jour_title` varchar(100) DEFAULT NULL,
  `fac_nat_jour_author` varchar(100) DEFAULT NULL,
  `fac_nat_jour_oauthor` varchar(100) DEFAULT NULL,
  `fac_nat_jour_name` varchar(100) DEFAULT NULL,
  `fac_nat_jour_date` datetime DEFAULT NULL,
  `fac_nat_jour_volume` varchar(100) DEFAULT NULL,
  `fac_nat_jour_impact` varchar(100) DEFAULT NULL,
  `fac_nat_jour_citation` varchar(100) DEFAULT NULL,
  `fac_nat_jour_status` varchar(100) DEFAULT NULL,
  `fac_nat_jour_isused` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `fac_national_journals`
--

INSERT INTO `fac_national_journals` (`fac_nat_jour_id`, `fac_nat_jour_gusid`, `fac_nat_jour_title`, `fac_nat_jour_author`, `fac_nat_jour_oauthor`, `fac_nat_jour_name`, `fac_nat_jour_date`, `fac_nat_jour_volume`, `fac_nat_jour_impact`, `fac_nat_jour_citation`, `fac_nat_jour_status`, `fac_nat_jour_isused`) VALUES
(1, 3, 'Internet of Things', 'Simran Kaur Deol', 'Subham Biswajit, Anusha T ', 'IEEE version 8.0', '2016-04-09 18:30:00', 'Page no:10', 'Something', 'Something', 'Indexed', 1),
(2, 3, 'update it ', 'jwjw', 'wkwk', 'kwkw', '2016-04-08 18:30:00', '9sksks', 'kssks', 'sjsjs', 'ksks', 1),
(3, 3, 'subham', 'date', 'date', 'dated', '2016-05-04 18:30:00', 'date', 'date', 'date', 'date', 0);

-- --------------------------------------------------------

--
-- Table structure for table `fac_seminars`
--

CREATE TABLE IF NOT EXISTS `fac_seminars` (
`fac_sem_id` int(11) NOT NULL,
  `fac_sem_gusid` int(11) DEFAULT NULL,
  `fac_sem_facname` varchar(100) DEFAULT NULL,
  `fac_sem_name` varchar(100) DEFAULT NULL,
  `fac_sem_date` datetime DEFAULT NULL,
  `fac_sem_nature` text,
  `fac_sem_isused` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `fac_seminars`
--

INSERT INTO `fac_seminars` (`fac_sem_id`, `fac_sem_gusid`, `fac_sem_facname`, `fac_sem_name`, `fac_sem_date`, `fac_sem_nature`, `fac_sem_isused`) VALUES
(1, 3, 'sample', 'sample', '2016-05-08 18:30:00', 'sample', 1),
(2, 3, 'subham', 'subha', '2016-05-01 18:30:00', 's', 0),
(3, 3, 'Fhh', 'Ghh', '2016-05-24 18:30:00', 'Ghj', 0),
(4, 3, 'Fhh', 'Ghh', '2016-05-24 18:30:00', 'Ghj', 0),
(5, 3, 'subham', 'subha', '2016-05-01 18:30:00', 's', 0);

-- --------------------------------------------------------

--
-- Table structure for table `fac_software_development`
--

CREATE TABLE IF NOT EXISTS `fac_software_development` (
`fac_soft_dev_id` int(11) NOT NULL,
  `fac_soft_dev_name` varchar(100) DEFAULT NULL,
  `fac_soft_dev_staff` varchar(100) DEFAULT NULL,
  `fac_soft_dev_student` varchar(100) DEFAULT NULL,
  `fac_soft_dev_gusid` int(11) DEFAULT NULL,
  `fac_soft_dev_isused` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `fac_software_development`
--

INSERT INTO `fac_software_development` (`fac_soft_dev_id`, `fac_soft_dev_name`, `fac_soft_dev_staff`, `fac_soft_dev_student`, `fac_soft_dev_gusid`, `fac_soft_dev_isused`) VALUES
(1, 'sample', 'sample', 'sample', 3, 1);

-- --------------------------------------------------------

--
-- Table structure for table `global_users`
--

CREATE TABLE IF NOT EXISTS `global_users` (
`gus_userid` int(11) NOT NULL,
  `gus_picture` varchar(200) DEFAULT NULL,
  `gus_username` varchar(100) DEFAULT NULL,
  `gus_name` varchar(100) DEFAULT NULL,
  `gus_password` varchar(100) DEFAULT NULL,
  `gus_lastlogin` datetime DEFAULT NULL,
  `gus_type` varchar(30) DEFAULT NULL,
  `gus_createdby` varchar(40) DEFAULT NULL,
  `gus_dob` datetime DEFAULT NULL,
  `gus_email` varchar(50) DEFAULT NULL,
  `gus_isused` int(2) DEFAULT NULL,
  `gus_modifiedon` datetime DEFAULT NULL,
  `gus_verify` varchar(10) DEFAULT NULL,
  `gus_permission` varchar(20) NOT NULL DEFAULT 'USER'
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `global_users`
--

INSERT INTO `global_users` (`gus_userid`, `gus_picture`, `gus_username`, `gus_name`, `gus_password`, `gus_lastlogin`, `gus_type`, `gus_createdby`, `gus_dob`, `gus_email`, `gus_isused`, `gus_modifiedon`, `gus_verify`, `gus_permission`) VALUES
(3, NULL, '1031310363', 'Dr B. Amutha', 'pbkdf2_sha256$50000$salt$tAH/DSifn4t5LkrV2K6tk2WOTcgUFlpVbsx9FQcZ53A=', '2016-05-13 15:29:48', 'Faculty', NULL, '2016-04-08 18:30:00', 'digu35@gmail.com', 1, '2016-04-08 09:28:53', '25605', 'ADMIN'),
(4, NULL, '1031310371', 'Simran Kaur Deol', 'pbkdf2_sha256$50000$salt$HBVwmlw4KLm+L/ru97nLCUkRsjKzGrghHeMqa8yrUtQ=', '2016-04-10 14:18:02', 'Student', NULL, '2016-04-19 18:30:00', 'simrandeol05@gmail.com', 1, '2016-04-10 14:17:28', '51245', 'USER'),
(6, NULL, '1031310330', 'Anusha T', 'pbkdf2_sha256$50000$salt$Gaqvc7+vwzm2KUP3L1nA+5ATtyCrWSKukywRjMKBAkE=', '2016-05-08 06:16:28', 'Student', NULL, '2016-04-11 18:30:00', 'digu35@gmail.com', 1, '2016-04-12 02:13:07', '57606', 'USER'),
(7, NULL, '101304', 'S. Priya', 'pbkdf2_sha256$50000$salt$ANauMFo9VjWNi+EPPJBYvlbZP/QhH9kZ/kCINeJM9g8=', '2016-04-16 06:19:38', 'Faculty', NULL, '2016-04-05 18:30:00', 'priya@gmail.com', 1, '2016-04-16 05:35:17', '83847', 'USER'),
(11, '', '1031310361', 'subham', 'pbkdf2_sha256$50000$salt$tAH/DSifn4t5LkrV2K6tk2WOTcgUFlpVbsx9FQcZ53A=', NULL, 'Student', NULL, '2016-05-06 18:30:00', 'digu35@gmail.com', 1, '2016-05-07 20:04:31', '25188', 'USER'),
(15, 'uploads/banner-05.png', '1031310377', 'Subham', 'pbkdf2_sha256$50000$salt$tAH/DSifn4t5LkrV2K6tk2WOTcgUFlpVbsx9FQcZ53A=', '2016-05-12 12:27:24', 'Student', NULL, '2016-05-06 18:30:00', 'digu@gmail.com', 1, '2016-05-07 20:39:50', '99930', 'USER'),
(16, 'uploads/banner-05_CCumVtq.png', '1031310388', 'Subham', 'pbkdf2_sha256$50000$salt$tAH/DSifn4t5LkrV2K6tk2WOTcgUFlpVbsx9FQcZ53A=', '2016-05-12 12:10:06', 'Faculty', NULL, '2016-05-11 18:30:00', 'digu@gmail.com', 1, '2016-05-07 20:42:46', '83873', 'USER'),
(17, 'uploads/10301525_435909603217636_6616425518403483625_n.jpg', '1031310365', 'Suvojit Kar', 'pbkdf2_sha256$50000$salt$Gaqvc7+vwzm2KUP3L1nA+5ATtyCrWSKukywRjMKBAkE=', '2016-05-08 05:24:34', 'Faculty', NULL, '2016-05-11 18:30:00', 'digu35@gmail.com', 1, '2016-05-08 04:52:35', '88661', 'USER'),
(18, 'uploads/himanshu.jpe', '1031310586', 'himanshu kumar ', 'pbkdf2_sha256$50000$salt$Gaqvc7+vwzm2KUP3L1nA+5ATtyCrWSKukywRjMKBAkE=', '2016-05-13 07:56:23', 'Student', NULL, '2016-05-25 18:30:00', 'digu35@gmail.com', 1, '2016-05-13 07:50:48', '79243', ''),
(19, 'uploads/profile-pics-10.jpg', '99999', 'Kiruthika Devi S', 'pbkdf2_sha256$50000$salt$Gaqvc7+vwzm2KUP3L1nA+5ATtyCrWSKukywRjMKBAkE=', '2016-05-14 09:24:58', 'Faculty', NULL, '2016-04-30 18:30:00', 'digu35@gmail.com', 1, '2016-05-14 05:46:09', '72996', 'CONTENT');

-- --------------------------------------------------------

--
-- Table structure for table `gus_permissions`
--

CREATE TABLE IF NOT EXISTS `gus_permissions` (
`perm_id` int(11) NOT NULL,
  `perm_gusid` int(11) NOT NULL,
  `perm_admin` int(11) DEFAULT NULL,
  `perm_mom_admin` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `minutes_of_meeting`
--

CREATE TABLE IF NOT EXISTS `minutes_of_meeting` (
`mom_id` int(11) NOT NULL,
  `mom_gus_id` int(11) DEFAULT NULL,
  `mom_description` varchar(1000) DEFAULT NULL,
  `mom_movedby` varchar(50) DEFAULT NULL,
  `mom_discussion` varchar(500) DEFAULT NULL,
  `mom_venue` varchar(50) DEFAULT NULL,
  `mom_date` datetime DEFAULT NULL,
  `mom_followup` varchar(100) DEFAULT NULL,
  `mom_deadline` datetime DEFAULT NULL,
  `mom_broadcast` int(11) DEFAULT '0',
  `mom_status` varchar(20) DEFAULT NULL,
  `mom_new` int(11) DEFAULT '0',
  `mom_isused` int(11) DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `minutes_of_meeting`
--

INSERT INTO `minutes_of_meeting` (`mom_id`, `mom_gus_id`, `mom_description`, `mom_movedby`, `mom_discussion`, `mom_venue`, `mom_date`, `mom_followup`, `mom_deadline`, `mom_broadcast`, `mom_status`, `mom_new`, `mom_isused`) VALUES
(4, 19, 'updated', 'sample', 'sample', 'sample', '2016-05-12 18:30:00', 'sample', '2016-05-06 18:30:00', 0, '', 0, 1),
(5, 19, 'Updated ', 'akak', 'jsjs', 'jsjs', '2016-05-24 18:30:00', 'jsjs', '1995-04-12 18:30:00', 0, '', 0, 0),
(6, 19, 'hello', 'helo', 'sample', 'sample', '2016-05-10 18:30:00', 'sample', '2016-05-02 18:30:00', 0, '', 0, 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `auth_group`
--
ALTER TABLE `auth_group`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `group_id` (`group_id`,`permission_id`), ADD KEY `auth_group_permissions_0e939a4f` (`group_id`), ADD KEY `auth_group_permissions_8373b171` (`permission_id`);

--
-- Indexes for table `auth_permission`
--
ALTER TABLE `auth_permission`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `content_type_id` (`content_type_id`,`codename`), ADD KEY `auth_permission_417f1b1c` (`content_type_id`);

--
-- Indexes for table `auth_user`
--
ALTER TABLE `auth_user`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `user_id` (`user_id`,`group_id`), ADD KEY `auth_user_groups_e8701ad4` (`user_id`), ADD KEY `auth_user_groups_0e939a4f` (`group_id`);

--
-- Indexes for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `user_id` (`user_id`,`permission_id`), ADD KEY `auth_user_user_permissions_e8701ad4` (`user_id`), ADD KEY `auth_user_user_permissions_8373b171` (`permission_id`);

--
-- Indexes for table `candidate_activity`
--
ALTER TABLE `candidate_activity`
 ADD PRIMARY KEY (`candidate_id`), ADD KEY `fk_cand_act_gusid` (`cand_act_gusid`);

--
-- Indexes for table `candidate_development`
--
ALTER TABLE `candidate_development`
 ADD PRIMARY KEY (`cand_dev_id`), ADD KEY `fk_cand_dev_gusid` (`cand_dev_gusid`);

--
-- Indexes for table `candidate_initiatives`
--
ALTER TABLE `candidate_initiatives`
 ADD PRIMARY KEY (`cand_ini_id`), ADD KEY `fk_cand_ini_gusid` (`cand_ini_gusid`);

--
-- Indexes for table `candidate_internship`
--
ALTER TABLE `candidate_internship`
 ADD PRIMARY KEY (`cand_int_id`), ADD KEY `fk_cand_int_gusid` (`cand_int_gusid`);

--
-- Indexes for table `candidate_journals`
--
ALTER TABLE `candidate_journals`
 ADD PRIMARY KEY (`cand_jour_id`), ADD KEY `fk_cand_jour_gusid` (`cand_jour_gusid`);

--
-- Indexes for table `candidate_national_recognition`
--
ALTER TABLE `candidate_national_recognition`
 ADD PRIMARY KEY (`cand_nat_reg_id`), ADD KEY `fk_cand_nat_reg_gus_id` (`cand_nat_reg_gus_id`);

--
-- Indexes for table `candidate_paper_conference`
--
ALTER TABLE `candidate_paper_conference`
 ADD PRIMARY KEY (`cand_pap_conf_id`), ADD KEY `fk_cand_pap_conf_gusid` (`cand_pap_conf_gusid`);

--
-- Indexes for table `candidate_performance`
--
ALTER TABLE `candidate_performance`
 ADD PRIMARY KEY (`cand_per_id`), ADD KEY `fk_cand_per_gusid` (`cand_per_gusid`);

--
-- Indexes for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
 ADD PRIMARY KEY (`id`), ADD KEY `django_admin_log_417f1b1c` (`content_type_id`), ADD KEY `django_admin_log_e8701ad4` (`user_id`);

--
-- Indexes for table `django_content_type`
--
ALTER TABLE `django_content_type`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `django_content_type_app_label_3ec8c61c_uniq` (`app_label`,`model`);

--
-- Indexes for table `django_migrations`
--
ALTER TABLE `django_migrations`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_session`
--
ALTER TABLE `django_session`
 ADD PRIMARY KEY (`session_key`), ADD KEY `django_session_de54fa62` (`expire_date`);

--
-- Indexes for table `fac_awards`
--
ALTER TABLE `fac_awards`
 ADD PRIMARY KEY (`fac_awards_id`), ADD KEY `fk_fac_awards_gusid` (`fac_awards_gusid`);

--
-- Indexes for table `fac_consultancy_activities`
--
ALTER TABLE `fac_consultancy_activities`
 ADD PRIMARY KEY (`fac_con_act_id`), ADD KEY `fk_fac_con_act_gusid` (`fac_con_act_gusid`);

--
-- Indexes for table `fac_international_conference`
--
ALTER TABLE `fac_international_conference`
 ADD PRIMARY KEY (`fac_int_conf_id`), ADD KEY `fk_fac_int_conf_gusid` (`fac_int_conf_gusid`);

--
-- Indexes for table `fac_internatonal_journals`
--
ALTER TABLE `fac_internatonal_journals`
 ADD PRIMARY KEY (`fac_int_jour_id`), ADD KEY `fk_fac_int_jour_gusid` (`fac_int_jour_gusid`);

--
-- Indexes for table `fac_manual_publications`
--
ALTER TABLE `fac_manual_publications`
 ADD PRIMARY KEY (`fac_man_pub_id`), ADD KEY `fk_fac_man_pub_gusid` (`fac_man_pub_gusid`);

--
-- Indexes for table `fac_national_conference`
--
ALTER TABLE `fac_national_conference`
 ADD PRIMARY KEY (`fac_nat_conf_id`), ADD KEY `fk_fac_nat_conf_gusid` (`fac_nat_conf_gusid`);

--
-- Indexes for table `fac_national_journals`
--
ALTER TABLE `fac_national_journals`
 ADD PRIMARY KEY (`fac_nat_jour_id`), ADD KEY `fk_fac_nat_jour_gusid` (`fac_nat_jour_gusid`);

--
-- Indexes for table `fac_seminars`
--
ALTER TABLE `fac_seminars`
 ADD PRIMARY KEY (`fac_sem_id`), ADD KEY `fk_fac_sem_gusid` (`fac_sem_gusid`);

--
-- Indexes for table `fac_software_development`
--
ALTER TABLE `fac_software_development`
 ADD PRIMARY KEY (`fac_soft_dev_id`), ADD KEY `fk_fac_soft_dev_gusid` (`fac_soft_dev_gusid`);

--
-- Indexes for table `global_users`
--
ALTER TABLE `global_users`
 ADD PRIMARY KEY (`gus_userid`);

--
-- Indexes for table `gus_permissions`
--
ALTER TABLE `gus_permissions`
 ADD PRIMARY KEY (`perm_id`), ADD KEY `fk_perm_gusid` (`perm_gusid`);

--
-- Indexes for table `minutes_of_meeting`
--
ALTER TABLE `minutes_of_meeting`
 ADD PRIMARY KEY (`mom_id`), ADD KEY `mom_gus_id_6` (`mom_gus_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=73;
--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `candidate_activity`
--
ALTER TABLE `candidate_activity`
MODIFY `candidate_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=31;
--
-- AUTO_INCREMENT for table `candidate_development`
--
ALTER TABLE `candidate_development`
MODIFY `cand_dev_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `candidate_initiatives`
--
ALTER TABLE `candidate_initiatives`
MODIFY `cand_ini_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `candidate_internship`
--
ALTER TABLE `candidate_internship`
MODIFY `cand_int_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `candidate_journals`
--
ALTER TABLE `candidate_journals`
MODIFY `cand_jour_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `candidate_national_recognition`
--
ALTER TABLE `candidate_national_recognition`
MODIFY `cand_nat_reg_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `candidate_paper_conference`
--
ALTER TABLE `candidate_paper_conference`
MODIFY `cand_pap_conf_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `candidate_performance`
--
ALTER TABLE `candidate_performance`
MODIFY `cand_per_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=25;
--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `fac_awards`
--
ALTER TABLE `fac_awards`
MODIFY `fac_awards_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `fac_consultancy_activities`
--
ALTER TABLE `fac_consultancy_activities`
MODIFY `fac_con_act_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `fac_international_conference`
--
ALTER TABLE `fac_international_conference`
MODIFY `fac_int_conf_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `fac_internatonal_journals`
--
ALTER TABLE `fac_internatonal_journals`
MODIFY `fac_int_jour_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `fac_manual_publications`
--
ALTER TABLE `fac_manual_publications`
MODIFY `fac_man_pub_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `fac_national_conference`
--
ALTER TABLE `fac_national_conference`
MODIFY `fac_nat_conf_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `fac_national_journals`
--
ALTER TABLE `fac_national_journals`
MODIFY `fac_nat_jour_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `fac_seminars`
--
ALTER TABLE `fac_seminars`
MODIFY `fac_sem_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `fac_software_development`
--
ALTER TABLE `fac_software_development`
MODIFY `fac_soft_dev_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `global_users`
--
ALTER TABLE `global_users`
MODIFY `gus_userid` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=20;
--
-- AUTO_INCREMENT for table `gus_permissions`
--
ALTER TABLE `gus_permissions`
MODIFY `perm_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `minutes_of_meeting`
--
ALTER TABLE `minutes_of_meeting`
MODIFY `mom_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
ADD CONSTRAINT `auth_group_permissi_permission_id_23962d04_fk_auth_permission_id` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
ADD CONSTRAINT `auth_group_permissions_group_id_58c48ba9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Constraints for table `auth_permission`
--
ALTER TABLE `auth_permission`
ADD CONSTRAINT `auth_permissi_content_type_id_51277a81_fk_django_content_type_id` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Constraints for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
ADD CONSTRAINT `auth_user_groups_group_id_30a071c9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
ADD CONSTRAINT `auth_user_groups_user_id_24702650_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
ADD CONSTRAINT `auth_user_user_perm_permission_id_3d7071f0_fk_auth_permission_id` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
ADD CONSTRAINT `auth_user_user_permissions_user_id_7cd7acb6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `candidate_activity`
--
ALTER TABLE `candidate_activity`
ADD CONSTRAINT `fk_cand_act_gusid` FOREIGN KEY (`cand_act_gusid`) REFERENCES `global_users` (`gus_userid`);

--
-- Constraints for table `candidate_development`
--
ALTER TABLE `candidate_development`
ADD CONSTRAINT `fk_cand_dev_gusid` FOREIGN KEY (`cand_dev_gusid`) REFERENCES `global_users` (`gus_userid`);

--
-- Constraints for table `candidate_initiatives`
--
ALTER TABLE `candidate_initiatives`
ADD CONSTRAINT `fk_cand_ini_gusid` FOREIGN KEY (`cand_ini_gusid`) REFERENCES `global_users` (`gus_userid`);

--
-- Constraints for table `candidate_internship`
--
ALTER TABLE `candidate_internship`
ADD CONSTRAINT `fk_cand_int_gusid` FOREIGN KEY (`cand_int_gusid`) REFERENCES `global_users` (`gus_userid`);

--
-- Constraints for table `candidate_journals`
--
ALTER TABLE `candidate_journals`
ADD CONSTRAINT `fk_cand_jour_gusid` FOREIGN KEY (`cand_jour_gusid`) REFERENCES `global_users` (`gus_userid`);

--
-- Constraints for table `candidate_national_recognition`
--
ALTER TABLE `candidate_national_recognition`
ADD CONSTRAINT `fk_cand_nat_reg_gus_id` FOREIGN KEY (`cand_nat_reg_gus_id`) REFERENCES `global_users` (`gus_userid`);

--
-- Constraints for table `candidate_paper_conference`
--
ALTER TABLE `candidate_paper_conference`
ADD CONSTRAINT `fk_cand_pap_conf_gusid` FOREIGN KEY (`cand_pap_conf_gusid`) REFERENCES `global_users` (`gus_userid`);

--
-- Constraints for table `candidate_performance`
--
ALTER TABLE `candidate_performance`
ADD CONSTRAINT `fk_cand_per_gusid` FOREIGN KEY (`cand_per_gusid`) REFERENCES `global_users` (`gus_userid`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
ADD CONSTRAINT `django_admin__content_type_id_5151027a_fk_django_content_type_id` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
ADD CONSTRAINT `django_admin_log_user_id_1c5f563_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `fac_awards`
--
ALTER TABLE `fac_awards`
ADD CONSTRAINT `fk_fac_awards_gusid` FOREIGN KEY (`fac_awards_gusid`) REFERENCES `global_users` (`gus_userid`);

--
-- Constraints for table `fac_consultancy_activities`
--
ALTER TABLE `fac_consultancy_activities`
ADD CONSTRAINT `fk_fac_con_act_gusid` FOREIGN KEY (`fac_con_act_gusid`) REFERENCES `global_users` (`gus_userid`);

--
-- Constraints for table `fac_international_conference`
--
ALTER TABLE `fac_international_conference`
ADD CONSTRAINT `fk_fac_int_conf_gusid` FOREIGN KEY (`fac_int_conf_gusid`) REFERENCES `global_users` (`gus_userid`);

--
-- Constraints for table `fac_internatonal_journals`
--
ALTER TABLE `fac_internatonal_journals`
ADD CONSTRAINT `fk_fac_int_jour_gusid` FOREIGN KEY (`fac_int_jour_gusid`) REFERENCES `global_users` (`gus_userid`);

--
-- Constraints for table `fac_manual_publications`
--
ALTER TABLE `fac_manual_publications`
ADD CONSTRAINT `fk_fac_man_pub_gusid` FOREIGN KEY (`fac_man_pub_gusid`) REFERENCES `global_users` (`gus_userid`);

--
-- Constraints for table `fac_national_conference`
--
ALTER TABLE `fac_national_conference`
ADD CONSTRAINT `fk_fac_nat_conf_gusid` FOREIGN KEY (`fac_nat_conf_gusid`) REFERENCES `global_users` (`gus_userid`);

--
-- Constraints for table `fac_national_journals`
--
ALTER TABLE `fac_national_journals`
ADD CONSTRAINT `fk_fac_nat_jour_gusid` FOREIGN KEY (`fac_nat_jour_gusid`) REFERENCES `global_users` (`gus_userid`);

--
-- Constraints for table `fac_seminars`
--
ALTER TABLE `fac_seminars`
ADD CONSTRAINT `fk_fac_sem_gusid` FOREIGN KEY (`fac_sem_gusid`) REFERENCES `global_users` (`gus_userid`);

--
-- Constraints for table `fac_software_development`
--
ALTER TABLE `fac_software_development`
ADD CONSTRAINT `fk_fac_soft_dev_gusid` FOREIGN KEY (`fac_soft_dev_gusid`) REFERENCES `global_users` (`gus_userid`);

--
-- Constraints for table `gus_permissions`
--
ALTER TABLE `gus_permissions`
ADD CONSTRAINT `fk_perm_gusid` FOREIGN KEY (`perm_gusid`) REFERENCES `global_users` (`gus_userid`);

--
-- Constraints for table `minutes_of_meeting`
--
ALTER TABLE `minutes_of_meeting`
ADD CONSTRAINT `fk_mom_gus_id` FOREIGN KEY (`mom_gus_id`) REFERENCES `global_users` (`gus_userid`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
