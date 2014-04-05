-- phpMyAdmin SQL Dump
-- version 4.1.8
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Apr 05, 2014 at 01:33 PM
-- Server version: 5.1.72-cll-lve
-- PHP Version: 5.4.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `adamjcas_haleyhouse-production`
--

-- --------------------------------------------------------

--
-- Table structure for table `deadlines`
--

CREATE TABLE IF NOT EXISTS `deadlines` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `grant_record_id` int(11) DEFAULT NULL,
  `deadline_type` varchar(255) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `notes` text,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `donations`
--

CREATE TABLE IF NOT EXISTS `donations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `individual_id` int(11) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `amount` decimal(10,0) DEFAULT NULL,
  `method` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `events`
--

CREATE TABLE IF NOT EXISTS `events` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `start_datetime` datetime DEFAULT NULL,
  `end_datetime` datetime DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `event_attendance_records`
--

CREATE TABLE IF NOT EXISTS `event_attendance_records` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `individual_id` int(11) DEFAULT NULL,
  `organization_id` int(11) DEFAULT NULL,
  `event_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `grantmakers`
--

CREATE TABLE IF NOT EXISTS `grantmakers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `rank` int(11) DEFAULT NULL,
  `unsolicited_proposals` tinyint(1) DEFAULT NULL,
  `mission` text,
  `website` varchar(255) DEFAULT NULL,
  `street_address` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `zip_code` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `contact_first_name` varchar(255) DEFAULT NULL,
  `contact_last_name` varchar(255) DEFAULT NULL,
  `contact_email` varchar(255) DEFAULT NULL,
  `contact_phone_number` varchar(255) DEFAULT NULL,
  `notes` text,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `grantmakers`
--

INSERT INTO `grantmakers` (`id`, `name`, `rank`, `unsolicited_proposals`, `mission`, `website`, `street_address`, `city`, `state`, `zip_code`, `phone`, `email`, `contact_first_name`, `contact_last_name`, `contact_email`, `contact_phone_number`, `notes`, `created_at`, `updated_at`) VALUES
(1, 'Robert Foundation', 1, 0, 'To rule the world!', '', '', '', '', '', '', '', '', '', '', '', 'Yah de ya ', '2013-12-22 22:15:19', '2013-12-22 22:15:19');

-- --------------------------------------------------------

--
-- Table structure for table `grant_records`
--

CREATE TABLE IF NOT EXISTS `grant_records` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `grantmaker_id` int(11) DEFAULT NULL,
  `organization_id` int(11) DEFAULT NULL,
  `fiscal_year` varchar(255) DEFAULT NULL,
  `notification_date` date DEFAULT NULL,
  `ask_status` varchar(255) DEFAULT NULL,
  `request_type` varchar(255) DEFAULT NULL,
  `funding_type` varchar(255) DEFAULT NULL,
  `amount` decimal(10,0) DEFAULT NULL,
  `program` varchar(255) DEFAULT NULL,
  `notes` text,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `grant_records`
--

INSERT INTO `grant_records` (`id`, `grantmaker_id`, `organization_id`, `fiscal_year`, `notification_date`, `ask_status`, `request_type`, `funding_type`, `amount`, `program`, `notes`, `created_at`, `updated_at`) VALUES
(1, 1, 1, '2013', '2013-12-22', '', '', '5000', NULL, '', '', '2013-12-22 22:16:05', '2013-12-22 22:16:05');

-- --------------------------------------------------------

--
-- Table structure for table `individuals`
--

CREATE TABLE IF NOT EXISTS `individuals` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `salutation` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `current_street_address` varchar(255) DEFAULT NULL,
  `current_city` varchar(255) DEFAULT NULL,
  `current_zip` varchar(255) DEFAULT NULL,
  `permanent_street_address` varchar(255) DEFAULT NULL,
  `permanent_city` varchar(255) DEFAULT NULL,
  `permanent_zip` varchar(255) DEFAULT NULL,
  `phone_mobile` varchar(255) DEFAULT NULL,
  `phone_work` varchar(255) DEFAULT NULL,
  `phone_home` varchar(255) DEFAULT NULL,
  `emergency_contact_name` varchar(255) DEFAULT NULL,
  `emergency_contact_street_address` varchar(255) DEFAULT NULL,
  `emergency_contact_city` varchar(255) DEFAULT NULL,
  `emergency_contact_zip` varchar(255) DEFAULT NULL,
  `email_newsletter` tinyint(1) DEFAULT NULL,
  `mail_newsletter` tinyint(1) DEFAULT NULL,
  `applied_date` date DEFAULT NULL,
  `processed_date` date DEFAULT NULL,
  `inactive_date` date DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `current_apartment_number` varchar(255) DEFAULT NULL,
  `organization` varchar(255) DEFAULT NULL,
  `current_state` varchar(255) DEFAULT NULL,
  `emergency_contact_state` varchar(255) DEFAULT NULL,
  `permanent_state` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `individuals`
--

INSERT INTO `individuals` (`id`, `first_name`, `last_name`, `salutation`, `email`, `current_street_address`, `current_city`, `current_zip`, `permanent_street_address`, `permanent_city`, `permanent_zip`, `phone_mobile`, `phone_work`, `phone_home`, `emergency_contact_name`, `emergency_contact_street_address`, `emergency_contact_city`, `emergency_contact_zip`, `email_newsletter`, `mail_newsletter`, `applied_date`, `processed_date`, `inactive_date`, `created_at`, `updated_at`, `current_apartment_number`, `organization`, `current_state`, `emergency_contact_state`, `permanent_state`) VALUES
(1, 'Lucas', 'Braun', 'Mr.', 'lucasalan@gmail.com', '8 Chestnut St', 'Boston', '02108', '', '', '', '', '', '', '', '', '', '', 1, 0, '2013-10-06', '2013-10-06', '2013-10-06', '2013-10-06 16:51:47', '2013-10-06 16:51:47', NULL, NULL, NULL, NULL, NULL),
(2, 'Mary Ashton', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '2013-10-06', '2013-10-06', '2013-10-06', '2013-10-06 19:10:46', '2013-10-06 19:10:46', NULL, NULL, NULL, NULL, NULL),
(3, 'Corinne', 'Jager', '', '', '8 Monadnock Street', 'Dorchester', '', '', '', '', '', '', '', '', '', '', '', 0, 0, NULL, NULL, NULL, '2013-12-12 21:48:01', '2014-01-24 21:29:12', NULL, NULL, NULL, NULL, NULL),
(4, 'Jim', 'Paradise', '', 'jimpara@verizon.net', '52 Adams St.', 'Norwood', '02062', '', '', '', '', '', '781-762-8041', '', '', '', '', 0, 0, NULL, NULL, NULL, '2014-03-18 14:24:15', '2014-03-18 14:24:15', NULL, NULL, 'MA', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `individual_organization_records`
--

CREATE TABLE IF NOT EXISTS `individual_organization_records` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `individual_id` int(11) DEFAULT NULL,
  `organization_id` int(11) DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `individual_role_records`
--

CREATE TABLE IF NOT EXISTS `individual_role_records` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `individual_id` int(11) DEFAULT NULL,
  `role_id` int(11) DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `individual_skill_records`
--

CREATE TABLE IF NOT EXISTS `individual_skill_records` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `individual_id` int(11) DEFAULT NULL,
  `skill_id` int(11) DEFAULT NULL,
  `date_gained` date DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `notes`
--

CREATE TABLE IF NOT EXISTS `notes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `individual_id` int(11) DEFAULT NULL,
  `note` text,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `occupations`
--

CREATE TABLE IF NOT EXISTS `occupations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `individual_id` int(11) DEFAULT NULL,
  `sector` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `employer_name` varchar(255) DEFAULT NULL,
  `employer_street_address` varchar(255) DEFAULT NULL,
  `employer_city` varchar(255) DEFAULT NULL,
  `employer_zip` varchar(255) DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `organizations`
--

CREATE TABLE IF NOT EXISTS `organizations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `mission` text,
  `program` varchar(255) DEFAULT NULL,
  `website` varchar(255) DEFAULT NULL,
  `street_address` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `zip` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `contact_first_name` varchar(255) DEFAULT NULL,
  `contact_last_name` varchar(255) DEFAULT NULL,
  `contact_phone_number` varchar(255) DEFAULT NULL,
  `contact_email` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `organizations`
--

INSERT INTO `organizations` (`id`, `name`, `mission`, `program`, `website`, `street_address`, `city`, `state`, `zip`, `created_at`, `updated_at`, `contact_first_name`, `contact_last_name`, `contact_phone_number`, `contact_email`) VALUES
(1, 'Beacon Hill Friends House', 'To spread awareness of Quaker values', '', '', '', '', '', '', '2014-01-30 17:01:27', '2014-01-30 17:01:27', '', '', '', ''),
(2, 'Pine Street Inn', '', '', '', '', '', '', '', '2014-04-05 14:18:41', '2014-04-05 14:18:41', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `organizations_rosters`
--

CREATE TABLE IF NOT EXISTS `organizations_rosters` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `individual_id` int(11) DEFAULT NULL,
  `organization_id` int(11) DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `organization_rosters`
--

CREATE TABLE IF NOT EXISTS `organization_rosters` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `individual_id` int(11) DEFAULT NULL,
  `organization_id` int(11) DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE IF NOT EXISTS `roles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `roles_rosters`
--

CREATE TABLE IF NOT EXISTS `roles_rosters` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `individual_id` int(11) DEFAULT NULL,
  `role_id` int(11) DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `role_rosters`
--

CREATE TABLE IF NOT EXISTS `role_rosters` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `individual_id` int(11) DEFAULT NULL,
  `role_id` int(11) DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `schema_migrations`
--

CREATE TABLE IF NOT EXISTS `schema_migrations` (
  `version` varchar(255) NOT NULL,
  UNIQUE KEY `unique_schema_migrations` (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `schema_migrations`
--

INSERT INTO `schema_migrations` (`version`) VALUES
('20130513171324'),
('20130525161332'),
('20130525192423'),
('20130528013358'),
('20130604174944'),
('20130604181529'),
('20130604191953'),
('20130604192054'),
('20130604192130'),
('20130604192138'),
('20130604192258'),
('20130604192316'),
('20130612182724'),
('20130612182741'),
('20130612182805'),
('20130612192041'),
('20130612193129'),
('20131217144222'),
('20140107135457'),
('20140121131601'),
('20140121134321'),
('20140325000000');

-- --------------------------------------------------------

--
-- Table structure for table `skills`
--

CREATE TABLE IF NOT EXISTS `skills` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `level` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `skills_rosters`
--

CREATE TABLE IF NOT EXISTS `skills_rosters` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `individual_id` int(11) DEFAULT NULL,
  `skill_id` int(11) DEFAULT NULL,
  `date_gained` date DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `skill_rosters`
--

CREATE TABLE IF NOT EXISTS `skill_rosters` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `individual_id` int(11) DEFAULT NULL,
  `skill_id` int(11) DEFAULT NULL,
  `date_gained` date DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `volunteers`
--

CREATE TABLE IF NOT EXISTS `volunteers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `email_address` varchar(255) DEFAULT NULL,
  `current_street_address` varchar(255) DEFAULT NULL,
  `current_city` varchar(255) DEFAULT NULL,
  `zip_code` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
