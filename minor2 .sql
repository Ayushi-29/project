-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 02, 2019 at 07:45 AM
-- Server version: 10.1.40-MariaDB
-- PHP Version: 7.3.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `minor2`
--

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `product_id` int(200) NOT NULL,
  `product_name` varchar(200) NOT NULL,
  `product_mode` varchar(50) NOT NULL,
  `product_image` varchar(200) NOT NULL,
  `product_description` text NOT NULL,
  `product_time` varchar(30) NOT NULL,
  `product_owner_id` int(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`product_id`, `product_name`, `product_mode`, `product_image`, `product_description`, `product_time`, `product_owner_id`) VALUES
(2, 'R.D Sharma Maths Book', 'Sale', 'product3.jfif', 'This is R.D.  Sharma 5th edition book  for class 10th .\r\ni want to sell this book for Rs.250.', '23-09-19', 3),
(3, 'Paper Clip', 'Donate', 'product1.jpg', 'I want to donate this paper clip .\r\nif anyone wants it please contact me ASAP.\r\nI bought this clip 5 months earlier. \r\nIt is still  in very good Condition', '23-09-19', 3),
(4, 'Marker Pen', 'Sale', 'product4.jfif', 'This is black marker Pen. \r\niw bought this pen recently and now i dont want it .\r\nI want to exchange this marker pen in exchange of a yellow high lighter.\r\nif anyone has a yellow highligher pen then please contact me .\r\nThank You', '23-09-19', 3),
(5, 'Paper Pins', 'Donate', 'product2.jpg', 'This is a packet full of Paper Pins.\r\nThis box contains almost 100 pieces of paper pins.\r\nI want to donate this box .IF anyone wants this box, then please contact me ASAP.', '23-09-19', 3);

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `review_id` int(200) NOT NULL,
  `review_body` text NOT NULL,
  `review_date` text NOT NULL,
  `review_owner_id` int(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `reviews`
--

INSERT INTO `reviews` (`review_id`, `review_body`, `review_date`, `review_owner_id`) VALUES
(3, 'I like this platform coz it helps me to fulfill my needs that i encounter during my academic years.Thank You for providing this platform. ', '25-09-19', 5),
(8, 'Thank you for providing this platform . ', '25-09-19', 3);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(100) NOT NULL,
  `user_name` varchar(100) NOT NULL,
  `user_email` varchar(100) NOT NULL,
  `user_password` varchar(100) NOT NULL,
  `user_phone` decimal(10,0) NOT NULL,
  `user_institute` varchar(200) NOT NULL,
  `user_place` varchar(200) NOT NULL,
  `user_gender` varchar(10) NOT NULL,
  `user_profile_picture` varchar(200) NOT NULL DEFAULT 'user.png'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `user_name`, `user_email`, `user_password`, `user_phone`, `user_institute`, `user_place`, `user_gender`, `user_profile_picture`) VALUES
(3, 'hitesh pant', 'panthitesh6410@gmail.com', 'password', '8989430080', 'H.C.E.T', 'jabalpur', 'male', 'IMG_20170702_142643.jpg'),
(5, 'user', 'user@gmail.com', 'user', '1234567890', 'U.I.T', 'user chowk', 'male', 'user.png'),
(6, 'amit', 'kuraria.amit@gmail.com', 'hcet123', '8989125425', 'hcet', 'vijay nagar', 'male', 'user.png');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`review_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `product_id` int(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `review_id` int(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
