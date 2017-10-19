-- phpMyAdmin SQL Dump
-- version 4.2.9
-- http://www.phpmyadmin.net
--
-- 主機: dbhome.cs.nctu.edu.tw
-- 產生時間： 2017 年 10 月 16 日 18:20
-- 伺服器版本: 5.6.34-log
-- PHP 版本： 5.6.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- 資料庫： `huangsh1128_cs_Lab2`
--

-- --------------------------------------------------------

--
-- 資料表結構 `occupation`
--

CREATE TABLE IF NOT EXISTS `occupation` (
`id` int(3) NOT NULL,
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- 資料表的匯出資料 `occupation`
--

INSERT INTO `occupation` (`id`, `name`) VALUES
(1, 'engineer'),
(2, 'doctor'),
(3, 'freelancer'),
(4, ' lawyer');

-- --------------------------------------------------------

--
-- 資料表結構 `people`
--

CREATE TABLE IF NOT EXISTS `people` (
`id` int(3) NOT NULL,
  `occupation_id` int(3) NOT NULL,
  `name` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `gender` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `salary` int(10) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- 資料表的匯出資料 `people`
--

INSERT INTO `people` (`id`, `occupation_id`, `name`, `gender`, `salary`) VALUES
(1, 1, 'Jack', 'male', 22000),
(2, 2, 'Mary', 'female', 38000),
(3, 1, 'Joe', 'male', 55000),
(4, 2, 'Steven', 'male', 80000),
(5, 4, 'Kevin', 'male', 45000),
(6, 3, 'Sabrina', 'female', 60000),
(7, 1, 'Tina', 'female', 32000),
(8, 4, 'Tom', 'male', 50000),
(9, 3, 'Julia', 'female', 62000),
(10, 3, 'Oh', 'male', 500);

--
-- 已匯出資料表的索引
--

--
-- 資料表索引 `occupation`
--
ALTER TABLE `occupation`
 ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `people`
--
ALTER TABLE `people`
 ADD PRIMARY KEY (`id`), ADD KEY `occupation_id` (`occupation_id`);

--
-- 在匯出的資料表使用 AUTO_INCREMENT
--

--
-- 使用資料表 AUTO_INCREMENT `occupation`
--
ALTER TABLE `occupation`
MODIFY `id` int(3) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=11;
--
-- 使用資料表 AUTO_INCREMENT `people`
--
ALTER TABLE `people`
MODIFY `id` int(3) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=14;
--
-- 已匯出資料表的限制(Constraint)
--

--
-- 資料表的 Constraints `people`
--
ALTER TABLE `people`
ADD CONSTRAINT `people_ibfk_1` FOREIGN KEY (`occupation_id`) REFERENCES `occupation` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
