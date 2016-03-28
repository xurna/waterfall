-- phpMyAdmin SQL Dump
-- version 3.4.10.1
-- http://www.phpmyadmin.net
--
-- 主机: localhost
-- 生成日期: 2016 年 03 月 28 日 10:52
-- 服务器版本: 5.5.20
-- PHP 版本: 5.3.10

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- 数据库: `waterfall`
--

-- --------------------------------------------------------

--
-- 表的结构 `photos`
--

CREATE TABLE IF NOT EXISTS `photos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `photo` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `type` text COLLATE utf8_unicode_ci NOT NULL,
  `size` int(11) NOT NULL,
  `address` text COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=70 ;

--
-- 转存表中的数据 `photos`
--

INSERT INTO `photos` (`id`, `photo`, `type`, `size`, `address`) VALUES
(7, 'begin.png', 'image/png', 94912, 'H:wamp	mpphp3790.tmp'),
(13, 'pic3.jpg', 'image/jpeg', 63325, 'H:wamp	mpphpAA5A.tmp'),
(16, '0bd162d9f2d3572cbb5dd49b8a13632762d0c33e.jpg', 'image/jpeg', 63963, 'H:wamp	mpphp315A.tmp'),
(17, '2f738bd4b31c8701bfa472a1277f9e2f0708ff63.jpg', 'image/jpeg', 44591, 'H:wamp	mpphpA33F.tmp'),
(19, 'TB1F7FKIpXXXXcyXVXXSutbFXXX.jpg', 'image/jpeg', 131692, 'H:wamp	mpphpE697.tmp'),
(20, 'TB1F7FKIpXXXXcyXVXXSutbFXXX.jpg', 'image/jpeg', 131692, 'H:wamp	mpphpE985.tmp'),
(21, 'registorbg.png', 'image/png', 278921, 'H:wamp	mpphp984.tmp'),
(22, 'b0c77b7a04b47663359bf788.jpg', 'image/jpeg', 18631, 'H:wamp	mpphp31BD.tmp'),
(23, 'c2cec3fdfc03924578e3cb518794a4c27d1e251d.jpg', 'image/jpeg', 91571, 'H:wamp	mpphp5075.tmp'),
(24, '1.jpg', 'image/jpeg', 151857, 'H:wamp	mpphp51B3.tmp'),
(25, 'TB1F7FKIpXXXXcyXVXXSutbFXXX.jpg', 'image/jpeg', 131692, 'H:wamp	mpphp7403.tmp'),
(26, '2b654f9cca6a88877409d704.jpg', 'image/jpeg', 81246, 'H:wamp	mpphp3012.tmp'),
(27, 'photo1.jpg', 'image/jpeg', 284179, 'H:wamp	mpphp1878.tmp'),
(28, 'photo2.jpg', 'image/jpeg', 185999, 'H:wamp	mpphp3C10.tmp'),
(29, 'photo3.jpg', 'image/jpeg', 195153, 'H:wamp	mpphp56A2.tmp'),
(30, 'photo4.jpg', 'image/jpeg', 44181, 'H:wamp	mpphp7164.tmp'),
(31, 'photo9.jpg', 'image/jpeg', 105431, 'H:wamp	mpphp8E66.tmp'),
(32, 'photo10.jpg', 'image/jpeg', 423680, 'H:wamp	mpphpB2E8.tmp'),
(33, 'psgl3.jpg', 'image/jpeg', 32476, 'H:wamp	mpphpDA27.tmp'),
(34, 'change.png', 'image/png', 47418, 'H:wamp	mpphpEFDA.tmp'),
(35, 'photo8.jpg', 'image/jpeg', 410696, 'H:wamp	mpphp191C.tmp'),
(36, 'photo10.jpg', 'image/jpeg', 423680, 'H:wamp	mpphp5765.tmp'),
(37, 'photo1.jpg', 'image/jpeg', 284179, 'H:wamp	mpphp51DA.tmp'),
(38, 'photo1.jpg', 'image/jpeg', 284179, 'H:wamp	mpphp6EBD.tmp'),
(39, 'photo2.jpg', 'image/jpeg', 185999, 'H:wamp	mpphp872E.tmp'),
(40, 'photo4.jpg', 'image/jpeg', 44181, 'H:wamp	mpphpA134.tmp'),
(41, 'photo2.jpg', 'image/jpeg', 185999, 'H:wamp	mpphpBE66.tmp'),
(42, 'photo3.jpg', 'image/jpeg', 195153, 'H:wamp	mpphp2DBC.tmp'),
(43, 'photo16.jpg', 'image/jpeg', 14084, 'H:wamp	mpphp4330.tmp'),
(44, 'photo13.jpg', 'image/jpeg', 30326, 'H:wamp	mpphp5B24.tmp'),
(45, 'photo1.jpg', 'image/jpeg', 284179, 'H:wamp	mpphp7A49.tmp'),
(46, 'photo2.jpg', 'image/jpeg', 185999, 'H:wamp	mpphp9549.tmp'),
(47, 'photo1.jpg', 'image/jpeg', 284179, 'H:wamp	mpphpB355.tmp'),
(48, 'photo2.jpg', 'image/jpeg', 185999, 'H:wamp	mpphpCB96.tmp'),
(49, 'photo8.jpg', 'image/jpeg', 410696, 'H:wamp	mpphp5B77.tmp'),
(50, 'photo7.jpg', 'image/jpeg', 78451, 'H:wamp	mpphp76D5.tmp'),
(51, 'photo1.jpg', 'image/jpeg', 284179, 'H:wamp	mpphp9271.tmp'),
(52, '5.jpg', 'image/jpeg', 129347, 'H:wamp	mpphpA4C9.tmp'),
(53, 'photo4.jpg', 'image/jpeg', 44181, 'H:wamp	mpphpBA3D.tmp'),
(54, 'photo2.jpg', 'image/jpeg', 185999, 'H:wamp	mpphpD2AE.tmp'),
(55, 'scroll_pic4.jpg', 'image/jpeg', 33685, 'H:wamp	mpphp989B.tmp'),
(56, 'desc2.png', 'image/png', 256008, 'H:wamp	mpphp14CD.tmp'),
(57, 'photo11.jpg', 'image/jpeg', 13354, 'H:wamp	mpphpEF92.tmp'),
(58, 'K1.jpg', 'image/jpeg', 169849, 'H:wamp	mpphp32AB.tmp'),
(59, 'k7.jpg', 'image/jpeg', 270320, 'H:wamp	mpphp65FB.tmp'),
(60, '67577fd4jw1eklcoq2slqj20c80c8aau.jpg', 'image/jpeg', 39243, 'H:wamp	mpphp8407.tmp'),
(61, '12741731101440.jpg', 'image/jpeg', 64783, 'H:wamp	mpphpA0CB.tmp'),
(62, '12935111514755.jpg', 'image/jpeg', 48301, 'H:wamp	mpphpBC67.tmp'),
(63, '12754810921473.jpg', 'image/jpeg', 14132, 'H:wamp	mpphpDDDC.tmp'),
(64, 'k6.jpg', 'image/jpeg', 124366, 'H:wamp	mpphp3D4.tmp'),
(65, '12935113106840.jpg', 'image/jpeg', 27345, 'H:wamp	mpphp1E57.tmp'),
(66, 'u=3327108979,3619327803&fm=21&gp=0.jpg', 'image/jpeg', 11647, 'H:wamp	mpphp48A3.tmp'),
(67, '1163309773e1aa4626m.jpg', 'image/jpeg', 15087, 'H:wamp	mpphp74B5.tmp'),
(68, 'k7.jpg', 'image/jpeg', 270320, 'H:wamp	mpphpF11.tmp'),
(69, 'k9.jpg', 'image/jpeg', 41219, 'H:wamp	mpphp3603.tmp');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
