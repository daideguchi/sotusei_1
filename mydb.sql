-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- ホスト: localhost
-- 生成日時: 2022 年 2 月 10 日 13:46
-- サーバのバージョン： 10.4.21-MariaDB
-- PHP のバージョン: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- データベース: `mydb`
--

-- --------------------------------------------------------

--
-- テーブルの構造 `members`
--

CREATE TABLE `members` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `password` varchar(100) COLLATE utf8mb4_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- テーブルのデータのダンプ `members`
--

INSERT INTO `members` (`id`, `name`, `email`, `password`) VALUES
(1, '出口　大', 'dd.1107.11107@gmail.com', '$2y$10$K3UD0kLltqnme/yIpU3pMu7hV2D4HO85xvfUxqzePe8Vuf4xp9W3O'),
(2, '', 'dd.110.11107@gmail.com', '$2y$10$kQBT1YVLNTQpvWiT1L8qxuvErseQ8FNNuYLh3NdhTh35Uwbx8c.Si'),
(3, '', 'dd.107.11107@gmail.com', '$2y$10$iBSzCw0n/ctSRLmrDvyPLOnhJ2hL3SGwynbdIiblYRrsjzaHFdfiy');

--
-- ダンプしたテーブルのインデックス
--

--
-- テーブルのインデックス `members`
--
ALTER TABLE `members`
  ADD PRIMARY KEY (`id`);

--
-- ダンプしたテーブルの AUTO_INCREMENT
--

--
-- テーブルの AUTO_INCREMENT `members`
--
ALTER TABLE `members`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
