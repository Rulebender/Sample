-- phpMyAdmin SQL Dump
-- version 2.11.6
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jul 18, 2016 at 02:50 PM
-- Server version: 5.0.51
-- PHP Version: 5.2.6

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `household`
--

-- --------------------------------------------------------

--
-- Table structure for table `apartment`
--

CREATE TABLE `apartment` (
  `id` int(10) NOT NULL auto_increment,
  `acct_id` varchar(10) NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `rent` decimal(7,2) NOT NULL,
  `room` varchar(10) NOT NULL,
  `amount_paid` decimal(7,2) NOT NULL,
  `date_paid` date NOT NULL,
  `covered_from` date NOT NULL,
  `covered_to` date NOT NULL,
  `date_created` datetime NOT NULL,
  `balance` decimal(7,2) NOT NULL,
  `or_no` varchar(20) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=53 ;

--
-- Dumping data for table `apartment`
--

INSERT INTO `apartment` (`id`, `acct_id`, `firstname`, `lastname`, `rent`, `room`, `amount_paid`, `date_paid`, `covered_from`, `covered_to`, `date_created`, `balance`, `or_no`) VALUES
(1, 'zo9vol', 'Annabelle', 'Laurente', '7000.00', '215-A', '14000.00', '2016-02-21', '2015-11-01', '2015-12-01', '2016-03-04 14:35:31', '0.00', ''),
(2, '1cfikp', 'Boojin', 'Gamboa', '8000.00', '203-A', '8000.00', '2016-01-22', '2015-12-01', '2015-12-01', '2016-03-04 14:40:49', '0.00', ''),
(3, '1cfikp', 'Boojin', 'Gamboa', '8000.00', '203-A', '8000.00', '2016-02-21', '2016-01-01', '2016-01-01', '2016-03-04 14:40:58', '0.00', ''),
(4, '2cq5f6', 'John', 'Ambros', '8000.00', '203-B', '8000.00', '2016-01-28', '2016-01-01', '2016-01-01', '2016-03-04 14:44:33', '0.00', ''),
(5, '2cq5f6', 'John', 'Ambros', '8000.00', '203-B', '8000.00', '2016-02-25', '2016-02-01', '2016-02-01', '2016-03-04 14:44:40', '0.00', ''),
(6, 'w7e0zi', 'Mila', 'Arellano', '6000.00', '203-B', '6000.00', '2016-01-22', '2015-10-01', '2015-10-01', '2016-03-04 14:46:57', '0.00', ''),
(7, 'w7e0zi', 'Mila', 'Arellano', '6000.00', '203-B', '3000.00', '2016-02-14', '2015-11-01', '2015-11-01', '2016-03-04 14:48:02', '3000.00', ''),
(8, 'c5300m', 'Doris', 'Arellano', '8000.00', '215-E', '8000.00', '2016-01-26', '2015-12-01', '2015-12-01', '2016-03-04 14:53:00', '0.00', ''),
(9, 'c5300m', 'Doris', 'Arellano', '8000.00', '215-E', '8000.00', '2016-02-24', '2016-01-01', '2016-01-01', '2016-03-04 14:53:49', '0.00', ''),
(10, 'sautd3', 'Fe', 'Nisperos', '5000.00', '203-E', '5000.00', '2016-01-22', '2015-12-01', '2015-12-01', '2016-03-04 14:57:07', '0.00', ''),
(11, 'sautd3', 'Fe', 'Nisperos', '5000.00', '203-E', '5000.00', '2016-02-18', '2016-01-01', '2016-01-01', '2016-03-04 14:57:27', '0.00', ''),
(12, 'zhl5ya', 'Orville', 'Largo', '6480.00', '203-C', '19500.00', '2016-02-02', '2015-10-01', '2015-12-01', '2016-03-04 14:59:11', '0.00', ''),
(13, '5x5aox', 'Lerma', 'Morales', '6420.00', '215-C', '740.00', '2016-02-22', '2015-12-01', '2015-12-01', '2016-03-04 15:12:20', '5680.00', ''),
(14, 'e54fod', 'Bernadette', 'Fernando', '6420.00', '215-C', '740.00', '2016-02-22', '2015-12-01', '2015-12-01', '2016-03-04 15:12:20', '5680.00', ''),
(15, 'zrpwvv', 'Neneng', 'Herente', '1500.00', '215-A Ex.', '1500.00', '2016-03-10', '2015-11-01', '2015-11-01', '2016-03-13 23:34:31', '0.00', ''),
(16, '5x5aox', 'Lerma', 'Morales', '6420.00', '215-C', '5680.00', '2016-03-13', '2015-12-01', '2015-12-01', '2016-03-13 23:57:29', '0.00', ''),
(17, 'e54fod', 'Bernadette', 'Fernando', '6420.00', '215-B', '680.00', '2016-03-13', '2015-12-01', '2015-12-01', '2016-03-13 23:58:23', '5000.00', ''),
(18, 'sautd3', 'Fe', 'Nisperos', '5000.00', '203-E', '5000.00', '2016-03-16', '2016-02-01', '2016-02-01', '2016-03-16 21:27:51', '0.00', ''),
(21, '2cq5f6', 'John', 'Ambros', '8000.00', '203-B', '8000.00', '2016-03-18', '2016-03-01', '2016-03-01', '2016-03-18 02:11:48', '0.00', ''),
(22, 'w7e0zi', 'Mila', 'Arellano', '6000.00', '215-F', '6000.00', '2016-03-18', '2015-12-01', '2015-12-01', '2016-03-18 07:40:40', '0.00', ''),
(23, 'c5300m', 'Doris', 'Arellano', '8000.00', '215-E', '8000.00', '2016-03-23', '2016-02-01', '2016-02-01', '2016-03-23 23:06:18', '0.00', ''),
(26, 'e54fod', 'Bernadette', 'Fernando', '6420.00', '215-B', '2500.00', '2016-03-23', '2016-01-01', '2016-01-01', '2016-03-23 23:16:14', '3920.00', ''),
(25, '5x5aox', 'Lerma', 'Morales', '6420.00', '215-C', '2500.00', '2016-03-23', '2016-01-01', '2016-01-01', '2016-03-23 23:08:49', '3920.00', ''),
(27, '33c6hh', 'Jun', 'Ty', '8000.00', '203-D', '24000.00', '2016-03-28', '2015-07-01', '2015-10-01', '2016-03-28 11:03:48', '2000.00', ''),
(28, 'pldt5u', 'Marinella', 'Dominguez', '6000.00', '215-G', '6000.00', '2016-02-19', '2016-01-01', '2016-01-01', '2016-03-31 21:21:55', '0.00', ''),
(29, '1cfikp', 'Boojin', 'Gamboa', '8000.00', '203-A', '16000.00', '2016-04-06', '2016-02-01', '2016-03-01', '2016-04-06 06:26:14', '0.00', ''),
(30, '5x5aox', 'Lerma', 'Morales', '6420.00', '215-C', '5000.00', '2016-04-16', '2016-01-01', '2016-02-01', '2016-04-19 23:51:47', '5340.00', ''),
(31, 'e54fod', 'Bernadette', 'Fernando', '6420.00', '215-B', '5000.00', '2016-04-16', '2016-01-01', '2016-02-01', '2016-04-19 23:52:17', '5340.00', ''),
(32, 'w7e0zi', 'Mila', 'Arellano', '6000.00', '215-F', '6000.00', '2016-04-21', '2016-01-01', '2016-01-01', '2016-04-22 09:27:27', '0.00', ''),
(33, 'sautd3', 'Fe', 'Nisperos', '5000.00', '203-E', '5000.00', '2016-04-21', '2016-03-01', '2016-03-01', '2016-04-22 09:27:54', '0.00', ''),
(34, 'zhl5ya', 'Orville', 'Largo', '6480.00', '203-C', '19500.00', '2016-04-22', '2016-01-01', '2016-03-01', '2016-04-22 09:30:23', '0.00', ''),
(37, 'c5300m', 'Doris', 'Arellano', '8000.00', '215-E', '8000.00', '2016-04-25', '2016-03-01', '2016-03-01', '2016-04-26 19:34:22', '0.00', ''),
(36, 'zrpwvv', 'Neneng', 'Herente', '1500.00', '215-A Ex.', '3000.00', '2016-04-25', '2015-12-01', '2016-01-01', '2016-04-26 19:31:48', '0.00', ''),
(38, '220qb3', 'Bernadette', 'Gavino', '6420.00', '215-D', '30000.00', '2016-04-26', '2015-06-01', '2015-10-01', '2016-04-26 22:55:09', '2100.00', ''),
(39, '2cq5f6', 'John', 'Ambros', '8000.00', '203-B', '8000.00', '2016-04-29', '2016-04-01', '2016-04-01', '2016-05-02 22:25:09', '0.00', ''),
(40, '5x5aox', 'Lerma', 'Morales', '6420.00', '215-C', '5340.00', '2016-05-02', '2016-02-01', '2016-02-01', '2016-05-02 22:45:14', '0.00', ''),
(41, 'e54fod', 'Bernadette', 'Fernando', '6420.00', '215-B', '5340.00', '2016-05-02', '2016-02-01', '2016-02-01', '2016-05-02 22:45:27', '0.00', ''),
(42, 'sautd3', 'Fe', 'Nisperos', '5000.00', '203-E', '5000.00', '2016-05-16', '2016-04-01', '2016-04-01', '2016-05-16 20:42:46', '0.00', ''),
(43, 'pldt5u', 'Marinella', 'Dominguez', '6000.00', '215-G', '6000.00', '2016-05-15', '2016-02-01', '2016-02-01', '2016-05-16 21:14:58', '0.00', ''),
(45, '1cfikp', 'Boojin', 'Gamboa', '8000.00', '203-A', '8000.00', '2016-05-21', '2016-04-01', '2016-04-01', '2016-05-23 21:25:24', '0.00', ''),
(46, '33c6hh', 'Jun', 'Ty', '8000.00', '203-D', '16000.00', '2016-05-30', '2015-10-01', '2015-12-01', '2016-06-02 00:04:18', '2000.00', ''),
(47, '5x5aox', 'Lerma', 'Morales', '6420.00', '215-C', '5000.00', '2016-05-30', '2016-03-01', '2016-03-01', '2016-06-02 00:05:45', '1420.00', ''),
(48, 'c5300m', 'Doris', 'Arellano', '8000.00', '215-E', '8000.00', '2016-05-30', '2016-04-01', '2016-04-01', '2016-06-02 00:07:16', '0.00', ''),
(49, 'w7e0zi', 'Mila', 'Arellano', '6000.00', '215-F', '6000.00', '2016-05-30', '2016-02-01', '2016-02-01', '2016-06-02 00:07:54', '0.00', ''),
(50, '220qb3', 'Bernadette', 'Gavino', '6420.00', '215-D', '6420.00', '2016-05-30', '2015-10-01', '2015-11-01', '2016-06-02 00:08:55', '2100.00', ''),
(51, '2cq5f6', 'John', 'Ambros', '8000.00', '203-B', '8000.00', '2016-06-01', '2016-05-01', '2016-05-01', '2016-06-02 00:09:27', '0.00', ''),
(52, 'e54fod', 'Bernadette', 'Fernando', '6420.00', '215-B', '5000.00', '2016-06-01', '2016-03-01', '2016-03-01', '2016-06-02 00:20:55', '1420.00', '');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) NOT NULL auto_increment,
  `acct_id` varchar(10) NOT NULL,
  `firstname` varchar(40) NOT NULL,
  `lastname` varchar(40) NOT NULL,
  `contact` varchar(30) NOT NULL,
  `email` varchar(50) NOT NULL,
  `authority` varchar(5) NOT NULL,
  `room` varchar(10) NOT NULL,
  `rent` decimal(7,2) NOT NULL,
  `status` varchar(10) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=16 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `acct_id`, `firstname`, `lastname`, `contact`, `email`, `authority`, `room`, `rent`, `status`) VALUES
(1, 'ghost', 'Matthew', 'Lopez', '551-53-69', 'megiddo42@yahoo.com', '3', '', '0.00', '1'),
(2, 'zo9vol', 'Annabelle', 'Laurente', '', '', '1', '215-A', '7000.00', '1'),
(3, '220qb3', 'Bernadette', 'Gavino', '', '', '1', '215-D', '6420.00', '1'),
(4, '1cfikp', 'Boojin', 'Gamboa', '', '', '1', '203-A', '8000.00', '1'),
(5, '5x5aox', 'Lerma', 'Morales', '0999-803-9446', '', '1', '215-C', '6420.00', '1'),
(6, 'e54fod', 'Bernadette', 'Fernando', '0999-803-9446', '', '1', '215-B', '6420.00', '1'),
(7, 'pldt5u', 'Marinella', 'Dominguez', '', '', '1', '215-G', '6000.00', '1'),
(8, '2cq5f6', 'John', 'Ambros', '', '', '1', '203-B', '8000.00', '1'),
(9, 'w7e0zi', 'Mila', 'Arellano', '', '', '1', '215-F', '6000.00', '1'),
(10, 'c5300m', 'Doris', 'Arellano', '0917-321-1657', '', '1', '215-E', '8000.00', '1'),
(11, 'sautd3', 'Fe', 'Nisperos', '', '', '1', '203-E', '5000.00', '1'),
(12, 'zrpwvv', 'Neneng', 'Herente', '', '', '1', '215-A Ex.', '1500.00', '1'),
(13, 'zhl5ya', 'Orville', 'Largo', '', '', '1', '203-C', '6480.00', '1'),
(14, '33c6hh', 'Jun', 'Ty', '0927-594-8001', '', '1', '203-D', '8000.00', '1'),
(15, 'guest', 'Guest', 'Guest', '', '', '2', '', '0.00', '1');
