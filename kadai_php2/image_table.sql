-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- ホスト: localhost
-- 生成日時: 2021 年 9 月 23 日 14:53
-- サーバのバージョン： 10.4.21-MariaDB
-- PHP のバージョン: 8.0.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- データベース: `gsacs_d03_10`
--

-- --------------------------------------------------------

--
-- テーブルの構造 `image_table`
--

CREATE TABLE `image_table` (
  `id` int(20) NOT NULL,
  `campany_name` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL,
  `food_name` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL,
  `img` blob NOT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- テーブルのデータのダンプ `image_table`
--

INSERT INTO `image_table` (`id`, `campany_name`, `food_name`, `img`, `created_at`) VALUES
(1, ' A社', '角煮', 0x666f6f64696573666565642e636f6d5f776f6d616e2d627579696e672d736561666f6f642d696e2d67726f636572792d73746f72652e6a7067, '2021-09-23 16:34:45'),
(2, 'あああ', 'いい意味で', '', '2021-09-23 17:34:15'),
(3, 'B社', 'おにぎり', 0xe291a22e706e67, '2021-09-23 17:34:37'),
(4, 'A社', 'おでん', 0xe291a02e706e67, '2021-09-23 20:44:57'),
(5, 'A社', 'おにぎり', 0x6b616b756e692e6a706567, '2021-09-23 21:42:27'),
(6, 'C社', 'ティラミス', 0x666f6f642e6a7067, '2021-09-23 21:51:27');

--
-- ダンプしたテーブルのインデックス
--

--
-- テーブルのインデックス `image_table`
--
ALTER TABLE `image_table`
  ADD PRIMARY KEY (`id`);

--
-- ダンプしたテーブルの AUTO_INCREMENT
--

--
-- テーブルの AUTO_INCREMENT `image_table`
--
ALTER TABLE `image_table`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
