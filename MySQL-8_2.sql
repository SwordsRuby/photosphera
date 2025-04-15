-- phpMyAdmin SQL Dump
-- version 5.2.2
-- https://www.phpmyadmin.net/
--
-- Host: MySQL-8.2
-- Generation Time: Apr 15, 2025 at 02:27 PM
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
(13, 'Домашние животные', 'https://poc.care/media/public/articles/title_images/pets_and_mental_health.jpg'),
(15, 'Романтика', '/img/categories/categories_67f7a481ec79367f7a481ec797.png'),
(16, 'Разум', '/img/categories/category_67f7b428bf6e767f7b428bf6ed.png'),
(17, 'Цветы', '/img/categories/category_67f7b4e36fa6267f7b4e36fa66.jpg'),
(18, 'Ужасы', 'https://ae01.alicdn.com/kf/S859e2c3d57e94b93acd354a12c41c681s.jpg'),
(19, 'Бессоница', 'https://burninghut.ru/wp-content/uploads/2023/12/CHto-takoe-bessonnica-i-kogda-ona-trebuet-lecheniya.jpg'),
(20, 'Космос', 'https://zenit-kmz.com/upload/resize_cache/iblock/ee3/1400_700_1/aq3t0ugrl0auvshpm9nosd8z5nluudy0.jpg'),
(21, 'Жизненное', 'https://positivelab.hse.ru/data/2019/06/20/1488854424/3photo-1490723286627-4b66e6b2882a.jpeg');

-- --------------------------------------------------------

--
-- Table structure for table `favorites`
--

CREATE TABLE `favorites` (
  `favorites_img_id` int NOT NULL,
  `favorites_user_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `favorites`
--

INSERT INTO `favorites` (`favorites_img_id`, `favorites_user_id`) VALUES
(48, 27),
(51, 58),
(52, 27),
(53, 26),
(53, 27),
(57, 29),
(60, 29),
(63, 26),
(63, 68),
(64, 68),
(74, 26);

-- --------------------------------------------------------

--
-- Table structure for table `images`
--

CREATE TABLE `images` (
  `images_id` int NOT NULL,
  `images_img` varchar(10000) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `images_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `images_category` int DEFAULT NULL,
  `images_author` int NOT NULL,
  `images_status` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `images`
--

INSERT INTO `images` (`images_id`, `images_img`, `images_name`, `images_category`, `images_author`, `images_status`) VALUES
(40, '/public/img/img_67f0424e1216b67f0424e1216f.png', 'Космос', 11, 27, 1),
(48, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTBkJigufyq00dk5hZq_acK0ix6Gq5LMj59Kg&s', 'Летающий дом', 10, 26, 1),
(51, 'https://avatars.mds.yandex.net/i?id=a29b5927c8d63f30f8a06566fd438700_l-5661150-images-thumbs&n=27&h=480&w=480', 'море', 8, 27, 1),
(52, 'https://standard.gdebirka.ru/pi/sign/500/21/p2093835.webp', 'смайлики', 10, 27, 1),
(53, 'https://cdn.fishki.net/upload/post/2021/02/16/3613183/2e037d6c10de68fc5fe87943b902b62d.jpg', 'love is...', 5, 26, 1),
(54, 'https://wot-lol.ru/uploads/posts/2017-03/1490208141_cu42bemn6eg.jpg', 'Картинки с умом', 1, 27, 1),
(57, 'https://static.tildacdn.com/tild3635-6462-4636-a561-396165383963/image.png', 'Котики', 2, 26, 1),
(60, '/public/img/img_67f7b138caaa667f7b138caaaa.png', 'Ницше про - разум', 10, 26, 1),
(61, '/public/img/img_67f7b1d4b06b667f7b1d4b06bb.jpg', 'О мыслях', 10, 29, 1),
(63, '/public/img/img_67f7b6382dbe867f7b6382dbeb.webp', 'sql what?', 16, 29, 1),
(64, 'https://timeweb.com/ru/community/article/df/dfa4add4e558e05e23a91e5d270c4fa2.png', 'PHP what?', 16, 29, 1),
(65, 'https://cvety-vanilla.ru/upload/dev2fun.imagecompress/webp/iblock/206/clgn8a85xfmphk0hkodezu4r343lyvy2.webp', 'розы', 17, 27, 1),
(66, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ4wYTE882tBiwFvWQcbZzwbvFj_-cjCOPGtQ&s', 'Пейте воду:)', 3, 27, 1),
(67, '/public/img/img_67f7b9e1b660f67f7b9e1b6612.png', 'Океан равнодушия', 16, 27, 1),
(68, 'https://media.istockphoto.com/id/1365094219/ru/%D1%84%D0%BE%D1%82%D0%BE/%D0%B8%D0%BD%D0%BE%D0%BF%D0%BB%D0%B0%D0%BD%D0%B5%D1%82%D0%BD%D0%BE%D0%B5-%D1%81%D1%83%D1%89%D0%B5%D1%81%D1%82%D0%B2%D0%BE-%D0%B2-%D0%BB%D0%B5%D1%81%D1%83.jpg?s=612x612&w=0&k=20&c=HjDDAqSv7psoENhUn2C0cODacHq4Xsgd-8QJe8NhuNE=', 'Зелёные человечки', 16, 29, 1),
(69, '/public/img/img_67fa0e19ee15067fa0e19ee152.webp', 'страшная картинка)', 18, 26, 1),
(70, '/public/img/img_67fa0e43f1d0567fa0e43f1d08.jpg', 'Фин и Джейк', 1, 26, 1),
(71, '/public/img/img_67fa0eda4068e67fa0eda4069f.webp', 'Жизненный путь', 16, 26, 1),
(72, '/public/img/img_67fa0efc8d2b567fa0efc8d2b7.jpg', 'небо', 10, 26, 1),
(73, '/public/img/img_67fa108f272f967fa108f272fd.jpg', 'Рассвет', 3, 27, 1),
(74, 'https://stihi.ru/pics/2018/11/02/3580.jpg', 'Путь', 21, 27, 1);

-- --------------------------------------------------------

--
-- Table structure for table `likes`
--

CREATE TABLE `likes` (
  `likes_user_id` int NOT NULL,
  `likes_images_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `likes`
--

INSERT INTO `likes` (`likes_user_id`, `likes_images_id`) VALUES
(26, 48),
(26, 52),
(26, 63),
(26, 72),
(26, 73),
(26, 74),
(27, 52),
(29, 51),
(29, 52),
(29, 57),
(29, 61),
(29, 65),
(58, 51),
(68, 57),
(68, 61),
(68, 63),
(68, 64),
(68, 66),
(68, 74);

-- --------------------------------------------------------

--
-- Table structure for table `tags`
--

CREATE TABLE `tags` (
  `tags_id` int NOT NULL,
  `tags_title` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `tags`
--

INSERT INTO `tags` (`tags_id`, `tags_title`) VALUES
(1, 'красота'),
(2, 'мода'),
(3, 'одежда'),
(4, 'машины'),
(5, 'напитки'),
(6, 'еда'),
(7, 'фастфуд'),
(8, 'языки'),
(9, 'компьютеры'),
(10, 'природа'),
(11, 'техника'),
(12, 'море'),
(13, 'аниме'),
(19, 'бесконечность'),
(20, 'религия'),
(21, 'новое'),
(22, 'тренд'),
(23, 'sql'),
(24, 'программирование'),
(25, 'стиль'),
(26, 'утро'),
(27, 'день'),
(28, 'вечер');

-- --------------------------------------------------------

--
-- Table structure for table `tags_images`
--

CREATE TABLE `tags_images` (
  `tags_id` int NOT NULL,
  `img_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `tags_images`
--

INSERT INTO `tags_images` (`tags_id`, `img_id`) VALUES
(1, 40),
(1, 53),
(1, 60),
(1, 65),
(1, 67),
(1, 71),
(1, 73),
(2, 65),
(3, 70),
(4, 40),
(7, 57),
(8, 54),
(8, 57),
(8, 60),
(8, 61),
(8, 63),
(8, 64),
(9, 40),
(9, 57),
(10, 57),
(10, 66),
(10, 68),
(10, 71),
(10, 73),
(11, 40),
(11, 64),
(12, 57),
(12, 60),
(12, 61),
(12, 66),
(13, 40),
(13, 53),
(13, 70),
(19, 67),
(19, 68),
(19, 71),
(19, 72),
(19, 74),
(21, 66),
(21, 67),
(21, 68),
(21, 71),
(21, 74),
(22, 63),
(22, 65),
(22, 67),
(22, 68),
(23, 63),
(23, 64),
(24, 63),
(24, 64),
(25, 65),
(25, 70),
(26, 74),
(27, 73),
(28, 71),
(28, 72);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int NOT NULL,
  `user_login` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `user_password` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `user_img` varchar(10000) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `user_stat` tinyint(1) NOT NULL,
  `user_ban` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `user_login`, `user_password`, `user_img`, `user_stat`, `user_ban`) VALUES
(26, 'Нервная ромашка', '$2y$10$vIJ3mZQv99kHz6SYL0rHc.bUSPoBIEbj/X2u7kQ2viu7KUdjMP5Fa', '/public/user/img_67f549643f4a267f549643f4a9.png', 0, 0),
(27, 'Алая роза', '$2y$10$ukvlYWPjgYue1pD6MU0VbOfALy5j1W9kR5RMeGy9UyvNzM8MloiUW', '/img/users/defaullt-user-icon.png', 0, 0),
(28, 'root', '$2y$10$1jmkN/yiCwwwNfVZeti1t.oZPR7yfysGDwoxmXf5vG15QSGtXXdWu', '/img/users/defaullt-user-icon.png', 1, 0),
(29, 'SQL-T', '$2y$10$SqopHCEws5pTUONU7wJbp.Ohro0a9PBmnQ80RNiOQKhamBphkZNcm', '/public/user/img_67f54b131ea9e67f54b131eaa5.webp', 0, 0),
(42, 'root1', '$2y$10$JOmuz/MHKgrQwPAsTXdOi.N0kXLe5Urm0nQAtwoz8IK.rrhTyDQ9i', '/img/users/defaullt-user-icon.png', 1, 0),
(68, '4444', '$2y$10$GLtMXgthK3wPNDfmbePZEe.xobzVzOfUssSa6bB0/8nxTes2jlW4m', '/img/users/defaullt-user-icon.png', 0, 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`categories_id`);

--
-- Indexes for table `favorites`
--
ALTER TABLE `favorites`
  ADD PRIMARY KEY (`favorites_img_id`,`favorites_user_id`);

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
-- Indexes for table `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`tags_id`);

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
  MODIFY `categories_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `images`
--
ALTER TABLE `images`
  MODIFY `images_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=86;

--
-- AUTO_INCREMENT for table `tags`
--
ALTER TABLE `tags`
  MODIFY `tags_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
