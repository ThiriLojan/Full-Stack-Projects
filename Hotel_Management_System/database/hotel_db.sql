-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 25, 2024 at 03:31 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hotel_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `checked`
--

CREATE TABLE `checked` (
  `id` int(30) NOT NULL,
  `ref_no` varchar(100) NOT NULL,
  `room_id` int(30) NOT NULL,
  `name` text NOT NULL,
  `contact_no` varchar(20) NOT NULL,
  `date_in` datetime NOT NULL,
  `date_out` datetime NOT NULL,
  `booked_cid` int(30) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0 COMMENT '0 = pending, 1=checked in , 2 = checked out',
  `date_updated` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `checked`
--

INSERT INTO `checked` (`id`, `ref_no`, `room_id`, `name`, `contact_no`, `date_in`, `date_out`, `booked_cid`, `status`, `date_updated`) VALUES
(11, '9986464106\n', 14, 'Thiri', '9787051542', '2024-07-09 00:00:00', '2025-07-09 00:00:00', 209, 1, '2024-07-25 19:00:22');

-- --------------------------------------------------------

--
-- Table structure for table `rooms`
--

CREATE TABLE `rooms` (
  `id` int(30) NOT NULL,
  `room` varchar(30) NOT NULL,
  `category_id` int(30) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0 COMMENT '0 = Available , 1= Unvailables'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `rooms`
--

INSERT INTO `rooms` (`id`, `room`, `category_id`, `status`) VALUES
(1, 'Room-101', 1, 1),
(2, 'Room-102', 1, 0),
(3, 'Room-103', 1, 0),
(4, 'Room-104', 1, 0),
(5, 'Room-201', 2, 0),
(6, 'Room-202', 2, 0),
(7, 'Room-203', 2, 0),
(8, 'Room-301', 3, 0),
(9, 'Room-302', 3, 0),
(10, 'Room-303', 3, 0),
(11, 'Room-401', 4, 0),
(12, 'Room-402', 4, 0),
(13, 'Suite', 5, 0),
(14, 'Cabana', 6, 0);

-- --------------------------------------------------------

--
-- Table structure for table `room_categories`
--

CREATE TABLE `room_categories` (
  `id` int(30) NOT NULL,
  `name` text NOT NULL,
  `price` float NOT NULL,
  `cover_img` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `room_categories`
--

INSERT INTO `room_categories` (`id`, `name`, `price`, `cover_img`) VALUES
(1, 'Single Room', 1746, '1600480680_2.jpg'),
(2, 'Twin Bed Room', 2476, '1600482780_3.jpg'),
(3, 'Family Room', 3964, '1721912820_vojtech-bruzek-Yrxr3bsPdS0-unsplash.jpg'),
(4, 'Deluxe Room', 4373, '1721913540_Deluxe.jpg'),
(5, 'Suite', 5878, '1721913600_Suite.jpg'),
(6, 'Cabana', 7218, '1721913660_Cabana.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `system_settings`
--

CREATE TABLE `system_settings` (
  `id` int(30) NOT NULL,
  `hotel_name` text NOT NULL,
  `email` varchar(200) NOT NULL,
  `contact` varchar(20) NOT NULL,
  `cover_img` text NOT NULL,
  `about_content` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `system_settings`
--

INSERT INTO `system_settings` (`id`, `hotel_name`, `email`, `contact`, `cover_img`, `about_content`) VALUES
(1, 'Luxe Getaways Retreats', 'luxegetawaysretreats@gmail.com', '+6948 8542 623', '1721908740_Home.jpg', '&lt;hr id=&quot;null&quot;&gt;&lt;h3 style=&quot;text-align: center;&quot;&gt;&lt;b style=&quot;text-align: center;&quot;&gt;Welcome to Luxe Getaways: Your Gateway to Luxury Escapes&lt;/b&gt;&lt;/h3&gt;&lt;hr id=&quot;null&quot;&gt;&lt;p&gt;&lt;span style=&quot;font-size:16px;&quot;&gt;At Luxe Getaways, we redefine luxury travel by offering a curated selection of the world&rsquo;s finest hotels and resorts. Our mission is to provide discerning travelers with unparalleled experiences, combining exceptional accommodations, personalized service, and unique cultural encounters.&lt;/span&gt;&lt;/p&gt;&lt;hr id=&quot;null&quot;&gt;&lt;h4 style=&quot;text-align: center;&quot;&gt;&lt;b style=&quot;text-align: center;&quot;&gt;Our Story&lt;/b&gt;&lt;/h4&gt;&lt;hr id=&quot;null&quot;&gt;&lt;p&gt;&lt;span style=&quot;font-size:16px;&quot;&gt;Founded with a passion for luxury travel and a commitment to excellence, Luxe Getaways connects travelers with exquisite destinations. Our team meticulously selects each property to ensure it meets our high standards of elegance, comfort, and exclusivity.&lt;/span&gt;&lt;/p&gt;&lt;hr id=&quot;null&quot;&gt;&lt;h4 style=&quot;text-align: center;&quot;&gt;&lt;b style=&quot;text-align: center;&quot;&gt;What We Offer&lt;/b&gt;&lt;/h4&gt;&lt;hr id=&quot;null&quot;&gt;&lt;p&gt;&lt;/p&gt;&lt;span style=&quot;font-size:16px;&quot;&gt;&lt;p style=&quot;font-size: 16px;&quot;&gt;&lt;b style=&quot;font-size: 16px;&quot;&gt;Handpicked Accommodations:&lt;/b&gt; From chic urban hotels to serene beachfront resorts, each property is chosen for its charm and exceptional service.&lt;/p&gt;&lt;p style=&quot;font-size: 16px;&quot;&gt;&lt;b style=&quot;font-size: 16px;&quot;&gt;Personalized Service:&lt;/b&gt; Our dedicated concierge team tailors your experience, from bespoke itineraries to exclusive reservations, ensuring every detail of your trip is perfect.&lt;/p&gt;&lt;p style=&quot;font-size: 16px;&quot;&gt;&lt;b style=&quot;font-size: 16px;&quot;&gt;Exclusive Offers:&lt;/b&gt; Enjoy complimentary upgrades, special amenities, and unique experiences with our exclusive deals and packages.&lt;/p&gt;&lt;p style=&quot;font-size: 16px;&quot;&gt;&lt;b style=&quot;font-size: 16px;&quot;&gt;Cultural Immersion:&lt;/b&gt; Discover new cultures with immersive experiences, from private tours to culinary adventures, designed to create meaningful connections and unforgettable memories.&lt;/p&gt;&lt;/span&gt;&lt;hr id=&quot;null&quot;&gt;&lt;p&gt;&lt;/p&gt;&lt;h4 style=&quot;text-align: center;&quot;&gt;&lt;b style=&quot;text-align: center;&quot;&gt;Our Commitment&lt;/b&gt;&lt;/h4&gt;&lt;hr id=&quot;null&quot;&gt;&lt;p&gt;&lt;/p&gt;&lt;span style=&quot;font-size:16px;&quot;&gt;&lt;p style=&quot;font-size: 16px;&quot;&gt;We are committed to sustainability and responsible travel, working with eco-friendly properties and supporting initiatives that promote environmental conservation and community development.&lt;/p&gt;&lt;p style=&quot;text-align: center; font-size: 16px;&quot;&gt;&lt;b style=&quot;text-align: center; font-size: 16px;&quot;&gt;Join Us on a Journey of Luxury and Discovery&lt;/b&gt;&lt;/p&gt;&lt;p style=&quot;font-size: 16px;&quot;&gt;Discover the world with Luxe Getaways and experience the pinnacle of luxury travel. Whether seeking a serene retreat, adventurous escape, or cultural exploration, we craft the perfect getaway tailored just for you.&lt;/p&gt;&lt;/span&gt;&lt;p&gt;&lt;/p&gt;&lt;p&gt;&lt;/p&gt;');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(30) NOT NULL,
  `name` varchar(200) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(200) NOT NULL,
  `type` tinyint(1) NOT NULL DEFAULT 2 COMMENT '1=admin , 2 = staff'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `username`, `password`, `type`) VALUES
(1, 'Administrator', 'admin', 'admin', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `checked`
--
ALTER TABLE `checked`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rooms`
--
ALTER TABLE `rooms`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `room_categories`
--
ALTER TABLE `room_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `system_settings`
--
ALTER TABLE `system_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `checked`
--
ALTER TABLE `checked`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `rooms`
--
ALTER TABLE `rooms`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `room_categories`
--
ALTER TABLE `room_categories`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `system_settings`
--
ALTER TABLE `system_settings`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
