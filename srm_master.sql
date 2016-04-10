-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Apr 10, 2016 at 06:13 PM
-- Server version: 5.6.21
-- PHP Version: 5.5.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `srm_master`
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
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=latin1;

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
(45, 'Can delete candidate development', 15, 'delete_candidatedevelopment');

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
  `cand_act_year` varchar(100) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `candidate_activity`
--

INSERT INTO `candidate_activity` (`candidate_id`, `cand_act_name`, `cand_act_gusid`, `cand_act_date`, `cand_act_prize`, `cand_act_nature`, `cand_act_year`) VALUES
(5, 'Aaruush16', 3, NULL, 'certificate', 'volunteer', '1st year');

-- --------------------------------------------------------

--
-- Table structure for table `candidate_development`
--

CREATE TABLE IF NOT EXISTS `candidate_development` (
`cand_dev_id` int(11) NOT NULL,
  `cand_dev_gusid` int(11) DEFAULT NULL,
  `cand_dev_name` text NOT NULL,
  `cand_dev_faculty` text NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `candidate_development`
--

INSERT INTO `candidate_development` (`cand_dev_id`, `cand_dev_gusid`, `cand_dev_name`, `cand_dev_faculty`) VALUES
(2, 3, 'Uniwip.com', 'S.Priya (asst Prof, Department of Computer Science)');

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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `candidate_initiatives`
--

INSERT INTO `candidate_initiatives` (`cand_ini_id`, `cand_ini_gusid`, `cand_ini_level`, `cand_ini_name`, `cand_ini_venue`, `cand_ini_date`, `cand_ini_isused`) VALUES
(3, 3, 'xxad', 'sddsd', 'dsds', '2016-05-12 18:30:00', 0);

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
  `cand_int_stipend` varchar(100) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `candidate_internship`
--

INSERT INTO `candidate_internship` (`cand_int_id`, `cand_int_gusid`, `cand_int_name`, `cand_int_start`, `cand_int_end`, `cand_int_stipend`) VALUES
(7, 3, 'PlanMyTour', '2016-04-28 18:30:00', '2016-04-23 18:30:00', '2500'),
(8, 3, 'xz', '2016-04-09 18:30:00', '2016-04-21 18:30:00', 'lzlzlz'),
(9, 4, 'Microsoft Corp ', '2012-05-31 18:30:00', '2016-04-09 18:30:00', '15-16 lakhs');

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
  `cand_jour_indexed` varchar(100) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `candidate_journals`
--

INSERT INTO `candidate_journals` (`cand_jour_id`, `cand_jour_gusid`, `cand_jour_title`, `cand_jour_fauthor`, `cand_jour_oauthor`, `cand_jour_name`, `cand_jour_date`, `cand_jour_vol`, `cand_jour_impact`, `cand_jour_citation`, `cand_jour_indexed`) VALUES
(3, 3, 'Pattern Recognition', 'Dawn Schalfof', 'Subham Biswajit, Suvojit Kar', 'IEEE version 2.0', '2016-04-13 18:30:00', '3', '2', '233', 'indexed');

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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `candidate_national_recognition`
--

INSERT INTO `candidate_national_recognition` (`cand_nat_reg_id`, `cand_nat_reg_gus_id`, `cand_nat_reg_details`, `cand_nat_reg_year`, `cand_nat_reg_isused`) VALUES
(1, 3, 'lecturer of the academic ', '2016 ', 0);

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
  `cand_pap_conf_status` varchar(50) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `candidate_paper_conference`
--

INSERT INTO `candidate_paper_conference` (`cand_pap_conf_id`, `cand_pap_conf_gusid`, `cand_pap_conf_title`, `cand_pap_conf_author`, `cand_pap_conf_cname`, `cand_pap_conf_date`, `cand_pap_conf_duration`, `cand_pap_conf_org`, `cand_pap_conf_venue`, `cand_pap_conf_status`) VALUES
(9, 3, 'The internet of things', 'Subham Biswajit', 'IOT in Chennai', '2016-03-31 18:30:00', '1 day', 'SRM university ', 'Chennai', 'Presented');

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
  `cand_per_year` varchar(30) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `candidate_performance`
--

INSERT INTO `candidate_performance` (`cand_per_id`, `cand_per_gusid`, `cand_per_exam`, `cand_per_ypass`, `cand_per_marks`, `cand_per_year`) VALUES
(2, 3, 'GRE', '2015', '12%', '3rd year'),
(6, 3, 'National Science Olympiad', '2010', '93%', '11th grade');

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
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;

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
(15, 'candidate development', 'backends', 'candidatedevelopment');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE IF NOT EXISTS `django_migrations` (
`id` int(11) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2016-04-02 19:22:30'),
(2, 'auth', '0001_initial', '2016-04-02 19:22:44'),
(3, 'admin', '0001_initial', '2016-04-02 19:22:49'),
(4, 'sessions', '0001_initial', '2016-04-02 19:22:50'),
(5, 'backends', '0001_initial', '2016-04-10 07:03:09');

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
('a6tue05j7d7zvedccztl9lnrfhhfvte9', 'OTg2NGUyZTUzZjY4NjQ2ZTliZjNiZGQ0NjY4OWRlNmU5NzA3NDhjYTp7Il9hdXRoX3VzZXJfaGFzaCI6IiIsIl9hdXRoX3VzZXJfaWQiOjMsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImN1c3RvbWJhY2tlbmRzLmJhY2tlbmRzLlNybUV2ZW50QmFja2VuZCJ9', '2016-04-24 04:43:39'),
('bp8hoqb0p13q9c2jbdx7x47s2zx3hdqs', 'OTg2NGUyZTUzZjY4NjQ2ZTliZjNiZGQ0NjY4OWRlNmU5NzA3NDhjYTp7Il9hdXRoX3VzZXJfaGFzaCI6IiIsIl9hdXRoX3VzZXJfaWQiOjMsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImN1c3RvbWJhY2tlbmRzLmJhY2tlbmRzLlNybUV2ZW50QmFja2VuZCJ9', '2016-04-23 15:06:10'),
('f2sm3c432zj8sne63k0ajk60r3wckzbw', 'NmU2NzY4NDRhYzAxZjE3NWVlOTM3NmNhZWQxNTE2Yjc3NTBhYTY2Mzp7Il9hdXRoX3VzZXJfaGFzaCI6IiIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImN1c3RvbWJhY2tlbmRzLmJhY2tlbmRzLlNybUV2ZW50QmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjN9', '2016-04-24 14:20:49');

-- --------------------------------------------------------

--
-- Table structure for table `global_users`
--

CREATE TABLE IF NOT EXISTS `global_users` (
`gus_userid` int(11) NOT NULL,
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
  `gus_verify` varchar(10) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `global_users`
--

INSERT INTO `global_users` (`gus_userid`, `gus_username`, `gus_name`, `gus_password`, `gus_lastlogin`, `gus_type`, `gus_createdby`, `gus_dob`, `gus_email`, `gus_isused`, `gus_modifiedon`, `gus_verify`) VALUES
(3, '1031310363', 'Subham Biswajit', 'pbkdf2_sha256$50000$salt$tAH/DSifn4t5LkrV2K6tk2WOTcgUFlpVbsx9FQcZ53A=', '2016-04-10 14:20:49', 'Faculty', NULL, '2016-04-08 18:30:00', 'digu35@gmail.com', 1, '2016-04-08 09:28:53', '25605'),
(4, '1031310371', 'Simran Kaur Deol', 'pbkdf2_sha256$50000$salt$HBVwmlw4KLm+L/ru97nLCUkRsjKzGrghHeMqa8yrUtQ=', '2016-04-10 14:18:02', 'Student', NULL, '2016-04-19 18:30:00', 'simrandeol05@gmail.com', 1, '2016-04-10 14:17:28', '51245');

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
-- Indexes for table `global_users`
--
ALTER TABLE `global_users`
 ADD PRIMARY KEY (`gus_userid`);

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
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=46;
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
MODIFY `candidate_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `candidate_development`
--
ALTER TABLE `candidate_development`
MODIFY `cand_dev_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `candidate_initiatives`
--
ALTER TABLE `candidate_initiatives`
MODIFY `cand_ini_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `candidate_internship`
--
ALTER TABLE `candidate_internship`
MODIFY `cand_int_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `candidate_journals`
--
ALTER TABLE `candidate_journals`
MODIFY `cand_jour_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `candidate_national_recognition`
--
ALTER TABLE `candidate_national_recognition`
MODIFY `cand_nat_reg_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `candidate_paper_conference`
--
ALTER TABLE `candidate_paper_conference`
MODIFY `cand_pap_conf_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `candidate_performance`
--
ALTER TABLE `candidate_performance`
MODIFY `cand_per_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `global_users`
--
ALTER TABLE `global_users`
MODIFY `gus_userid` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
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

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
