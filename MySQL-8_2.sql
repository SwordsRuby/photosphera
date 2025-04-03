-- phpMyAdmin SQL Dump
-- version 5.2.2
-- https://www.phpmyadmin.net/
--
-- Host: MySQL-8.2
-- Generation Time: Apr 03, 2025 at 08:59 PM
-- Server version: 8.2.0
-- PHP Version: 8.2.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `photospheraDB`
--
CREATE DATABASE IF NOT EXISTS `photospheraDB` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci;
USE `photospheraDB`;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `categories_id` int NOT NULL,
  `categories_name` varchar(100) NOT NULL,
  `categories_img` varchar(10000) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`categories_id`, `categories_name`, `categories_img`) VALUES
(1, 'Аниме', 'https://www.sibrowser.ru/packages/20308/logo.webp'),
(2, 'Животные', 'https://animaljournal.ru/articles/wild/cat/puma/puma_jivotnoe_hishnik.jpg'),
(3, 'Природа', 'https://media.istockphoto.com/id/517188688/ru/%D1%84%D0%BE%D1%82%D0%BE/%D0%B3%D0%BE%D1%80%D0%BD%D1%8B%D0%B9-%D0%BB%D0%B0%D0%BD%D0%B4%D1%88%D0%B0%D1%84%D1%82.jpg?s=1024x1024&w=0&k=20&c=TqKo4rS3By8VfXQlepFRtpjWGdzs6x0DSXkTIBXi_zc='),
(4, 'Архитектура', 'https://cdn-ec-static.garagemca.org/storage/event/2/2/2223/cover_cover_image-4a29f772-067c-4cea-bdc8-a19d3afd8638.jpg'),
(5, 'Мода', 'https://avatars.dzeninfra.ru/get-zen_doc/1328466/pub_64d7aa44f5e7796d23868278_64d7aa86b761d411a5328ec1/scale_1200'),
(6, 'Одежда', 'https://cdn.laredoute.com/blogs/images/12/54dbede5aa448.webp'),
(7, 'Еда', 'https://storage.yandexcloud.net/incrussia-prod/wp-content/uploads/2018/10/iStock-694189032.jpg'),
(8, 'Техника', 'https://api.cabinet.smart-market.uz/uploads/images/ff80818106932ccfaaa67cb8'),
(9, 'Музыка', 'https://ns-static.s3.us-east-va.perf.cloud.ovh.us/img/categories/styles/classical-music_1600x900.jpg'),
(10, 'Красота', 'https://stakan4ik.ru/images/news/news_20200301240507288.jpg'),
(11, 'Машины', 'https://kolesa-uploads.ru/-/cf368831-178b-460c-ba31-3dbd35d0e1ee/bmw-3-series-front1-mini.jpg'),
(12, 'Напитки', 'https://www.oum.ru/upload/iblock/a9e/a9ef0b57ccbfbcd592bab30333c1c6f8.jpg'),
(13, 'Домашние животные', 'https://poc.care/media/public/articles/title_images/pets_and_mental_health.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `images`
--

CREATE TABLE `images` (
  `images_id` int NOT NULL,
  `images_img` varchar(5000) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `images_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `images_category` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `likes`
--

CREATE TABLE `likes` (
  `likes_user_id` int NOT NULL,
  `likes_images_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tags`
--

CREATE TABLE `tags` (
  `tags_id` int NOT NULL,
  `tags_title` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tags_images`
--

CREATE TABLE `tags_images` (
  `tags_id` int NOT NULL,
  `img_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int NOT NULL,
  `user_login` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `user_password` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `user_img` varchar(5000) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `user_stat` tinyint(1) NOT NULL,
  `user_ban` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `user_login`, `user_password`, `user_img`, `user_stat`, `user_ban`) VALUES
(26, 'Нервная ромашка', '$2y$10$.aLV65SzRxhTVeFE0p902.zkg85HZMqDt2JNYox.gIdXINyWdX4eG', '/img/users/defaullt-user-icon.png', 0, 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`categories_id`);

--
-- Indexes for table `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`images_id`);

--
-- Indexes for table `likes`
--
ALTER TABLE `likes`
  ADD PRIMARY KEY (`likes_user_id`,`likes_images_id`);

--
-- Indexes for table `tags_images`
--
ALTER TABLE `tags_images`
  ADD PRIMARY KEY (`tags_id`,`img_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `categories_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `images`
--
ALTER TABLE `images`
  MODIFY `images_id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
