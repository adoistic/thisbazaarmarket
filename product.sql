-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Jul 08, 2018 at 05:20 AM
-- Server version: 5.7.21
-- PHP Version: 5.6.35

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `thisbazaar`
--

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
CREATE TABLE IF NOT EXISTS `product` (
  `itemCode` int(100) NOT NULL,
  `itemName` varchar(50) NOT NULL,
  `itemAuthor` varchar(50) NOT NULL,
  `itemDesc` varchar(50) NOT NULL,
  `description` varchar(1000) NOT NULL,
  `rate` varchar(10) NOT NULL,
  PRIMARY KEY (`itemCode`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`itemCode`, `itemName`, `itemAuthor`, `itemDesc`, `description`, `rate`) VALUES
(1, 'Story of my life', 'Helen Keller', '@aa_biographies', 'Story: Hellen Killer dolor sit amet, consectetur adipiscing elit. Fusce tincidunt at elit at laoreet. Vivamus interdum lacinia purus, quis facilisis eros. Etiam libero est, volutpat vitae neque eget, suscipit euismod ligula. Aenean magna odio, aliquam a pharetra et, feugiat quis augue. Nunc sed metus metus. In hac habitasse platea dictumst. Mauris tincidunt, quam non auctor rutrum, nisl erat dignissim purus, ac tempus nisi tellus sed nibh. In ac auctor est. Nam dictum libero a neque maximus, pellentesque volutpat mauris tincidunt. Pellentesque mollis cursus ornare. Nulla facilisi. Pellentesque eu purus dui. Nunc sit amet accumsan erat, eget euismod urna. Praesent aliquet.', '100'),
(2, 'History of Jaipur', 'Jadunath Sarkar', '@aa_history', 'History:LJAdunath dolor sit amet, consectetur adipiscing elit. Fusce tincidunt at elit at laoreet. Vivamus interdum lacinia purus, quis facilisis eros. Etiam libero est, volutpat vitae neque eget, suscipit euismod ligula. Aenean magna odio, aliquam a pharetra et, feugiat quis augue. Nunc sed metus metus. In hac habitasse platea dictumst. Mauris tincidunt, quam non auctor rutrum, nisl erat dignissim purus, ac tempus nisi tellus sed nibh. In ac auctor est. Nam dictum libero a neque maximus, pellentesque volutpat mauris tincidunt. Pellentesque mollis cursus ornare. Nulla facilisi. Pellentesque eu purus dui. Nunc sit amet accumsan erat, eget euismod urna. Praesent aliquet.', '150'),
(3, 'A breif history of time', 'Sthephen Hawkings', '@aa_science', 'Breif History: hawkings dolor sit amet, consectetur adipiscing elit. Fusce tincidunt at elit at laoreet. Vivamus interdum lacinia purus, quis facilisis eros. Etiam libero est, volutpat vitae neque eget, suscipit euismod ligula. Aenean magna odio, aliquam a pharetra et, feugiat quis augue. Nunc sed metus metus. In hac habitasse platea dictumst. Mauris tincidunt, quam non auctor rutrum, nisl erat dignissim purus, ac tempus nisi tellus sed nibh. In ac auctor est. Nam dictum libero a neque maximus, pellentesque volutpat mauris tincidunt. Pellentesque mollis cursus ornare. Nulla facilisi. Pellentesque eu purus dui. Nunc sit amet accumsan erat, eget euismod urna. Praesent aliquet.', '175'),
(4, 'Stay Hungry, Stay Foolish', 'Rashmi Bansal', '@aa_economics', 'Stay Hungry: RashmiLorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce tincidunt at elit at laoreet. Vivamus interdum lacinia purus, quis facilisis eros. Etiam libero est, volutpat vitae neque eget, suscipit euismod ligula. Aenean magna odio, aliquam a pharetra et, feugiat quis augue. Nunc sed metus metus. In hac habitasse platea dictumst. Mauris tincidunt, quam non auctor rutrum, nisl erat dignissim purus, ac tempus nisi tellus sed nibh. In ac auctor est. Nam dictum libero a neque maximus, pellentesque volutpat mauris tincidunt. Pellentesque mollis cursus ornare. Nulla facilisi. Pellentesque eu purus dui. Nunc sit amet accumsan erat, eget euismod urna. Praesent aliquet.', '125'),
(5, 'the rule of law', 'Tom Bingham', '@aa_law', 'Rulke of law: TomLorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce tincidunt at elit at laoreet. Vivamus interdum lacinia purus, quis facilisis eros. Etiam libero est, volutpat vitae neque eget, suscipit euismod ligula. Aenean magna odio, aliquam a pharetra et, feugiat quis augue. Nunc sed metus metus. In hac habitasse platea dictumst. Mauris tincidunt, quam non auctor rutrum, nisl erat dignissim purus, ac tempus nisi tellus sed nibh. In ac auctor est. Nam dictum libero a neque maximus, pellentesque volutpat mauris tincidunt. Pellentesque mollis cursus ornare. Nulla facilisi. Pellentesque eu purus dui. Nunc sit amet accumsan erat, eget euismod urna. Praesent aliquet.', '75'),
(6, 'The power', 'Naomi Alderman', '@aa_scifiction', 'The power  Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce tincidunt at elit at laoreet. Vivamus interdum lacinia purus, quis facilisis eros. Etiam libero est, volutpat vitae neque eget, suscipit euismod ligula. Aenean magna odio, aliquam a pharetra et, feugiat quis augue. Nunc sed metus metus. In hac habitasse platea dictumst. Mauris tincidunt, quam non auctor rutrum, nisl erat dignissim purus, ac tempus nisi tellus sed nibh. In ac auctor est. Nam dictum libero a neque maximus, pellentesque volutpat mauris tincidunt. Pellentesque mollis cursus ornare. Nulla facilisi. Pellentesque eu purus dui. Nunc sit amet accumsan erat, eget euismod urna. Praesent aliquet.', '110'),
(7, 'Chalk', 'Paul Cornell', '@aa_horror', 'CHalk Paul Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce tincidunt at elit at laoreet. Vivamus interdum lacinia purus, quis facilisis eros. Etiam libero est, volutpat vitae neque eget, suscipit euismod ligula. Aenean magna odio, aliquam a pharetra et, feugiat quis augue. Nunc sed metus metus. In hac habitasse platea dictumst. Mauris tincidunt, quam non auctor rutrum, nisl erat dignissim purus, ac tempus nisi tellus sed nibh. In ac auctor est. Nam dictum libero a neque maximus, pellentesque volutpat mauris tincidunt. Pellentesque mollis cursus ornare. Nulla facilisi. Pellentesque eu purus dui. Nunc sit amet accumsan erat, eget euismod urna. Praesent aliquet.', '140'),
(8, 'The Matarese Circle', 'Robert Ludlum', '@aa_conspiracy', 'Matarese Robert Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce tincidunt at elit at laoreet. Vivamus interdum lacinia purus, quis facilisis eros. Etiam libero est, volutpat vitae neque eget, suscipit euismod ligula. Aenean magna odio, aliquam a pharetra et, feugiat quis augue. Nunc sed metus metus. In hac habitasse platea dictumst. Mauris tincidunt, quam non auctor rutrum, nisl erat dignissim purus, ac tempus nisi tellus sed nibh. In ac auctor est. Nam dictum libero a neque maximus, pellentesque volutpat mauris tincidunt. Pellentesque mollis cursus ornare. Nulla facilisi. Pellentesque eu purus dui. Nunc sit amet accumsan erat, eget euismod urna. Praesent aliquet.', '199'),
(9, 'Kane and Abel', 'Jeffery Archer', '@aa_businessfic', 'Kane Archer Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce tincidunt at elit at laoreet. Vivamus interdum lacinia purus, quis facilisis eros. Etiam libero est, volutpat vitae neque eget, suscipit euismod ligula. Aenean magna odio, aliquam a pharetra et, feugiat quis augue. Nunc sed metus metus. In hac habitasse platea dictumst. Mauris tincidunt, quam non auctor rutrum, nisl erat dignissim purus, ac tempus nisi tellus sed nibh. In ac auctor est. Nam dictum libero a neque maximus, pellentesque volutpat mauris tincidunt. Pellentesque mollis cursus ornare. Nulla facilisi. Pellentesque eu purus dui. Nunc sit amet accumsan erat, eget euismod urna. Praesent aliquet.', '199'),
(11, '2 States', 'Chetan Bhagat', '@aa_romance', 'States 2 Chetan Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce tincidunt at elit at laoreet. Vivamus interdum lacinia purus, quis facilisis eros. Etiam libero est, volutpat vitae neque eget, suscipit euismod ligula. Aenean magna odio, aliquam a pharetra et, feugiat quis augue. Nunc sed metus metus. In hac habitasse platea dictumst. Mauris tincidunt, quam non auctor rutrum, nisl erat dignissim purus, ac tempus nisi tellus sed nibh. In ac auctor est. Nam dictum libero a neque maximus, pellentesque volutpat mauris tincidunt. Pellentesque mollis cursus ornare. Nulla facilisi. Pellentesque eu purus dui. Nunc sit amet accumsan erat, eget euismod urna. Praesent aliquet.', '100'),
(15, 'Keepers of Kalchakra', 'Ashwin Sanghi', '', 'Keekeprs Ashwin Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce tincidunt at elit at laoreet. Vivamus interdum lacinia purus, quis facilisis eros. Etiam libero est, volutpat vitae neque eget, suscipit euismod ligula. Aenean magna odio, aliquam a pharetra et, feugiat quis augue. Nunc sed metus metus. In hac habitasse platea dictumst. Mauris tincidunt, quam non auctor rutrum, nisl erat dignissim purus, ac tempus nisi tellus sed nibh. In ac auctor est. Nam dictum libero a neque maximus, pellentesque volutpat mauris tincidunt. Pellentesque mollis cursus ornare. Nulla facilisi. Pellentesque eu purus dui. Nunc sit amet accumsan erat, eget euismod urna. Praesent aliquet.', '100');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
