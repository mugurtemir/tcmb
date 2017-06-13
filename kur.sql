-- phpMyAdmin SQL Dump
-- version 3.4.5
-- http://www.phpmyadmin.net
--
-- Anamakine: localhost
-- Üretim Zamanı: 13 Haz 2017, 03:19:46
-- Sunucu sürümü: 5.5.16
-- PHP Sürümü: 5.3.8

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Veritabanı: `kur`
--

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `subat`
--

CREATE TABLE IF NOT EXISTS `subat` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tarih` date NOT NULL,
  `doviz_turu` varchar(250) CHARACTER SET utf8 COLLATE utf8_turkish_ci NOT NULL,
  `alis_kuru` varchar(250) CHARACTER SET utf8 COLLATE utf8_turkish_ci NOT NULL,
  `satis_kuru` varchar(250) CHARACTER SET utf8 COLLATE utf8_turkish_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=361 ;

--
-- Tablo döküm verisi `subat`
--

INSERT INTO `subat` (`id`, `tarih`, `doviz_turu`, `alis_kuru`, `satis_kuru`) VALUES
(1, '2017-02-01', 'ABD DOLARI', '3.7746', '3.7814'),
(2, '2017-02-01', 'AVUSTRALYA DOLARI', '2.8560', '2.8746'),
(3, '2017-02-01', 'DANİMARKA KRONU', '0.54688', '0.54956'),
(4, '2017-02-01', 'EURO', '4.0733', '4.0807'),
(5, '2017-02-01', 'İNGİLİZ STERLİNİ', '4.7475', '4.7723'),
(6, '2017-02-01', 'İSVİÇRE FRANGI', '3.8040', '3.8284'),
(7, '2017-02-01', 'İSVEÇ KRONU', '0.43030', '0.43476'),
(8, '2017-02-01', 'KANADA DOLARI', '2.8843', '2.8973'),
(9, '2017-02-01', 'KUVEYT DİNARI', '12.3155', '12.4766'),
(10, '2017-02-01', 'NORVEÇ KRONU', '0.45683', '0.45990'),
(11, '2017-02-01', 'SUUDİ ARABİSTAN RİYALİ', '1.0065', '1.0083'),
(12, '2017-02-01', 'JAPON YENİ', '3.3221', '3.3441'),
(13, '2017-02-01', 'BULGAR LEVASI', '2.0709', '2.0980'),
(14, '2017-02-01', 'RUMEN LEYİ', '0.89534', '0.90705'),
(15, '2017-02-01', 'RUS RUBLESİ', '0.06230', '0.06311'),
(16, '2017-02-01', 'İRAN RİYALİ', '0.01160', '0.01175'),
(17, '2017-02-01', 'ÇİN YUANI', '0.54543', '0.55257'),
(18, '2017-02-01', 'PAKİSTAN RUPİSİ', '0.03582', '0.03629'),
(19, '2017-02-02', 'ABD DOLARI', '3.7336', '3.7404'),
(20, '2017-02-02', 'AVUSTRALYA DOLARI', '2.8538', '2.8724'),
(21, '2017-02-02', 'DANİMARKA KRONU', '0.54150', '0.54416'),
(22, '2017-02-02', 'EURO', '4.0338', '4.0410'),
(23, '2017-02-02', 'İNGİLİZ STERLİNİ', '4.7243', '4.7489'),
(24, '2017-02-02', 'İSVİÇRE FRANGI', '3.7659', '3.7900'),
(25, '2017-02-02', 'İSVEÇ KRONU', '0.42648', '0.43089'),
(26, '2017-02-02', 'KANADA DOLARI', '2.8686', '2.8815'),
(27, '2017-02-02', 'KUVEYT DİNARI', '12.1849', '12.3443'),
(28, '2017-02-02', 'NORVEÇ KRONU', '0.45438', '0.45744'),
(29, '2017-02-02', 'SUUDİ ARABİSTAN RİYALİ', '0.99550', '0.99729'),
(30, '2017-02-02', 'JAPON YENİ', '3.3097', '3.3316'),
(31, '2017-02-02', 'BULGAR LEVASI', '2.0507', '2.0775'),
(32, '2017-02-02', 'RUMEN LEYİ', '0.88365', '0.89521'),
(33, '2017-02-02', 'RUS RUBLESİ', '0.06208', '0.06289'),
(34, '2017-02-02', 'İRAN RİYALİ', '0.01147', '0.01162'),
(35, '2017-02-02', 'ÇİN YUANI', '0.53951', '0.54657'),
(36, '2017-02-02', 'PAKİSTAN RUPİSİ', '0.03544', '0.03590'),
(37, '2017-02-03', 'ABD DOLARI', '3.7421', '3.7489'),
(38, '2017-02-03', 'AVUSTRALYA DOLARI', '2.8550', '2.8736'),
(39, '2017-02-03', 'DANİMARKA KRONU', '0.53979', '0.54244'),
(40, '2017-02-03', 'EURO', '4.0212', '4.0284'),
(41, '2017-02-03', 'İNGİLİZ STERLİNİ', '4.6699', '4.6943'),
(42, '2017-02-03', 'İSVİÇRE FRANGI', '3.7522', '3.7763'),
(43, '2017-02-03', 'İSVEÇ KRONU', '0.42436', '0.42875'),
(44, '2017-02-03', 'KANADA DOLARI', '2.8668', '2.8797'),
(45, '2017-02-03', 'KUVEYT DİNARI', '12.2004', '12.3600'),
(46, '2017-02-03', 'NORVEÇ KRONU', '0.45203', '0.45507'),
(47, '2017-02-03', 'SUUDİ ARABİSTAN RİYALİ', '0.99778', '0.99958'),
(48, '2017-02-03', 'JAPON YENİ', '3.2998', '3.3217'),
(49, '2017-02-03', 'BULGAR LEVASI', '2.0442', '2.0709'),
(50, '2017-02-03', 'RUMEN LEYİ', '0.88512', '0.89671'),
(51, '2017-02-03', 'RUS RUBLESİ', '0.06263', '0.06344'),
(52, '2017-02-03', 'İRAN RİYALİ', '0.01150', '0.01165'),
(53, '2017-02-03', 'ÇİN YUANI', '0.54159', '0.54867'),
(54, '2017-02-03', 'PAKİSTAN RUPİSİ', '0.03552', '0.03598'),
(55, '2017-02-06', 'ABD DOLARI', '3.6784', '3.6851'),
(56, '2017-02-06', 'AVUSTRALYA DOLARI', '2.8109', '2.8292'),
(57, '2017-02-06', 'DANİMARKA KRONU', '0.53082', '0.53343'),
(58, '2017-02-06', 'EURO', '3.9540', '3.9611'),
(59, '2017-02-06', 'İNGİLİZ STERLİNİ', '4.5819', '4.6058'),
(60, '2017-02-06', 'İSVİÇRE FRANGI', '3.6904', '3.7141'),
(61, '2017-02-06', 'İSVEÇ KRONU', '0.41642', '0.42073'),
(62, '2017-02-06', 'KANADA DOLARI', '2.8212', '2.8339'),
(63, '2017-02-06', 'KUVEYT DİNARI', '11.9992', '12.1562'),
(64, '2017-02-06', 'NORVEÇ KRONU', '0.44542', '0.44841'),
(65, '2017-02-06', 'SUUDİ ARABİSTAN RİYALİ', '0.98083', '0.98260'),
(66, '2017-02-06', 'JAPON YENİ', '3.2593', '3.2809'),
(67, '2017-02-06', 'BULGAR LEVASI', '2.0102', '2.0365'),
(68, '2017-02-06', 'RUMEN LEYİ', '0.87097', '0.88237'),
(69, '2017-02-06', 'RUS RUBLESİ', '0.06218', '0.06299'),
(70, '2017-02-06', 'İRAN RİYALİ', '0.01130', '0.01145'),
(71, '2017-02-06', 'ÇİN YUANI', '0.53303', '0.54000'),
(72, '2017-02-06', 'PAKİSTAN RUPİSİ', '0.03491', '0.03537'),
(73, '2017-02-07', 'ABD DOLARI', '3.7095', '3.7162'),
(74, '2017-02-07', 'AVUSTRALYA DOLARI', '2.8234', '2.8418'),
(75, '2017-02-07', 'DANİMARKA KRONU', '0.53168', '0.53429'),
(76, '2017-02-07', 'EURO', '3.9599', '3.9670'),
(77, '2017-02-07', 'İNGİLİZ STERLİNİ', '4.5900', '4.6139'),
(78, '2017-02-07', 'İSVİÇRE FRANGI', '3.7073', '3.7311'),
(79, '2017-02-07', 'İSVEÇ KRONU', '0.41598', '0.42028'),
(80, '2017-02-07', 'KANADA DOLARI', '2.8123', '2.8250'),
(81, '2017-02-07', 'KUVEYT DİNARI', '12.0915', '12.2498'),
(82, '2017-02-07', 'NORVEÇ KRONU', '0.44489', '0.44789'),
(83, '2017-02-07', 'SUUDİ ARABİSTAN RİYALİ', '0.98910', '0.99088'),
(84, '2017-02-07', 'JAPON YENİ', '3.2980', '3.3198'),
(85, '2017-02-07', 'BULGAR LEVASI', '2.0131', '2.0394'),
(86, '2017-02-07', 'RUMEN LEYİ', '0.87607', '0.88754'),
(87, '2017-02-07', 'RUS RUBLESİ', '0.06217', '0.06298'),
(88, '2017-02-07', 'İRAN RİYALİ', '0.01139', '0.01154'),
(89, '2017-02-07', 'ÇİN YUANI', '0.53605', '0.54306'),
(90, '2017-02-07', 'PAKİSTAN RUPİSİ', '0.03520', '0.03566'),
(91, '2017-02-08', 'ABD DOLARI', '3.7410', '3.7478'),
(92, '2017-02-08', 'AVUSTRALYA DOLARI', '2.8486', '2.8672'),
(93, '2017-02-08', 'DANİMARKA KRONU', '0.53531', '0.53794'),
(94, '2017-02-08', 'EURO', '3.9858', '3.9930'),
(95, '2017-02-08', 'İNGİLİZ STERLİNİ', '4.6668', '4.6911'),
(96, '2017-02-08', 'İSVİÇRE FRANGI', '3.7361', '3.7601'),
(97, '2017-02-08', 'İSVEÇ KRONU', '0.41935', '0.42369'),
(98, '2017-02-08', 'KANADA DOLARI', '2.8376', '2.8504'),
(99, '2017-02-08', 'KUVEYT DİNARI', '12.1966', '12.3562'),
(100, '2017-02-08', 'NORVEÇ KRONU', '0.44761', '0.45062'),
(101, '2017-02-08', 'SUUDİ ARABİSTAN RİYALİ', '0.99751', '0.99931'),
(102, '2017-02-08', 'JAPON YENİ', '3.3230', '3.3450'),
(103, '2017-02-08', 'BULGAR LEVASI', '2.0264', '2.0529'),
(104, '2017-02-08', 'RUMEN LEYİ', '0.88305', '0.89460'),
(105, '2017-02-08', 'RUS RUBLESİ', '0.06256', '0.06338'),
(106, '2017-02-08', 'İRAN RİYALİ', '0.01149', '0.01164'),
(107, '2017-02-08', 'ÇİN YUANI', '0.54091', '0.54799'),
(108, '2017-02-08', 'PAKİSTAN RUPİSİ', '0.03548', '0.03594'),
(109, '2017-02-09', 'ABD DOLARI', '3.7047', '3.7114'),
(110, '2017-02-09', 'AVUSTRALYA DOLARI', '2.8222', '2.8406'),
(111, '2017-02-09', 'DANİMARKA KRONU', '0.53175', '0.53436'),
(112, '2017-02-09', 'EURO', '3.9594', '3.9665'),
(113, '2017-02-09', 'İNGİLİZ STERLİNİ', '4.6392', '4.6633'),
(114, '2017-02-09', 'İSVİÇRE FRANGI', '3.7094', '3.7332'),
(115, '2017-02-09', 'İSVEÇ KRONU', '0.41651', '0.42082'),
(116, '2017-02-09', 'KANADA DOLARI', '2.8161', '2.8288'),
(117, '2017-02-09', 'KUVEYT DİNARI', '12.0768', '12.2348'),
(118, '2017-02-09', 'NORVEÇ KRONU', '0.44440', '0.44739'),
(119, '2017-02-09', 'SUUDİ ARABİSTAN RİYALİ', '0.98780', '0.98958'),
(120, '2017-02-09', 'JAPON YENİ', '3.2909', '3.3127'),
(121, '2017-02-09', 'BULGAR LEVASI', '2.0128', '2.0392'),
(122, '2017-02-09', 'RUMEN LEYİ', '0.87640', '0.88787'),
(123, '2017-02-09', 'RUS RUBLESİ', '0.06245', '0.06327'),
(124, '2017-02-09', 'İRAN RİYALİ', '0.01138', '0.01153'),
(125, '2017-02-09', 'ÇİN YUANI', '0.53653', '0.54355'),
(126, '2017-02-09', 'PAKİSTAN RUPİSİ', '0.03516', '0.03562'),
(127, '2017-02-10', 'ABD DOLARI', '3.6749', '3.6815'),
(128, '2017-02-10', 'AVUSTRALYA DOLARI', '2.8021', '2.8204'),
(129, '2017-02-10', 'DANİMARKA KRONU', '0.52532', '0.52790'),
(130, '2017-02-10', 'EURO', '3.9116', '3.9186'),
(131, '2017-02-10', 'İNGİLİZ STERLİNİ', '4.5803', '4.6042'),
(132, '2017-02-10', 'İSVİÇRE FRANGI', '3.6576', '3.6811'),
(133, '2017-02-10', 'İSVEÇ KRONU', '0.41059', '0.41484'),
(134, '2017-02-10', 'KANADA DOLARI', '2.7919', '2.8045'),
(135, '2017-02-10', 'KUVEYT DİNARI', '11.9694', '12.1260'),
(136, '2017-02-10', 'NORVEÇ KRONU', '0.43797', '0.44092'),
(137, '2017-02-10', 'SUUDİ ARABİSTAN RİYALİ', '0.97984', '0.98160'),
(138, '2017-02-10', 'JAPON YENİ', '3.2262', '3.2475'),
(139, '2017-02-10', 'BULGAR LEVASI', '1.9887', '2.0147'),
(140, '2017-02-10', 'RUMEN LEYİ', '0.86466', '0.87597'),
(141, '2017-02-10', 'RUS RUBLESİ', '0.06212', '0.06294'),
(142, '2017-02-10', 'İRAN RİYALİ', '0.01129', '0.01143'),
(143, '2017-02-10', 'ÇİN YUANI', '0.53119', '0.53814'),
(144, '2017-02-10', 'PAKİSTAN RUPİSİ', '0.03488', '0.03533'),
(145, '2017-02-13', 'ABD DOLARI', '3.6869', '3.6935'),
(146, '2017-02-13', 'AVUSTRALYA DOLARI', '2.8219', '2.8403'),
(147, '2017-02-13', 'DANİMARKA KRONU', '0.52681', '0.52939'),
(148, '2017-02-13', 'EURO', '3.9228', '3.9299'),
(149, '2017-02-13', 'İNGİLİZ STERLİNİ', '4.6063', '4.6303'),
(150, '2017-02-13', 'İSVİÇRE FRANGI', '3.6677', '3.6912'),
(151, '2017-02-13', 'İSVEÇ KRONU', '0.41191', '0.41617'),
(152, '2017-02-13', 'KANADA DOLARI', '2.8124', '2.8251'),
(153, '2017-02-13', 'KUVEYT DİNARI', '12.0064', '12.1635'),
(154, '2017-02-13', 'NORVEÇ KRONU', '0.43923', '0.44218'),
(155, '2017-02-13', 'SUUDİ ARABİSTAN RİYALİ', '0.98305', '0.98482'),
(156, '2017-02-13', 'JAPON YENİ', '3.2356', '3.2570'),
(157, '2017-02-13', 'BULGAR LEVASI', '1.9944', '2.0205'),
(158, '2017-02-13', 'RUMEN LEYİ', '0.86661', '0.87795'),
(159, '2017-02-13', 'RUS RUBLESİ', '0.06315', '0.06398'),
(160, '2017-02-13', 'İRAN RİYALİ', '0.01132', '0.01147'),
(161, '2017-02-13', 'ÇİN YUANI', '0.53294', '0.53991'),
(162, '2017-02-13', 'PAKİSTAN RUPİSİ', '0.03497', '0.03542'),
(163, '2017-02-14', 'ABD DOLARI', '3.6494', '3.6560'),
(164, '2017-02-14', 'AVUSTRALYA DOLARI', '2.7973', '2.8156'),
(165, '2017-02-14', 'DANİMARKA KRONU', '0.52041', '0.52296'),
(166, '2017-02-14', 'EURO', '3.8759', '3.8829'),
(167, '2017-02-14', 'İNGİLİZ STERLİNİ', '4.5543', '4.5781'),
(168, '2017-02-14', 'İSVİÇRE FRANGI', '3.6255', '3.6487'),
(169, '2017-02-14', 'İSVEÇ KRONU', '0.40756', '0.41178'),
(170, '2017-02-14', 'KANADA DOLARI', '2.7941', '2.8067'),
(171, '2017-02-14', 'KUVEYT DİNARI', '11.8858', '12.0413'),
(172, '2017-02-14', 'NORVEÇ KRONU', '0.43501', '0.43793'),
(173, '2017-02-14', 'SUUDİ ARABİSTAN RİYALİ', '0.97309', '0.97484'),
(174, '2017-02-14', 'JAPON YENİ', '3.2091', '3.2304'),
(175, '2017-02-14', 'BULGAR LEVASI', '1.9706', '1.9964'),
(176, '2017-02-14', 'RUMEN LEYİ', '0.85594', '0.86714'),
(177, '2017-02-14', 'RUS RUBLESİ', '0.06296', '0.06378'),
(178, '2017-02-14', 'İRAN RİYALİ', '0.01120', '0.01135'),
(179, '2017-02-14', 'ÇİN YUANI', '0.52846', '0.53538'),
(180, '2017-02-14', 'PAKİSTAN RUPİSİ', '0.03463', '0.03508'),
(181, '2017-02-15', 'ABD DOLARI', '3.6462', '3.6528'),
(182, '2017-02-15', 'AVUSTRALYA DOLARI', '2.7929', '2.8111'),
(183, '2017-02-15', 'DANİMARKA KRONU', '0.51718', '0.51972'),
(184, '2017-02-15', 'EURO', '3.8518', '3.8587'),
(185, '2017-02-15', 'İNGİLİZ STERLİNİ', '4.5299', '4.5535'),
(186, '2017-02-15', 'İSVİÇRE FRANGI', '3.6089', '3.6321'),
(187, '2017-02-15', 'İSVEÇ KRONU', '0.40560', '0.40980'),
(188, '2017-02-15', 'KANADA DOLARI', '2.7854', '2.7980'),
(189, '2017-02-15', 'KUVEYT DİNARI', '11.8675', '12.0228'),
(190, '2017-02-15', 'NORVEÇ KRONU', '0.43316', '0.43608'),
(191, '2017-02-15', 'SUUDİ ARABİSTAN RİYALİ', '0.97221', '0.97396'),
(192, '2017-02-15', 'JAPON YENİ', '3.1776', '3.1986'),
(193, '2017-02-15', 'BULGAR LEVASI', '1.9583', '1.9839'),
(194, '2017-02-15', 'RUMEN LEYİ', '0.84966', '0.86078'),
(195, '2017-02-15', 'RUS RUBLESİ', '0.06342', '0.06425'),
(196, '2017-02-15', 'İRAN RİYALİ', '0.01119', '0.01134'),
(197, '2017-02-15', 'ÇİN YUANI', '0.52784', '0.53475'),
(198, '2017-02-15', 'PAKİSTAN RUPİSİ', '0.03461', '0.03506'),
(199, '2017-02-16', 'ABD DOLARI', '3.6704', '3.6770'),
(200, '2017-02-16', 'AVUSTRALYA DOLARI', '2.8202', '2.8386'),
(201, '2017-02-16', 'DANİMARKA KRONU', '0.52382', '0.52639'),
(202, '2017-02-16', 'EURO', '3.9003', '3.9074'),
(203, '2017-02-16', 'İNGİLİZ STERLİNİ', '4.5779', '4.6017'),
(204, '2017-02-16', 'İSVİÇRE FRANGI', '3.6531', '3.6765'),
(205, '2017-02-16', 'İSVEÇ KRONU', '0.41046', '0.41471'),
(206, '2017-02-16', 'KANADA DOLARI', '2.8097', '2.8224'),
(207, '2017-02-16', 'KUVEYT DİNARI', '11.9490', '12.1053'),
(208, '2017-02-16', 'NORVEÇ KRONU', '0.43990', '0.44286'),
(209, '2017-02-16', 'SUUDİ ARABİSTAN RİYALİ', '0.97868', '0.98044'),
(210, '2017-02-16', 'JAPON YENİ', '3.2192', '3.2405'),
(211, '2017-02-16', 'BULGAR LEVASI', '1.9828', '2.0087'),
(212, '2017-02-16', 'RUMEN LEYİ', '0.85772', '0.86894'),
(213, '2017-02-16', 'RUS RUBLESİ', '0.06378', '0.06461'),
(214, '2017-02-16', 'İRAN RİYALİ', '0.01127', '0.01142'),
(215, '2017-02-16', 'ÇİN YUANI', '0.53212', '0.53908'),
(216, '2017-02-16', 'PAKİSTAN RUPİSİ', '0.03483', '0.03528'),
(217, '2017-02-17', 'ABD DOLARI', '3.6662', '3.6728'),
(218, '2017-02-17', 'AVUSTRALYA DOLARI', '2.8084', '2.8267'),
(219, '2017-02-17', 'DANİMARKA KRONU', '0.52448', '0.52706'),
(220, '2017-02-17', 'EURO', '3.9049', '3.9119'),
(221, '2017-02-17', 'İNGİLİZ STERLİNİ', '4.5568', '4.5806'),
(222, '2017-02-17', 'İSVİÇRE FRANGI', '3.6613', '3.6848'),
(223, '2017-02-17', 'İSVEÇ KRONU', '0.41084', '0.41509'),
(224, '2017-02-17', 'KANADA DOLARI', '2.7986', '2.8113'),
(225, '2017-02-17', 'KUVEYT DİNARI', '11.9407', '12.0969'),
(226, '2017-02-17', 'NORVEÇ KRONU', '0.43983', '0.44279'),
(227, '2017-02-17', 'SUUDİ ARABİSTAN RİYALİ', '0.97754', '0.97930'),
(228, '2017-02-17', 'JAPON YENİ', '3.2334', '3.2548'),
(229, '2017-02-17', 'BULGAR LEVASI', '1.9851', '2.0111'),
(230, '2017-02-17', 'RUMEN LEYİ', '0.85912', '0.87036'),
(231, '2017-02-17', 'RUS RUBLESİ', '0.06300', '0.06382'),
(232, '2017-02-17', 'İRAN RİYALİ', '0.01126', '0.01140'),
(233, '2017-02-17', 'ÇİN YUANI', '0.53077', '0.53772'),
(234, '2017-02-17', 'PAKİSTAN RUPİSİ', '0.03479', '0.03524'),
(235, '2017-02-20', 'ABD DOLARI', '3.6211', '3.6277'),
(236, '2017-02-20', 'AVUSTRALYA DOLARI', '2.7729', '2.7909'),
(237, '2017-02-20', 'DANİMARKA KRONU', '0.51654', '0.51908'),
(238, '2017-02-20', 'EURO', '3.8457', '3.8526'),
(239, '2017-02-20', 'İNGİLİZ STERLİNİ', '4.5018', '4.5253'),
(240, '2017-02-20', 'İSVİÇRE FRANGI', '3.6017', '3.6248'),
(241, '2017-02-20', 'İSVEÇ KRONU', '0.40454', '0.40873'),
(242, '2017-02-20', 'KANADA DOLARI', '2.7615', '2.7739'),
(243, '2017-02-20', 'KUVEYT DİNARI', '11.7954', '11.9498'),
(244, '2017-02-20', 'NORVEÇ KRONU', '0.43299', '0.43590'),
(245, '2017-02-20', 'SUUDİ ARABİSTAN RİYALİ', '0.96552', '0.96726'),
(246, '2017-02-20', 'JAPON YENİ', '3.1933', '3.2145'),
(247, '2017-02-20', 'BULGAR LEVASI', '1.9550', '1.9806'),
(248, '2017-02-20', 'RUMEN LEYİ', '0.84530', '0.85636'),
(249, '2017-02-20', 'RUS RUBLESİ', '0.06199', '0.06280'),
(250, '2017-02-20', 'İRAN RİYALİ', '0.01112', '0.01126'),
(251, '2017-02-20', 'ÇİN YUANI', '0.52361', '0.53047'),
(252, '2017-02-20', 'PAKİSTAN RUPİSİ', '0.03436', '0.03481'),
(253, '2017-02-21', 'ABD DOLARI', '3.6186', '3.6251'),
(254, '2017-02-21', 'AVUSTRALYA DOLARI', '2.7660', '2.7840'),
(255, '2017-02-21', 'DANİMARKA KRONU', '0.51323', '0.51575'),
(256, '2017-02-21', 'EURO', '3.8208', '3.8277'),
(257, '2017-02-21', 'İNGİLİZ STERLİNİ', '4.4902', '4.5136'),
(258, '2017-02-21', 'İSVİÇRE FRANGI', '3.5829', '3.6060'),
(259, '2017-02-21', 'İSVEÇ KRONU', '0.40142', '0.40557'),
(260, '2017-02-21', 'KANADA DOLARI', '2.7487', '2.7611'),
(261, '2017-02-21', 'KUVEYT DİNARI', '11.7803', '11.9344'),
(262, '2017-02-21', 'NORVEÇ KRONU', '0.43140', '0.43430'),
(263, '2017-02-21', 'SUUDİ ARABİSTAN RİYALİ', '0.96485', '0.96659'),
(264, '2017-02-21', 'JAPON YENİ', '3.1777', '3.1988'),
(265, '2017-02-21', 'BULGAR LEVASI', '1.9425', '1.9679'),
(266, '2017-02-21', 'RUMEN LEYİ', '0.84104', '0.85205'),
(267, '2017-02-21', 'RUS RUBLESİ', '0.06222', '0.06304'),
(268, '2017-02-21', 'İRAN RİYALİ', '0.01111', '0.01125'),
(269, '2017-02-21', 'ÇİN YUANI', '0.52275', '0.52959'),
(270, '2017-02-21', 'PAKİSTAN RUPİSİ', '0.03434', '0.03479'),
(271, '2017-02-22', 'ABD DOLARI', '3.6104', '3.6169'),
(272, '2017-02-22', 'AVUSTRALYA DOLARI', '2.7693', '2.7874'),
(273, '2017-02-22', 'DANİMARKA KRONU', '0.50963', '0.51213'),
(274, '2017-02-22', 'EURO', '3.7942', '3.8010'),
(275, '2017-02-22', 'İNGİLİZ STERLİNİ', '4.4920', '4.5154'),
(276, '2017-02-22', 'İSVİÇRE FRANGI', '3.5578', '3.5806'),
(277, '2017-02-22', 'İSVEÇ KRONU', '0.39928', '0.40342'),
(278, '2017-02-22', 'KANADA DOLARI', '2.7398', '2.7522'),
(279, '2017-02-22', 'KUVEYT DİNARI', '11.7532', '11.9069'),
(280, '2017-02-22', 'NORVEÇ KRONU', '0.42994', '0.43283'),
(281, '2017-02-22', 'SUUDİ ARABİSTAN RİYALİ', '0.96270', '0.96443'),
(282, '2017-02-22', 'JAPON YENİ', '3.1810', '3.2021'),
(283, '2017-02-22', 'BULGAR LEVASI', '1.9289', '1.9542'),
(284, '2017-02-22', 'RUMEN LEYİ', '0.83523', '0.84616'),
(285, '2017-02-22', 'RUS RUBLESİ', '0.06221', '0.06302'),
(286, '2017-02-22', 'İRAN RİYALİ', '0.01108', '0.01123'),
(287, '2017-02-22', 'ÇİN YUANI', '0.52191', '0.52874'),
(288, '2017-02-22', 'PAKİSTAN RUPİSİ', '0.03425', '0.03470'),
(289, '2017-02-23', 'ABD DOLARI', '3.5747', '3.5811'),
(290, '2017-02-23', 'AVUSTRALYA DOLARI', '2.7440', '2.7619'),
(291, '2017-02-23', 'DANİMARKA KRONU', '0.50665', '0.50914'),
(292, '2017-02-23', 'EURO', '3.7719', '3.7787'),
(293, '2017-02-23', 'İNGİLİZ STERLİNİ', '4.4462', '4.4694'),
(294, '2017-02-23', 'İSVİÇRE FRANGI', '3.5305', '3.5532'),
(295, '2017-02-23', 'İSVEÇ KRONU', '0.39619', '0.40030'),
(296, '2017-02-23', 'KANADA DOLARI', '2.7151', '2.7273'),
(297, '2017-02-23', 'KUVEYT DİNARI', '11.6434', '11.7957'),
(298, '2017-02-23', 'NORVEÇ KRONU', '0.42673', '0.42960'),
(299, '2017-02-23', 'SUUDİ ARABİSTAN RİYALİ', '0.95319', '0.95490'),
(300, '2017-02-23', 'JAPON YENİ', '3.1504', '3.1713'),
(301, '2017-02-23', 'BULGAR LEVASI', '1.9176', '1.9427'),
(302, '2017-02-23', 'RUMEN LEYİ', '0.83007', '0.84093'),
(303, '2017-02-23', 'RUS RUBLESİ', '0.06137', '0.06218'),
(304, '2017-02-23', 'İRAN RİYALİ', '0.01097', '0.01111'),
(305, '2017-02-23', 'ÇİN YUANI', '0.51686', '0.52363'),
(306, '2017-02-23', 'PAKİSTAN RUPİSİ', '0.03390', '0.03435'),
(307, '2017-02-24', 'ABD DOLARI', '3.5689', '3.5753'),
(308, '2017-02-24', 'AVUSTRALYA DOLARI', '2.7432', '2.7611'),
(309, '2017-02-24', 'DANİMARKA KRONU', '0.50775', '0.51024'),
(310, '2017-02-24', 'EURO', '3.7804', '3.7872'),
(311, '2017-02-24', 'İNGİLİZ STERLİNİ', '4.4699', '4.4932'),
(312, '2017-02-24', 'İSVİÇRE FRANGI', '3.5411', '3.5638'),
(313, '2017-02-24', 'İSVEÇ KRONU', '0.39571', '0.39980'),
(314, '2017-02-24', 'KANADA DOLARI', '2.7215', '2.7337'),
(315, '2017-02-24', 'KUVEYT DİNARI', '11.6216', '11.7737'),
(316, '2017-02-24', 'NORVEÇ KRONU', '0.42726', '0.43013'),
(317, '2017-02-24', 'SUUDİ ARABİSTAN RİYALİ', '0.95164', '0.95335'),
(318, '2017-02-24', 'JAPON YENİ', '3.1630', '3.1840'),
(319, '2017-02-24', 'BULGAR LEVASI', '1.9220', '1.9471'),
(320, '2017-02-24', 'RUMEN LEYİ', '0.83227', '0.84316'),
(321, '2017-02-24', 'RUS RUBLESİ', '0.06131', '0.06212'),
(322, '2017-02-24', 'İRAN RİYALİ', '0.01095', '0.01110'),
(323, '2017-02-24', 'ÇİN YUANI', '0.51644', '0.52320'),
(324, '2017-02-24', 'PAKİSTAN RUPİSİ', '0.03385', '0.03430'),
(325, '2017-02-27', 'ABD DOLARI', '3.5882', '3.5946'),
(326, '2017-02-27', 'AVUSTRALYA DOLARI', '2.7502', '2.7681'),
(327, '2017-02-27', 'DANİMARKA KRONU', '0.50991', '0.51242'),
(328, '2017-02-27', 'EURO', '3.7963', '3.8032'),
(329, '2017-02-27', 'İNGİLİZ STERLİNİ', '4.4479', '4.4711'),
(330, '2017-02-27', 'İSVİÇRE FRANGI', '3.5549', '3.5777'),
(331, '2017-02-27', 'İSVEÇ KRONU', '0.39585', '0.39994'),
(332, '2017-02-27', 'KANADA DOLARI', '2.7334', '2.7457'),
(333, '2017-02-27', 'KUVEYT DİNARI', '11.6867', '11.8397'),
(334, '2017-02-27', 'NORVEÇ KRONU', '0.42817', '0.43104'),
(335, '2017-02-27', 'SUUDİ ARABİSTAN RİYALİ', '0.95678', '0.95850'),
(336, '2017-02-27', 'JAPON YENİ', '3.1896', '3.2107'),
(337, '2017-02-27', 'BULGAR LEVASI', '1.9300', '1.9552'),
(338, '2017-02-27', 'RUMEN LEYİ', '0.83599', '0.84693'),
(339, '2017-02-27', 'RUS RUBLESİ', '0.06172', '0.06253'),
(340, '2017-02-27', 'İRAN RİYALİ', '0.01101', '0.01116'),
(341, '2017-02-27', 'ÇİN YUANI', '0.51929', '0.52608'),
(342, '2017-02-27', 'PAKİSTAN RUPİSİ', '0.03404', '0.03448'),
(343, '2017-02-28', 'ABD DOLARI', '3.6078', '3.6143'),
(344, '2017-02-28', 'AVUSTRALYA DOLARI', '2.7628', '2.7808'),
(345, '2017-02-28', 'DANİMARKA KRONU', '0.51339', '0.51591'),
(346, '2017-02-28', 'EURO', '3.8222', '3.8291'),
(347, '2017-02-28', 'İNGİLİZ STERLİNİ', '4.4777', '4.5011'),
(348, '2017-02-28', 'İSVİÇRE FRANGI', '3.5782', '3.6012'),
(349, '2017-02-28', 'İSVEÇ KRONU', '0.39763', '0.40174'),
(350, '2017-02-28', 'KANADA DOLARI', '2.7341', '2.7465'),
(351, '2017-02-28', 'KUVEYT DİNARI', '11.7491', '11.9028'),
(352, '2017-02-28', 'NORVEÇ KRONU', '0.43005', '0.43294'),
(353, '2017-02-28', 'SUUDİ ARABİSTAN RİYALİ', '0.96202', '0.96375'),
(354, '2017-02-28', 'JAPON YENİ', '3.2037', '3.2250'),
(355, '2017-02-28', 'BULGAR LEVASI', '1.9431', '1.9685'),
(356, '2017-02-28', 'RUMEN LEYİ', '0.84175', '0.85277'),
(357, '2017-02-28', 'RUS RUBLESİ', '0.06187', '0.06268'),
(358, '2017-02-28', 'İRAN RİYALİ', '0.01107', '0.01122'),
(359, '2017-02-28', 'ÇİN YUANI', '0.52229', '0.52912'),
(360, '2017-02-28', 'PAKİSTAN RUPİSİ', '0.03423', '0.03468');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
