-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Apr 08, 2025 at 03:25 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mlm2`
--

-- --------------------------------------------------------

--
-- Table structure for table `activation`
--

CREATE TABLE `activation` (
  `id` int(11) NOT NULL,
  `userid` varchar(100) NOT NULL,
  `package` varchar(100) NOT NULL,
  `transaction` varchar(100) NOT NULL,
  `status` enum('open','close') NOT NULL DEFAULT 'open'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `userid` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `userid`, `password`) VALUES
(1, 'amarj234', '1234');

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(11) NOT NULL,
  `uid` varchar(110) NOT NULL,
  `pid` varchar(110) NOT NULL,
  `quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `color`
--

CREATE TABLE `color` (
  `id` int(10) NOT NULL,
  `bg` varchar(50) NOT NULL DEFAULT '#ffff'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `comment_id` int(11) NOT NULL,
  `userid` varchar(50) NOT NULL,
  `notif` varchar(500) NOT NULL,
  `status` enum('0','1') NOT NULL DEFAULT '1',
  `style` enum('bold','normal') NOT NULL DEFAULT 'bold'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`comment_id`, `userid`, `notif`, `status`, `style`) VALUES
(1, 'admin', 'new user trying to login mobile number8317008979', '1', 'bold'),
(2, 'admin', 'new user trying to login mobile number8317008979', '1', 'bold'),
(3, 'admin', 'New user Joined under mlm having id AKSH918320', '1', 'bold'),
(4, 'AKSH918320', 'Thank you for Registering to Our company', '1', 'bold'),
(5, 'AKSH918320', 'User-id:AKSH918320&nbsp&nbsppassword1234', '1', 'bold'),
(6, 'mlm', 'AKSH918320 have registered by your account on &nbsp07-04-2025', '1', 'bold'),
(7, 'AKSH918320', 'Taken&nbspright&nbspof&nbspmlm&nbspwith package of&nbsp 999', '1', 'bold'),
(8, 'admin', 'New user Joined under mlm having id AKSH612033', '1', 'bold'),
(9, 'AKSH612033', 'Thank you for Registering to Our company', '1', 'bold'),
(10, 'AKSH612033', 'User-id:AKSH612033&nbsp&nbsppasswordtest', '1', 'bold'),
(11, 'mlm', 'AKSH612033 have registered by your account on &nbsp07-04-2025', '1', 'bold'),
(12, 'AKSH612033', 'Taken&nbspleft&nbspof&nbspmlm&nbspwith package of&nbsp 999', '1', 'bold'),
(13, 'admin', 'New user Joined under mlm having id AKSH382980', '1', 'bold'),
(14, 'AKSH382980', 'Thank you for Registering to Our company', '1', 'bold'),
(15, 'AKSH382980', 'User-id:AKSH382980&nbsp&nbsppassword1234', '1', 'bold'),
(16, 'mlm', 'AKSH382980 have registered by your account on &nbsp07-04-2025', '1', 'bold'),
(17, 'AKSH382980', 'Taken&nbspright&nbspof&nbspmlm&nbspwith package of&nbsp 999', '1', 'bold'),
(18, 'admin', 'New user Joined under AKSH918320 having id AKSH252361', '1', 'bold'),
(19, 'AKSH252361', 'Thank you for Registering to Our company', '1', 'bold'),
(20, 'AKSH252361', 'User-id:AKSH252361&nbsp&nbsppassword12345', '1', 'bold'),
(21, 'mlm', 'AKSH252361 have registered by your account on &nbsp07-04-2025', '1', 'bold'),
(22, 'AKSH252361', 'Taken&nbspright&nbspof&nbspAKSH918320&nbspwith package of&nbsp 999', '1', 'bold'),
(23, 'admin', 'New user Joined under AKSH918320 having id AKSH854180', '1', 'bold'),
(24, 'AKSH854180', 'Thank you for Registering to Our company', '1', 'bold'),
(25, 'AKSH854180', 'User-id:AKSH854180&nbsp&nbsppassword1234', '1', 'bold'),
(26, 'mlm', 'AKSH854180 have registered by your account on &nbsp07-04-2025', '1', 'bold'),
(27, 'AKSH854180', 'Taken&nbspleft&nbspof&nbspAKSH918320&nbspwith package of&nbsp 999', '1', 'bold');

-- --------------------------------------------------------

--
-- Table structure for table `companyfunds`
--

CREATE TABLE `companyfunds` (
  `id` int(11) NOT NULL,
  `userid` varchar(200) DEFAULT NULL,
  `amount` varchar(100) NOT NULL DEFAULT '0',
  `count` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `companyfunds`
--

INSERT INTO `companyfunds` (`id`, `userid`, `amount`, `count`) VALUES
(1, 'AKSH918320', '0', 0),
(2, 'AKSH612033', '0', 0),
(3, 'AKSH382980', '0', 0),
(4, 'AKSH252361', '0', 0),
(5, 'AKSH854180', '0', 0);

-- --------------------------------------------------------

--
-- Table structure for table `files`
--

CREATE TABLE `files` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `size` int(11) NOT NULL,
  `downloads` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `imgdocs`
--

CREATE TABLE `imgdocs` (
  `id` int(11) NOT NULL,
  `userid` varchar(100) NOT NULL,
  `docs` varchar(100) DEFAULT '0',
  `pdocs` varchar(50) NOT NULL DEFAULT '0',
  `image_url` varchar(255) NOT NULL,
  `pimage_url` varchar(255) NOT NULL,
  `chk` varchar(50) NOT NULL DEFAULT 'unchecked',
  `status` varchar(100) NOT NULL DEFAULT 'Pending'
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `imgdocs`
--

INSERT INTO `imgdocs` (`id`, `userid`, `docs`, `pdocs`, `image_url`, `pimage_url`, `chk`, `status`) VALUES
(1, 'AKSH918320', '0', '0', 'kycimages/vector-id-front.png', 'kycimages/vector-id-front.png', 'unchecked', 'Pending'),
(2, 'AKSH612033', '0', '0', 'kycimages/vector-id-front.png', 'kycimages/vector-id-front.png', 'unchecked', 'Pending'),
(3, 'AKSH382980', '0', '0', 'kycimages/vector-id-front.png', 'kycimages/vector-id-front.png', 'unchecked', 'Pending'),
(4, 'AKSH252361', '0', '0', 'kycimages/vector-id-front.png', 'kycimages/vector-id-front.png', 'unchecked', 'Pending'),
(5, 'AKSH854180', '0', '0', 'kycimages/vector-id-front.png', 'kycimages/vector-id-front.png', 'unchecked', 'Pending');

-- --------------------------------------------------------

--
-- Table structure for table `income`
--

CREATE TABLE `income` (
  `id` int(11) NOT NULL,
  `userid` varchar(50) DEFAULT NULL,
  `day_bal` int(11) DEFAULT 0,
  `current_bal` int(11) DEFAULT 0,
  `total_bal` int(11) DEFAULT 0,
  `tds` int(110) NOT NULL DEFAULT 0,
  `received` int(110) NOT NULL DEFAULT 0,
  `transaction` int(11) NOT NULL DEFAULT 0,
  `bv` int(11) NOT NULL DEFAULT 0,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `counts` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `income`
--

INSERT INTO `income` (`id`, `userid`, `day_bal`, `current_bal`, `total_bal`, `tds`, `received`, `transaction`, `bv`, `date`, `counts`) VALUES
(1, 'AKSH918320', 0, 0, 0, 0, 0, 0, 0, '2025-04-07 09:55:49', 0),
(2, 'AKSH612033', 0, 0, 0, 0, 0, 0, 0, '2025-04-07 09:56:42', 0),
(3, 'AKSH382980', 0, 0, 0, 0, 0, 0, 0, '2025-04-07 13:00:28', 0),
(4, 'AKSH252361', 0, 0, 0, 0, 0, 0, 0, '2025-04-07 13:03:26', 0),
(5, 'AKSH854180', 0, 0, 0, 0, 0, 0, 0, '2025-04-07 13:08:32', 0),
(6, 'mlm234', 2100, 1200, 3300, 10, 1500, 200, 2, '2025-04-08 06:20:04', 2);

-- --------------------------------------------------------

--
-- Table structure for table `income_received`
--

CREATE TABLE `income_received` (
  `id` int(11) NOT NULL,
  `userid` varchar(100) NOT NULL,
  `amount` int(11) NOT NULL,
  `tds` int(50) NOT NULL DEFAULT 0,
  `received` int(50) NOT NULL DEFAULT 0,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `links`
--

CREATE TABLE `links` (
  `id` int(11) NOT NULL,
  `link` varchar(255) NOT NULL,
  `status` enum('yes','no') NOT NULL DEFAULT 'yes',
  `userid` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `uid` varchar(100) DEFAULT NULL,
  `pid` varchar(110) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `oplace` text DEFAULT NULL,
  `mobile` varchar(15) DEFAULT NULL,
  `dstatus` varchar(10) NOT NULL DEFAULT 'cart',
  `odate` varchar(100) DEFAULT NULL,
  `ddate` date DEFAULT NULL,
  `delivery` varchar(30) DEFAULT NULL,
  `oid` int(11) DEFAULT NULL,
  `estimate` int(11) NOT NULL DEFAULT 0,
  `pname` varchar(100) DEFAULT NULL,
  `brand` varchar(100) DEFAULT NULL,
  `netamt` int(11) DEFAULT NULL,
  `pic` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pin_list`
--

CREATE TABLE `pin_list` (
  `id` int(11) NOT NULL,
  `userid` varchar(50) NOT NULL,
  `pin` int(11) NOT NULL,
  `status` enum('open','close') NOT NULL DEFAULT 'open'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pin_request`
--

CREATE TABLE `pin_request` (
  `id` int(11) NOT NULL,
  `email` varchar(50) NOT NULL,
  `img` varchar(200) DEFAULT NULL,
  `amount` int(11) NOT NULL,
  `date` date NOT NULL,
  `status` enum('open','close') NOT NULL DEFAULT 'open'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `plans`
--

CREATE TABLE `plans` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `service_id` int(11) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `plans`
--

INSERT INTO `plans` (`id`, `product_id`, `service_id`, `status`) VALUES
(1, 1, 1, 1),
(2, 2, 2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `pName` varchar(100) NOT NULL,
  `color` varchar(50) DEFAULT NULL,
  `price` int(11) NOT NULL,
  `piece` int(11) NOT NULL,
  `description` text NOT NULL,
  `available` int(11) NOT NULL,
  `category` varchar(100) NOT NULL,
  `bv` int(11) NOT NULL DEFAULT 0,
  `gst` int(11) NOT NULL DEFAULT 0,
  `igst` int(11) NOT NULL DEFAULT 0,
  `type` varchar(100) NOT NULL,
  `item` varchar(100) NOT NULL,
  `pCode` varchar(20) NOT NULL,
  `picture` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `pName`, `color`, `price`, `piece`, `description`, `available`, `category`, `bv`, `gst`, `igst`, `type`, `item`, `pCode`, `picture`) VALUES
(1, 'Grocery Product', 'red', 300, 10, 'Want to continue where we left off on network marketing or are you trying to start something new? Let me know how I can help — whether it\'s writing, coding, planning, or explaining something!', 2, 'trbtb', 0, 0, 0, 'grocery', '3', '252', 'userdash/products/p1.jpg'),
(2, 'Marketing Project', 'red', 1100, 10, 'This website uses cookies to enhance user experience and to analyze performance and traffic on our website. We also share information about your use of our site with our social media, advertising and analytics partners.', 2, 'any', 0, 0, 0, '', '5', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `service`
--

CREATE TABLE `service` (
  `id` int(11) NOT NULL,
  `service_name` varchar(500) NOT NULL,
  `price` double NOT NULL,
  `description` text NOT NULL,
  `image` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `service`
--

INSERT INTO `service` (`id`, `service_name`, `price`, `description`, `image`) VALUES
(1, 'Golden plan', 999, 'A networking plan is a structured document or strategy that outlines how different components in a system or organization will communicate over a network. It defines how devices, servers, services, or containers will connect, interact, and remain secure and scalable.', 'userdash/dimages/user-img-background.jpg'),
(2, 'Platinm Plan', 1999, 'Objective: Design a private VPC network for Node.js backend APIs with isolated services (MongoDB, Redis, etc.) and expose only a public NGINX ingress.\r\n\r\nPlan Highlights:\r\n\r\nBackend API (Node.js) only accessible within private subnet\r\n\r\nMongoDB & Redis in separate subnet with no direct public access\r\n\r\nAPI Gateway exposes /api/* routes via HTTPS\r\n\r\nTLS termination at load balancer\r\n\r\nDNS managed via Route53\r\n\r\nPrometheus runs inside VPC, scrapes metrics over internal network\r\n\r\nTerraform used to provision infrastructure', 'userdash/dimages/user-img-background.jpg'),
(3, 'Silver', 499, 'Agora Fastboard SDK is the latest generation of the whiteboard SDK launched by Agora to help developers quickly build whiteboard applications. It simplifies the APIs of the Whiteboard SDK and adds UI implementations. These improvements enable you to join a room with just a few lines of code and instantly experience real-time interactive collaboration using a variety of rich editing tools.', 'userdash/dimages/user-img-background.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `transaction`
--

CREATE TABLE `transaction` (
  `id` int(11) NOT NULL,
  `userid` varchar(100) NOT NULL,
  `amount` int(11) NOT NULL,
  `transaction` varchar(100) NOT NULL,
  `image` varchar(100) NOT NULL,
  `status` enum('open','close') NOT NULL DEFAULT 'open'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tree`
--

CREATE TABLE `tree` (
  `id` int(11) NOT NULL,
  `userid` varchar(50) DEFAULT NULL,
  `left` varchar(50) DEFAULT NULL,
  `center` varchar(50) DEFAULT NULL,
  `right` varchar(50) DEFAULT NULL,
  `leftcount` int(11) DEFAULT 0,
  `centercount` int(100) NOT NULL DEFAULT 0,
  `rightcount` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tree`
--

INSERT INTO `tree` (`id`, `userid`, `left`, `center`, `right`, `leftcount`, `centercount`, `rightcount`) VALUES
(1, 'AKSH918320', 'AKSH854180', NULL, 'AKSH252361', 0, 0, 0),
(2, 'AKSH612033', NULL, NULL, NULL, 0, 0, 0),
(3, 'AKSH382980', NULL, NULL, NULL, 0, 0, 0),
(4, 'AKSH252361', NULL, NULL, NULL, 0, 0, 0),
(5, 'AKSH854180', NULL, NULL, NULL, 0, 0, 0),
(6, 'mlm', 'AKSH382980', NULL, 'AKSH612033', 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `emailid` varchar(200) DEFAULT NULL,
  `password` varchar(30) NOT NULL,
  `status` enum('active','inactive') NOT NULL DEFAULT 'inactive',
  `mobile` varchar(12) NOT NULL,
  `address` text NOT NULL,
  `date` varchar(50) NOT NULL,
  `b_name` varchar(250) DEFAULT NULL,
  `b_pname` varchar(100) DEFAULT NULL,
  `account` varchar(20) DEFAULT NULL,
  `b_aname` varchar(100) DEFAULT NULL,
  `ifsc` varchar(100) DEFAULT NULL,
  `under_userid` varchar(50) NOT NULL,
  `package` int(50) DEFAULT NULL,
  `side` enum('left','right','center') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `name`, `email`, `emailid`, `password`, `status`, `mobile`, `address`, `date`, `b_name`, `b_pname`, `account`, `b_aname`, `ifsc`, `under_userid`, `package`, `side`) VALUES
(1, 'amarjeet', 'mlm234', 'amarjeet@xenett.com', '1234', 'active', '', '', '', 'fd', 'df', NULL, NULL, NULL, 'mlm234', 9999, 'center'),
(2, 'Amarjeet', 'AKSH918320', 'amarjeet234', '1234', 'inactive', '8317008979', 'tet', '07-04-2025', NULL, NULL, NULL, NULL, NULL, 'mlm234', 999, 'right'),
(3, 'Amarjeet234', 'AKSH612033', 'amarjeet234', 'test', 'inactive', '8317008979', 'tet', '07-04-2025', NULL, NULL, NULL, NULL, NULL, 'mlm234', 999, 'left'),
(4, 'Amarjeet', 'AKSH382980', 'maake@gm.vom', '1234', 'inactive', '8317008979', 'tests', '07-04-2025', NULL, NULL, NULL, NULL, NULL, 'mlm234', 999, 'right'),
(5, 'Amarjeet', 'AKSH252361', 'maake@gm.vom', '12345', 'inactive', '8317008979', 'tests', '07-04-2025', NULL, NULL, NULL, NULL, NULL, 'AKSH918320', 999, 'right'),
(6, 'tesrt', 'AKSH854180', 'amarjeet234', '1234', 'inactive', '8317008979', 'tests', '07-04-2025', NULL, NULL, NULL, NULL, NULL, 'AKSH918320', 999, 'left');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `activation`
--
ALTER TABLE `activation`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `color`
--
ALTER TABLE `color`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`comment_id`);

--
-- Indexes for table `companyfunds`
--
ALTER TABLE `companyfunds`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `files`
--
ALTER TABLE `files`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `imgdocs`
--
ALTER TABLE `imgdocs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `income`
--
ALTER TABLE `income`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `income_received`
--
ALTER TABLE `income_received`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `links`
--
ALTER TABLE `links`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pin_list`
--
ALTER TABLE `pin_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pin_request`
--
ALTER TABLE `pin_request`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `plans`
--
ALTER TABLE `plans`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `service`
--
ALTER TABLE `service`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transaction`
--
ALTER TABLE `transaction`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tree`
--
ALTER TABLE `tree`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `activation`
--
ALTER TABLE `activation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `color`
--
ALTER TABLE `color`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `comment_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `companyfunds`
--
ALTER TABLE `companyfunds`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `files`
--
ALTER TABLE `files`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `imgdocs`
--
ALTER TABLE `imgdocs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `income`
--
ALTER TABLE `income`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `income_received`
--
ALTER TABLE `income_received`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `links`
--
ALTER TABLE `links`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pin_list`
--
ALTER TABLE `pin_list`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pin_request`
--
ALTER TABLE `pin_request`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `plans`
--
ALTER TABLE `plans`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `service`
--
ALTER TABLE `service`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `transaction`
--
ALTER TABLE `transaction`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tree`
--
ALTER TABLE `tree`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
