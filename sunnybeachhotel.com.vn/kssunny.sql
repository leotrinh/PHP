-- phpMyAdmin SQL Dump
-- version 3.4.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Apr 27, 2012 at 09:08 PM
-- Server version: 5.0.92
-- PHP Version: 5.2.1

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `kssunny`
--

-- --------------------------------------------------------

--
-- Table structure for table `tgp_bien`
--

CREATE TABLE IF NOT EXISTS `tgp_bien` (
  `ten` varchar(32) NOT NULL,
  `gia_tri` text NOT NULL,
  PRIMARY KEY  (`ten`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tgp_bien`
--

INSERT INTO `tgp_bien` (`ten`, `gia_tri`) VALUES
('email', 'ahuynguyen73@yahoo.com'),
('lien_ket', ''),
('title', 'Sunny Beach Hotel Da Nang'),
('het_phong', '1');

-- --------------------------------------------------------

--
-- Table structure for table `tgp_cat`
--

CREATE TABLE IF NOT EXISTS `tgp_cat` (
  `id` varchar(20) NOT NULL,
  `ten` varchar(255) NOT NULL,
  `thu_tu` int(11) NOT NULL default '1',
  `_cms` int(1) NOT NULL default '0',
  `_product` int(1) default '0',
  `_gallery` int(1) NOT NULL default '0',
  `_doc` int(1) NOT NULL default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tgp_cat`
--

INSERT INTO `tgp_cat` (`id`, `ten`, `thu_tu`, `_cms`, `_product`, `_gallery`, `_doc`) VALUES
('gioi_thieu', 'Giá»›i thiá»‡u', 1, 0, 0, 1, 0),
('he_thong_phong', 'Há»‡ thá»‘ng phÃ²ng', 1, 1, 0, 0, 0),
('thu_vien_hinh', 'ThÆ° viá»‡n hÃ¬nh', 1, 0, 0, 1, 0),
('slide_background', 'Slide background', 1, 0, 0, 1, 0),
('tin_tuc', 'Tin tuc', 1, 1, 0, 0, 0),
('khuyen_mai', 'Khuyen mai', 1, 1, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `tgp_cms`
--

CREATE TABLE IF NOT EXISTS `tgp_cms` (
  `id` int(11) NOT NULL auto_increment,
  `cat` int(11) NOT NULL,
  `ten` varchar(255) NOT NULL,
  `chu_thich` text NOT NULL,
  `hinh` varchar(255) default 'no',
  `hinh_note` varchar(255) NOT NULL,
  `noi_dung` text NOT NULL,
  `hien_thi` int(1) NOT NULL default '1',
  `time` int(11) NOT NULL,
  `user` int(11) NOT NULL default '0',
  `luot_xem` int(11) NOT NULL default '0',
  `noi_bat` int(1) NOT NULL default '0',
  `photos` varchar(255) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=195 ;

--
-- Dumping data for table `tgp_cms`
--

INSERT INTO `tgp_cms` (`id`, `cat`, `ten`, `chu_thich`, `hinh`, `hinh_note`, `noi_dung`, `hien_thi`, `time`, `user`, `luot_xem`, `noi_bat`, `photos`) VALUES
(183, 5, 'PhÃ²ng Superior', 'CÃ³ 7 phÃ²ng - giÃ¡: 550.000 VNÄ', '183.jpg', '', '<strong>Äáº·c Ä‘iá»ƒm ph&ograve;ng:</strong><br />\r\nDiá»‡n t&iacute;ch má»—i ph&ograve;ng 18m2 trong Ä‘&oacute; buá»“ng vá»‡ sinh 3m2<br />\r\n<br />\r\n<strong>Trang thiáº¿t bá»‹ trong ph&ograve;ng <br />\r\n<br />\r\n</strong>- Tivi 21&rdquo; truyá»n h&igrave;nh c&aacute;c k&ecirc;nh Viá»‡t Nam v&agrave; quá»‘c táº¿.<br />\r\n- Buá»“ng táº¯m v&aacute;ch k&iacute;nh tiá»‡n nghi.<br />\r\n- 01 gÆ°á»ng 1,6m hay 02 gÆ°á»ng 1,1m.<br />\r\n- B&agrave;n gháº¿ l&agrave;m viá»‡c.<br />\r\n- B&agrave;n gháº¿ uá»‘ng tr&agrave;.<br />\r\n- Äiá»u ho&agrave; nhiá»‡t Ä‘á»™ SHARP má»›i ho&agrave;n to&agrave;n.<br />\r\n- Tá»§ láº¡nh Sanyo má»›i ho&agrave;n to&agrave;n.<br />\r\n- Há»‡ thá»‘ng truy cáº­p internet kh&ocirc;ng d&acirc;y Wifi.<br />\r\n- ÄÆ°á»ng truyá»n Internet tá»‘c Ä‘á»™ cao ADSL.<br />\r\n- Äiá»‡n thoáº¡i Panasonic trong nÆ°á»›c v&agrave; quá»‘c táº¿.<br />\r\n- Há»‡ thá»‘ng nÆ°á»›c n&oacute;ng ARISTON.<br />\r\n- Thiáº¿t bá»‹ vá»‡ sinh American Standard ho&agrave;n to&agrave;n má»›i.<br />\r\n- Ná»™i tháº¥t Ä‘á»“ gá»— giÆ°á»ng ngá»§, b&agrave;n l&agrave;m viá»‡c, tá»§ quáº§n &aacute;o theo ti&ecirc;u chuáº©n kh&aacute;ch sáº¡n cao cáº¥p.<br />\r\n- Ná»‡m l&ograve; xo, chÄƒn, ga, gá»‘i theo ti&ecirc;u chuáº©n kh&aacute;ch sáº¡n cao cáº¥p.', 1, 1330448400, 1, 0, 0, '183_862106588.jpg;183_1310620108.jpg'),
(181, 5, 'PhÃ²ng Suite', 'CÃ³ 3 phÃ²ng - giÃ¡: 800.000 VNÄ', '181.jpg', '', '<strong>Äáº·c Ä‘iá»ƒm ph&ograve;ng:</strong><br />\r\nDiá»‡n t&iacute;ch má»—i ph&ograve;ng 32m2 trong Ä‘&oacute; buá»“ng vá»‡ sinh 5,5m2.<br />\r\n<br />\r\n<strong>Trang thiáº¿t bá»‹ trong ph&ograve;ng:<br />\r\n-</strong> Tivi LCD 32&rdquo; truyá»n h&igrave;nh c&aacute;c k&ecirc;nh Viá»‡t nam v&agrave; quá»‘c táº¿<br />\r\n- Bá»“n táº¯m náº±m<br />\r\n- 01 gÆ°á»ng 1,8m<br />\r\n- Cá»­a sá»• c&oacute; táº§m nh&igrave;n ra ngo&agrave;i<br />\r\n- B&agrave;n gháº¿ salon<br />\r\n- B&agrave;n gháº¿ l&agrave;m viá»‡c<br />\r\n- B&agrave;n gháº¿ uá»‘ng tr&agrave;<br />\r\n- Äiá»u ho&agrave; nhiá»‡t Ä‘á»™ SHARP má»›i ho&agrave;n to&agrave;n<br />\r\n- Tá»§ láº¡nh Sanyo má»›i ho&agrave;n to&agrave;n<br />\r\n- Há»‡ thá»‘ng truy cáº­p internet kh&ocirc;ng d&acirc;y Wifi<br />\r\n- ÄÆ°á»ng truyá»n Internet tá»‘c Ä‘á»™ cao ADSL<br />\r\n- Äiá»‡n thoáº¡i Panasonic trong nÆ°á»›c v&agrave; quá»‘c táº¿<br />\r\n- Há»‡ thá»‘ng nÆ°á»›c n&oacute;ng ARISTON<br />\r\n- Thiáº¿t bá»‹ vá»‡ sinh American Standard ho&agrave;n to&agrave;n má»›i<br />\r\n- Ná»™i tháº¥t Ä‘á»“ gá»— giÆ°á»ng ngá»§, b&agrave;n l&agrave;m viá»‡c, tá»§ quáº§n &aacute;o theo ti&ecirc;u chuáº©n kh&aacute;ch sáº¡n cao cáº¥p<br />\r\n- Ná»‡m l&ograve; xo, chÄƒn, ga, gá»‘i theo ti&ecirc;u chuáº©n kh&aacute;ch sáº¡n cao cáº¥p<br />', 1, 1330448400, 1, 0, 0, '181_50155926.jpg;181_447242743.jpg;181_772976314.jpg;181_350767708.jpg;181_1217506016.jpg'),
(182, 5, 'PhÃ²ng Deluxe ', 'CÃ³ 11 phÃ²ng - giÃ¡: 650.000 VNÄ', '182.jpg', '', '<strong>Äáº·c Ä‘iá»ƒm ph&ograve;ng:</strong><br />\r\nDiá»‡n t&iacute;ch má»—i ph&ograve;ng 25-32m2 trong Ä‘&oacute; buá»“ng vá»‡ sinh 4-5m2. <br />\r\n<br />\r\n<strong>Trang thiáº¿t bá»‹ trong ph&ograve;ng:</strong><br />\r\n<br />\r\n- Tivi 21&rdquo; truyá»n h&igrave;nh c&aacute;c k&ecirc;nh Viá»‡t nam v&agrave; quá»‘c táº¿.<br />\r\n- Bá»“n táº¯m náº±m hay buá»“ng táº¯m v&aacute;ch k&iacute;nh tiá»‡n nghi.<br />\r\n- 02 gÆ°á»ng 1,2m hay 01 gÆ°á»ng 1,1m &amp; 01 gÆ°á»ng 1,6m hay 01 gÆ°á»ng 1,8m.<br />\r\n- B&agrave;n gháº¿ l&agrave;m viá»‡c.<br />\r\n- B&agrave;n gháº¿ uá»‘ng tr&agrave;.<br />\r\n- Äiá»u ho&agrave; nhiá»‡t Ä‘á»™ SHARP má»›i ho&agrave;n to&agrave;n.<br />\r\n- Tá»§ láº¡nh Sanyo má»›i ho&agrave;n to&agrave;n.<br />\r\n- Há»‡ thá»‘ng truy cáº­p internet kh&ocirc;ng d&acirc;y Wifi.<br />\r\n- ÄÆ°á»ng truyá»n Internet tá»‘c Ä‘á»™ cao ADSL.<br />\r\n- Äiá»‡n thoáº¡i Panasonic trong nÆ°á»›c v&agrave; quá»‘c táº¿.<br />\r\n- Há»‡ thá»‘ng nÆ°á»›c n&oacute;ng ARISTON.<br />\r\n- Thiáº¿t bá»‹ vá»‡ sinh American Standard ho&agrave;n to&agrave;n má»›i.<br />\r\n- Ná»™i tháº¥t Ä‘á»“ gá»— giÆ°á»ng ngá»§, b&agrave;n l&agrave;m viá»‡c, tá»§ quáº§n &aacute;o theo ti&ecirc;u chuáº©n kh&aacute;ch sáº¡n cao cáº¥p.<br />\r\n- Ná»‡m l&ograve; xo, chÄƒn, ga, gá»‘i theo ti&ecirc;u chuáº©n kh&aacute;ch sáº¡n cao cáº¥p.', 1, 1330448400, 1, 0, 0, '182_1263935914.jpg;182_438093387.jpg;182_583542703.jpg'),
(191, 6, 'BÃ¡n Ä‘áº£o sÆ¡n trÃ ', 'BÃ¡n Ä‘áº£o SÆ¡n TrÃ  (ÄÃ  Náºµng) cÃ³ diá»‡n tÃ­ch gáº§n 4400ha, cÃ¡ch trung tÃ¢m ÄÃ  Náºµng khoáº£ng 7km, hiá»‡n Ä‘ang Ä‘Æ°á»£c xÃ¢y dá»±ng thÃ nh má»™t sá»‘ khu du lá»‹ch vá»›i ...', '191.jpg', '', '<div style="text-align: justify;">c&aacute;c quáº§n thá»ƒ san h&ocirc; náº±m ráº¥t gáº§n bá», s&oacute;ng á»Ÿ hai b&atilde;i n&agrave;y &ecirc;m Ä‘á»m, an to&agrave;n cho du lá»‹ch láº·n.<br />\r\n&nbsp;</div>\r\n<div style="text-align: center;"><img width="500" height="371" src="/uploads/sontra1.jpg" alt="" /></div>\r\n<div style="text-align: justify;"><br />\r\nBao quanh SÆ¡n Tr&agrave; l&agrave; biá»ƒn, s&aacute;t ngay rá»«ng c&acirc;y l&agrave; b&atilde;i c&aacute;t tráº¯ng má»‹n, háº¹p thoáº£i cháº¡y d&agrave;i theo bá» biá»ƒn. á»ž nhá»¯ng nÆ¡i váº¯ng ngÆ°á»i, khá»‰ thÆ°á»ng theo rá»«ng xuá»‘ng b&atilde;i biá»ƒn chÆ¡i Ä‘&ugrave;a. Xen giá»¯a c&aacute;t, nÆ°á»›c biá»ƒn, c&acirc;y l&agrave; nhá»¯ng h&ograve;n Ä‘&aacute; táº£ng nhiá»u h&igrave;nh dáº¡ng Ä‘áº¹p máº¯t. H&ograve;n th&igrave; tr&ocirc;ng giá»‘ng c&aacute; c&oacute;c nghi&ecirc;ng m&igrave;nh tr&ecirc;n b&atilde;i c&aacute;t, h&ograve;n giá»‘ng Ä‘&ocirc;i r&ugrave;a ngáº©ng Ä‘áº§u l&ecirc;n Ä‘&ugrave;a bá»¡n vá»›i nhau, h&ograve;n h&igrave;nh c&ocirc; g&aacute;i táº¯m biá»ƒn... Bá» biá»ƒn ph&iacute;a báº¯c c&oacute; gi&oacute; v&agrave; s&oacute;ng máº¡nh, th&iacute;ch há»£p vá»›i du lá»‹ch máº¡o hiá»ƒm, ph&iacute;a nam SÆ¡n Tr&agrave;, biá»ƒn &ecirc;m dá»‹u, an to&agrave;n. SÆ¡n Tr&agrave; c&oacute; khoáº£ng 20 con suá»‘i cháº£y, cung cáº¥p nÆ°á»›c sinh hoáº¡t chá»§ yáº¿u cho nh&acirc;n d&acirc;n sá»‘ng xung quanh. NÆ°á»›c suá»‘i á»Ÿ SÆ¡n Tr&agrave; c&ograve;n Ä‘Æ°á»£c coi l&agrave; má»™t trong nhá»¯ng nguá»“n t&agrave;i nguy&ecirc;n c&oacute; gi&aacute; trá»‹ kinh táº¿ v&agrave; xuáº¥t kháº©u. SÆ¡n Tr&agrave; c&ograve;n c&oacute; ngá»n háº£i Ä‘Äƒng Ti&ecirc;n Sa l&agrave; má»™t trong nhá»¯ng nh&agrave; Ä‘&egrave;n Ä‘áº¹p v&agrave; lá»›n nháº¥t Viá»‡t Nam, Ä‘Æ°á»£c x&acirc;y dá»±ng láº¡i nÄƒm 1958.<br />\r\n&nbsp;</div>\r\n<div style="text-align: center;"><img width="500" height="324" src="/uploads/sontra.jpg" alt="" /></div>\r\n<div style="text-align: justify;"><br />\r\nSÆ¡n Tr&agrave; kh&ocirc;ng chá»‰ quyáº¿n rÅ© Ä‘á»‘i vá»›i kh&aacute;ch du lá»‹ch m&agrave; c&ograve;n l&agrave; nÆ¡i t&igrave;m Ä‘áº¿n cá»§a nhiá»u nh&agrave; khoa há»c sinh th&aacute;i. Khu báº£o tá»“n thi&ecirc;n nhi&ecirc;n SÆ¡n Tr&agrave; vá»›i há»‡ sinh th&aacute;i rá»«ng thÆ°á»ng xanh l&aacute; rá»™ng vá»›i nhiá»u lo&agrave;i c&acirc;y báº£n Ä‘á»‹a, Ä‘áº·c biá»‡t l&agrave; c&oacute; c&acirc;y ch&ograve; Ä‘en, dáº§u l&aacute; b&oacute;ng, cháº¡y d&agrave;i tá»›i ven biá»ƒn táº¡o n&ecirc;n nhá»¯ng b&atilde;i biá»ƒn thÆ¡ má»™ng. á»ž Ä‘&acirc;y c&oacute; nhiá»u c&acirc;y lá»›n vá»›i nhiá»u h&igrave;nh dáº¡ng ká»³ láº¡. Sá»‘ lo&agrave;i thá»±c váº­t báº­c cao l&ecirc;n tá»›i gáº§n 1000 lo&agrave;i, thuá»™c 483 chi trong Ä‘&oacute; c&oacute; 22 lo&agrave;i qu&iacute; hiáº¿m nhÆ° c&acirc;y Cá»‘t to&aacute;i bá»•, c&acirc;y Váº¡n tuáº¿ lÆ°á»£c, Re hÆ°Æ¡ng, Cáº©m Lai B&agrave; Rá»‹a v&agrave; 143 lo&agrave;i c&acirc;y l&agrave;m thuá»‘c, 104 c&acirc;y cáº£nh. SÆ¡n Tr&agrave; c&oacute; nhá»¯ng quáº§n há»‡ tráº£ng c&acirc;y bá»¥i, tráº£ng cá» phong ph&uacute;, cháº£y d&agrave;i xuá»‘ng ven biá»ƒn. á»ž khu báº£o tá»“n n&agrave;y c&ograve;n c&oacute; 30 lo&agrave;i th&uacute; thuá»™c 15 há», 51 lo&agrave;i chim thuá»™c 25 há» v&agrave; 15 lo&agrave;i b&ograve; s&aacute;t v&agrave; 3 lo&agrave;i áº¿ch nh&aacute;i. á»ž SÆ¡n Tr&agrave; c&oacute; phá»• biáº¿n c&aacute;c loáº¡i Ä‘á»™ng váº­t qu&iacute; hiáº¿m nhÆ° voá»c ch&agrave; v&agrave; c&ograve;n khoáº£ng 50-60 c&aacute; thá»ƒ, khá»‰ Ä‘u&ocirc;i d&agrave;i, lá»£n rá»«ng, Ä‘á»“i, chá»“n báº¡c m&aacute;, s&oacute;c ch&acirc;n v&agrave;ng, cáº§y v&ograve;i Ä‘á»‘m, g&agrave; tiá»n máº·t Ä‘á», v&iacute;ch.</div>', 1, 1333598495, 1, 3, 0, NULL),
(192, 6, 'ÄÃ¨o Háº£i VÃ¢n - thiÃªn háº¡ Ä‘á»‡ nháº¥t hÃ¹ng quan', 'TrÃªn con Ä‘Æ°á»ng xuyÃªn Viá»‡t ra Báº¯c vÃ o Nam, Háº£i VÃ¢n luÃ´n luÃ´n lÃ  má»™t Ä‘á»‹a danh áº¥n tÆ°á»£ng. ÄÃ¢y lÃ  Ä‘Ã¨o cao nháº¥t trong cÃ¡c Ä‘Ã¨o á»Ÿ Viá»‡t Nam (khoáº£ng 500m so vá»›i má»±c nÆ°á»›c biá»ƒn), Ä‘áº§y hiá»ƒm trá»Ÿ vÃ  cÅ©ng lÃ  Ä‘á»‰nh nÃºi cuá»‘i cÃ¹ng cá»§a má»™t máº¡ch TrÆ°á»ng SÆ¡n Ä‘Ã¢m ngang ra biá»ƒn. ', '192.jpg', '', '<div style="text-align: justify;">Trong Phá»§ Bi&ecirc;n táº¡p lá»¥c, L&ecirc; Qu&yacute; Ä&ocirc;n tá»«ng nháº­n x&eacute;t: Háº£i V&acirc;n dÆ°á»›i s&aacute;t bá» biá»ƒn, tr&ecirc;n chá»c tá»«ng m&acirc;y l&agrave; giá»›i háº¡n cá»§a hai xá»© Thuáº­n H&oacute;a v&agrave; Quáº£ng Nam. HÆ¡n 6 tháº¿ ká»· trÆ°á»›c, v&ugrave;ng Ä‘áº¥t n&agrave;y thuá»™c vá» 2 ch&acirc;u &Ocirc;, R&iacute; cá»§a vÆ°Æ¡ng quá»‘c ChÄƒmpa, Ä‘Æ°á»£c vua ChÄƒmpa l&agrave; Cháº¿ M&acirc;n cáº¯t l&agrave;m s&iacute;nh lá»… cáº§u h&ocirc;n c&ocirc;ng ch&uacute;a Huyá»n Tr&acirc;n Ä‘á»i Tráº§n. Hiá»‡n nay, Ä‘&egrave;o Háº£i V&acirc;n l&agrave; ranh giá»›i giá»¯a tá»‰nh Thá»«a Thi&ecirc;n - Huáº¿ v&agrave; th&agrave;nh phá»‘ Ä&agrave; Náºµng.<br />\r\n&nbsp;</div>\r\n<div style="text-align: center;"><img alt="" src="/uploads/haivan.jpg" /></div>\r\n<div style="text-align: justify;"><br />\r\nNgay tr&ecirc;n Ä‘á»‰nh d&egrave;o, dáº¥u váº¿t tiá»n nh&acirc;n váº«n c&ograve;n Ä‘á»ƒ láº¡i: nhá»¯ng cá»­a Ä‘&egrave;o v&agrave; th&agrave;nh lÅ©y Ä‘áº¯p ngang. Cá»­a tr&ocirc;ng vá» phá»§ Thá»«a Thi&ecirc;n Ä‘á» ba chá»¯: Háº£i V&acirc;n Quan, cá»­a tr&ocirc;ng xuá»‘ng Quáº£ng Nam Ä‘á» Thi&ecirc;n háº¡ Ä‘á»‡ nháº¥t h&ugrave;ng quan (Ä‘&acirc;y l&agrave; tá»« Ä‘á» táº·ng cá»§a vua L&ecirc; Th&aacute;nh T&ocirc;n khi dá»«ng ch&acirc;n ngáº¯m cáº£nh nÆ¡i n&agrave;y). Tháº­t váº­y, tá»« Nam ch&iacute; Báº¯c, kh&ocirc;ng c&oacute; nÆ¡i n&agrave;o Ä‘&egrave;o cao ch&ecirc;nh v&ecirc;nh, cáº£nh Ä‘áº¹p lung linh, huyá»n áº£o nhÆ° Háº£i V&acirc;n. ÄÆ°á»ng Ä‘&egrave;o quanh co, kh&uacute;c khuá»·u men theo triá»n n&uacute;i, uá»‘n lÆ°á»£n nhÆ° d&atilde;i lá»¥a váº¯t ngang giá»¯a trá»i m&acirc;y. Chá»‰ cÄƒn cá»© v&agrave;o t&ecirc;n gá»i, cÅ©ng Ä‘á»§ h&igrave;nh dung Háº£i V&acirc;n l&agrave; tháº¿ giá»›i cá»§a gi&oacute; v&agrave; m&acirc;y. Gi&oacute; nhÆ° Ä‘&agrave;n ngá»±a giong ruá»•i dáº·m trÆ°á»ng, m&acirc;y nhÆ° tá»« tr&ecirc;n trá»i tu&ocirc;n xuá»‘ng. BÆ°á»›c ch&acirc;n ngÆ°á»i Ä‘áº¿n Ä‘&acirc;y nhÆ° láº¡c v&agrave;o c&otilde;i n&agrave;o kh&aacute;c láº¡, huyá»n áº£o kh&oacute;i sÆ°Æ¡ng. Cao B&aacute; Qu&aacute;t, má»™t nh&agrave; thÆ¡ má»™t Ä‘á»i chá»‰ biáº¿t láº¡y hoa mai (Nháº¥t sinh Ä‘&ecirc; thá»§ b&aacute;i hoa mai) cÅ©ng Ä‘&atilde; pháº£i sá»¯ng sá»: Nháº¥t b&iacute;ch ngÆ°ng vi giá»›i, Tr&ugrave;ng v&acirc;n nhiá»…u t&aacute;c th&agrave;nh (Biáº¿c má»™t d&atilde;i l&agrave;m má»‘c, M&acirc;y mu&ocirc;n tr&ugrave;ng dá»±ng th&agrave;nh). CÅ©ng tá»« Ä‘&acirc;y, v&agrave;o nhá»¯ng ng&agrave;y Ä‘áº¹p trá»i, du kh&aacute;ch c&oacute; thá»ƒ tháº¥y r&otilde; to&agrave;n cáº£nh th&agrave;nh phá»‘ Ä&agrave; Náºµng, Cáº£ng Ti&ecirc;n Sa - B&aacute;n Ä‘áº£o SÆ¡n Tr&agrave;, C&ugrave; Lao Ch&agrave;m... v&agrave; nhá»¯ng b&atilde;i c&aacute;t v&agrave;ng cháº¡y d&agrave;i &ocirc;m láº¥y máº·t nÆ°á»›c bao la trong xanh cá»§a biá»ƒn.<br />\r\n<br />\r\nNhá»¯ng g&igrave; thi&ecirc;n nhi&ecirc;n ban táº·ng, qua thá»i gian v&agrave; qua b&agrave;n tay con ngÆ°á»i, sáº½ trá»Ÿ th&agrave;nh nhá»¯ng gi&aacute; trá»‹ nh&acirc;n vÄƒn. Äáº¿n Háº£i V&acirc;n l&agrave; Ä‘áº¿n vá»›i nÆ¡i giao thoa giá»¯a hai v&ugrave;ng Ä‘áº¥t, l&agrave; thá»a m&atilde;n t&acirc;m l&yacute; chiáº¿m lÄ©nh Ä‘á»‰nh cao, h&ograve;a m&igrave;nh trong &acirc;m vá»ng sá»­ thi cá»§a bao dáº¥u ch&acirc;n ngÆ°á»i Viá»‡t xÆ°a Ä‘i má»Ÿ c&otilde;i, bá»“i há»“i thÆ°Æ¡ng nhá»› qu&aacute; khá»© tháº³m s&acirc;u cá»§a má»™t kh&uacute;c ruá»™t miá»n Trung.</div>', 1, 1333558800, 1, 0, 0, NULL),
(193, 6, 'ThÃ¡nh Ä‘á»‹a Má»¹ SÆ¡n', 'Vá»‹ trÃ­: Má»¹ SÆ¡n thuá»™c xÃ£ Duy PhÃº, huyá»‡n Duy XuyÃªn, tá»‰nh Quáº£ng Nam cÃ¡ch thÃ nh phá»‘ ÃÃ  Náºµng khoáº£ng 70km vá» phÃ­a tÃ¢y nam, cÃ¡ch TrÃ  Kiá»‡u khoáº£ng 10km vá» phÃ­a tÃ¢y trong má»™t thung lÅ©ng kÃ­n Ä‘Ã¡o.', '193.jpg', '', '<div style="text-align: justify;">&ETH;áº·c Ä‘iá»ƒm: Má»¹ SÆ¡n l&agrave; th&aacute;nh Ä‘á»‹a áº¤n Äá»™ gi&aacute;o cá»§a vÆ°Æ¡ng quá»‘c ChÄƒmpa. Nhá»¯ng Ä‘á»n thá» ch&iacute;nh á»Ÿ Má»¹ SÆ¡n thá» má»™t bá»™ Linga hoáº·c h&igrave;nh tÆ°á»£ng cá»§a tháº§n Siva - &ETH;áº¥ng báº£o há»™ cá»§a c&aacute;c d&ograve;ng vua ChÄƒmpa.<br />\r\n<br />\r\nNhá»¯ng d&ograve;ng chá»¯ ghi tr&ecirc;n táº¥m bia sá»›m nháº¥t á»Ÿ Má»¹ SÆ¡n, c&oacute; ni&ecirc;n Ä‘áº¡i khoáº£ng tháº¿ ká»· thá»© 4 cho biáº¿t vua Bhadresvara Ä‘&atilde; x&acirc;y dá»±ng má»™t ng&ocirc;i Ä‘á»n Ä‘á»ƒ d&acirc;ng c&uacute;ng vua tháº§n Siva- Bhadravarman. HÆ¡n hai tháº¿ ká»· sau Ä‘&oacute;, ng&ocirc;i Ä‘á»n Ä‘áº§u ti&ecirc;n Ä‘Æ°á»£c x&acirc;y dá»±ng báº±ng gá»— Ä‘&atilde; bá»‹ thi&ecirc;u huá»· trong má»™t tráº­n há»a hoáº¡n lá»›n.<br />\r\n&nbsp;</div>\r\n<div style="text-align: center;"><img width="500" height="333" src="/uploads/my son(1).jpg" alt="" /></div>\r\n<div style="text-align: justify;"><br />\r\nV&agrave;o Ä‘áº§u tháº¿ ká»· thá»© 7, vua Sambhuvarman Ä‘&atilde; x&acirc;y dá»±ng láº¡i ng&ocirc;i Ä‘á»n báº±ng nhá»¯ng váº­t liá»‡u bá»n vá»¯ng hÆ¡n, c&ograve;n tá»“n táº¡i Ä‘áº¿n ng&agrave;y nay. C&aacute;c triá»u vua sau Ä‘&oacute; Ä‘á»u tu sá»­a c&aacute;c Ä‘á»n th&aacute;p cÅ© v&agrave; x&acirc;y dá»±ng Ä‘á»n th&aacute;p má»›i Ä‘á»ƒ d&acirc;ng l&ecirc;n c&aacute;c vá»‹ tháº§n cá»§a há». Vá»›i hÆ¡n 70 c&ocirc;ng tr&igrave;nh kiáº¿n tr&uacute;c báº±ng gáº¡ch Ä‘&aacute;, Ä‘Æ°á»£c x&acirc;y dá»±ng tá»« tháº¿ ká»· thá»© 4 Ä‘áº¿n tháº¿ ká»· 13, Má»¹ SÆ¡n trá»Ÿ th&agrave;nh trung t&acirc;m kiáº¿n tr&uacute;c quan trá»ng nháº¥t cá»§a VÆ°Æ¡ng quá»‘c ChÄƒmpa. Vá»‹ tháº§n Ä‘Æ°á»£c t&ocirc;n thá» á»Ÿ Má»¹ SÆ¡n l&agrave; Bhadravarman, l&agrave; vá»‹ vua Ä‘&atilde; s&aacute;ng láº­p d&ograve;ng vua Ä‘áº§u ti&ecirc;n cá»§a v&ugrave;ng Amaravati v&agrave;o cuá»‘i tháº¿ ká»· 4 káº¿t há»£p vá»›i t&ecirc;n tháº§n Siva, trá»Ÿ th&agrave;nh t&iacute;n ngÆ°á»¡ng ch&iacute;nh thá» tháº§n - vua v&agrave; tá»• ti&ecirc;n ho&agrave;ng tá»™c.<br />\r\n<br />\r\nV&agrave;o nÄƒm 1898, di t&iacute;ch Má»¹ SÆ¡n Ä‘Æ°á»£c ph&aacute;t hiá»‡n bá»Ÿi má»™t há»c giáº£ ngÆ°á»i Ph&aacute;p t&ecirc;n l&agrave; M.C Paris. V&agrave;o nhá»¯ng nÄƒm Ä‘áº§u tháº¿ ká»· 20 n&agrave;y, 2 nh&agrave; nghi&ecirc;n cá»©u cá»§a Viá»…n th&ocirc;ng Ph&aacute;p l&agrave; L.Finot v&agrave; L.de Lajonqui&egrave;re v&agrave; nh&agrave; kiáº¿n tr&uacute;c sÆ° ki&ecirc;m kháº£o cá»• há»c H. Parmentier Ä‘&atilde; Ä‘áº¿n Má»¹ SÆ¡n Ä‘á»ƒ nghi&ecirc;n cá»©u vÄƒn bia v&agrave; nghá»‡ thuáº­t kiáº¿n tr&uacute;c, Ä‘i&ecirc;u kháº¯c ChÄƒm. Cho Ä‘áº¿n nhá»¯ng nÄƒm 1903-1904 nhá»¯ng t&agrave;i liá»‡u cÆ¡ báº£n nháº¥t vá» bia k&yacute; v&agrave; nghá»‡ thuáº­t kiáº¿n tr&uacute;c Má»¹ SÆ¡n Ä‘&atilde; Ä‘Æ°á»£c L.Finot ch&iacute;nh thá»©c c&ocirc;ng bá»‘.<br />\r\n&nbsp;</div>\r\n<div style="text-align: center;"><img width="500" height="352" src="/uploads/my son1(1).jpg" alt="" /></div>\r\n<div style="text-align: justify;"><br />\r\nTiá»n th&acirc;n cá»§a quáº§n thá»ƒ kiáº¿n tr&uacute;c Má»¹ SÆ¡n cá»• k&iacute;nh n&agrave;y, theo vÄƒn bia Ä‘á»ƒ láº¡i l&agrave; má»™t ng&ocirc;i Ä‘á»n l&agrave;m báº±ng gá»— Ä‘á»ƒ thá» tháº§n Siva Bhadravarman. NhÆ°ng Ä‘áº¿n khoáº£ng cuá»‘i tháº¿ ká»· 6, má»™t cÆ¡n hoáº£ hoáº¡n Ä‘&atilde; thi&ecirc;u ch&aacute;y ng&ocirc;i Ä‘á»n gá»—. Bá»©c m&agrave;n lá»‹ch sá»­ Ä‘&atilde; Ä‘Æ°á»£c c&aacute;c nh&agrave; khoa há»c v&eacute;n dáº§n l&ecirc;n th&ocirc;ng qua nhá»¯ng bia k&yacute; v&agrave; lá»‹ch sá»­ nhiá»u triá»u Ä‘áº¡i xÆ°a cho ta tháº¥y Má»¹ SÆ¡n l&agrave; khu th&aacute;nh Ä‘á»‹a quan trá»ng nháº¥t cá»§a d&acirc;n tá»™c ChÄƒm suá»‘t tá»« cuá»‘i tháº¿ ká»· 4 Ä‘áº¿n tháº¿ ká»· 15.<br />\r\n<br />\r\nBáº±ng váº­t liá»‡u gáº¡ch nung v&agrave; Ä‘&aacute; sa tháº¡ch, trong nhiá»u tháº¿ ká»· ngÆ°á»i ChÄƒm Ä‘&atilde; dá»±ng l&ecirc;n má»™t quáº§n thá»ƒ kiáº¿n tr&uacute;c Ä‘á»n th&aacute;p Ä‘á»™c Ä‘&aacute;o, li&ecirc;n ho&agrave;n: &ETH;á»n ch&iacute;nh thá» Linga-Yoni biá»ƒu tÆ°á»£ng cá»§a nÄƒng lá»±c s&aacute;ng táº¡o. B&ecirc;n cáº¡nh th&aacute;p ch&iacute;nh (Kalan) l&agrave; nhá»¯ng th&aacute;p thá» nhiá»u vá»‹ tháº§n kh&aacute;c hoáº·c thá» nhá»¯ng vá»‹ vua Ä‘&atilde; máº¥t. Máº·c d&ugrave; thá»i gian c&ugrave;ng chiáº¿n tranh Ä‘&atilde; biáº¿n nhiá»u khu th&aacute;p th&agrave;nh pháº¿ t&iacute;ch nhÆ°ng nhá»¯ng hiá»‡n váº­t Ä‘i&ecirc;u kháº¯c, kiáº¿n tr&uacute;c c&ograve;n láº¡i cho Ä‘áº¿n ng&agrave;y nay váº«n c&ograve;n Ä‘á»ƒ láº¡i nhá»¯ng phong c&aacute;ch giai Ä‘oáº¡n lá»‹ch sá»­ má»¹ thuáº­t d&acirc;n tá»™c ChÄƒm, nhá»¯ng kiá»‡t t&aacute;c Ä‘&aacute;nh dáº¥u má»™t thá»i huy ho&agrave;ng cá»§a vÄƒn ho&aacute; kiáº¿n tr&uacute;c ChÄƒmpa cÅ©ng nhÆ° cá»§a Ä&ocirc;ng Nam &Aacute;.<br />\r\n<br />\r\nMá»—i thá»i ká»³ lá»‹ch sá»­, kiáº¿n tr&uacute;c mang phong c&aacute;ch ri&ecirc;ng, cÅ©ng nhÆ° má»—i Ä‘á»n th&aacute;p thá» nhá»¯ng vá»‹ tháº§n, nhá»¯ng triá»u vua kh&aacute;c nhau táº¡o n&ecirc;n Ä‘Æ°á»ng n&eacute;t kiáº¿n tr&uacute;c Ä‘áº§y dáº¥u áº¥n, nhÆ°ng nh&igrave;n chung th&aacute;p Ch&agrave;m Ä‘á»u Ä‘Æ°á»£c x&acirc;y dá»±ng tr&ecirc;n má»™t máº·t báº±ng tá»© gi&aacute;c, chia l&agrave;m 3 pháº§n: &ETH;áº¿ th&aacute;p biá»ƒu hiá»‡n tháº¿ giá»›i tráº§n gian, vá»¯ng cháº¯c. Th&acirc;n th&aacute;p tÆ°á»£ng h&igrave;nh cá»§a tháº¿ giá»›i tháº§n linh, ká»³ b&iacute; m&ecirc; hoáº·c. Pháº§n tr&ecirc;n c&ugrave;ng l&agrave; h&igrave;nh ngÆ°á»i d&acirc;ng hoa tr&aacute;i theo nghi lá»… hoáº·c h&igrave;nh c&acirc;y l&aacute;, chim mu&ocirc;ng, voi, sÆ° tá»­... Ä‘á»™ng váº­t gáº§n gÅ©i vá»›i t&ocirc;n gi&aacute;o v&agrave; cuá»™c sá»‘ng con ngÆ°á»i.<br />\r\n&nbsp;</div>\r\n<div style="text-align: center;"><img width="500" height="375" src="/uploads/my son2(1).jpg" alt="" /></div>\r\n<div style="text-align: justify;"><br />\r\nTheo c&aacute;c nh&agrave; nghi&ecirc;n cá»©u th&aacute;p Ch&agrave;m cá»•, nghá»‡ thuáº­t kiáº¿n tr&uacute;c th&aacute;p Ch&agrave;m táº¡i Má»¹ SÆ¡n há»™i tá»¥ Ä‘Æ°á»£c nhiá»u phong c&aacute;ch; mang t&iacute;nh li&ecirc;n tá»¥c tá»« phong c&aacute;ch cá»• tháº¿ ká»· 7 Ä‘áº¿n tháº¿ ká»· 8; phong c&aacute;ch Ho&agrave; Lai tháº¿ ká»· 8 Ä‘áº¿n tháº¿ ká»· thá»© 9; phong c&aacute;ch &ETH;á»“ng DÆ°Æ¡ng tá»« giá»¯a tháº¿ ká»· 9; phong c&aacute;ch Má»¹ SÆ¡n v&agrave; chuyá»ƒn tiáº¿p giá»¯a Má»¹ SÆ¡n v&agrave; B&igrave;nh &ETH;á»‹nh; phong c&aacute;ch B&igrave;nh &ETH;á»‹nh...<br />\r\n<br />\r\nTrong nhiá»u c&ocirc;ng tr&igrave;nh kiáº¿n tr&uacute;c c&ograve;n láº¡i khi ph&aacute;t hiá»‡n (1898) c&oacute; th&aacute;p cao tá»›i 24m, trong khu vá»±c Th&aacute;p Ch&ugrave;a m&agrave; c&aacute;c s&aacute;ch kháº£o cá»•, nghi&ecirc;n cá»©u vá» Má»¹ SÆ¡n c&oacute; k&yacute; hiá»‡u l&agrave; th&aacute;p cá»• ChÄƒmpa, c&oacute; 2 cá»­a ra v&agrave;o ph&iacute;a &ETH;&ocirc;ng v&agrave; ph&iacute;a T&acirc;y. Th&acirc;n th&aacute;p cao, thanh t&uacute; vá»›i má»™t há»‡ thá»‘ng cá»™t á»‘p. Xung quanh c&oacute; 6 th&aacute;p phá»¥, to&agrave;n bá»™ ng&ocirc;i th&aacute;p 2 táº§ng toáº£ ra nhÆ° c&aacute;nh sen. Táº§ng tr&ecirc;n, ch&oacute;p Ä‘&aacute; sa tháº¡ch Ä‘Æ°á»£c cháº¡m h&igrave;nh voi, sÆ° tá»­, táº§ng dÆ°á»›i, máº·t tÆ°á»ng l&agrave; h&igrave;nh nhá»¯ng ngÆ°á»i cÆ°á»¡i voi, h&igrave;nh c&aacute;c thi&ecirc;n ná»¯ thuá»· qu&aacute;i. NhÆ°ng ng&ocirc;i th&aacute;p gi&aacute; trá»‹ n&agrave;y Ä‘&atilde; bá»‹ kh&ocirc;ng lá»±c Má»¹ huá»· hoáº¡i trong chiáº¿n tranh, nÄƒm 1969.<br />\r\n<br />\r\nSau khi ph&aacute;t hiá»‡n ra khu th&aacute;p cá»• Má»¹ SÆ¡n, nhiá»u hiá»‡n váº­t ti&ecirc;u biá»ƒu trong Ä‘&oacute; Ä‘áº·c biá»‡t l&agrave; nhá»¯ng tÆ°á»£ng vÅ© ná»¯, c&aacute;c tháº§n linh thá» phÆ°á»£ng cá»§a d&acirc;n tá»™c ChÄƒm, nhá»¯ng con váº­t thá» cÅ©ng nhÆ° nhá»¯ng cáº£nh sinh hoáº¡t cá»™ng Ä‘á»“ng Ä‘&atilde; Ä‘Æ°á»£c Ä‘Æ°a vá» th&agrave;nh phá»‘ &ETH;&agrave; Náºµng Ä‘áº·t táº¡i báº£o t&agrave;ng kiáº¿n tr&uacute;c Ch&agrave;m. Tuy kh&ocirc;ng pháº£i l&agrave; nhiá»u, nhÆ°ng nhá»¯ng hiá»‡n váº­t n&agrave;y l&agrave; nhá»¯ng t&aacute;c pháº©m nghá»‡ thuáº­t Ä‘i&ecirc;u kháº¯c ti&ecirc;u biá»ƒu, n&oacute; c&oacute; gi&aacute; trá»‹ vÄƒn ho&aacute; cá»§a má»™t d&acirc;n tá»™c, nhÆ°ng hÆ¡n tháº¿ ná»¯a, n&oacute; l&agrave; nhá»¯ng chá»©ng t&iacute;ch sá»‘ng Ä‘á»™ng, x&aacute;c thá»±c lá»‹ch sá»­ cá»§a má»™t trong nhá»¯ng d&acirc;n tá»™c trong cá»™ng Ä‘á»“ng Viá»‡t Nam gi&agrave;u truyá»n thá»‘ng vÄƒn ho&aacute;.<br />\r\n<br />\r\n<br />\r\nMá»¹ SÆ¡n Ä‘&atilde; Ä‘Æ°á»£c tr&ugrave;ng tu bá»Ÿi E.F.E.O (Ecole Francaise d&rsquo;Extreme Orient) trong thá»i gian tá»« 1937 Ä‘áº¿n 1944, nhÆ°ng khu vá»±c n&agrave;y Ä‘&atilde; bá»‹ bom Má»¹ t&agrave;n ph&aacute; náº·ng ná» trong chiáº¿n tranh. Äáº¿n nÄƒm 1975 , trong sá»‘ 32 di t&iacute;ch c&ograve;n láº¡i, chá»‰ c&oacute; khoáº£ng 20 Ä‘á»n , th&aacute;p c&ograve;n giá»¯ Ä‘Æ°á»£c d&aacute;ng váº» ban Ä‘áº§u. Tá»« nÄƒm 1981 Ä‘áº¿n 1991, Má»¹ SÆ¡n Ä‘Æ°á»£c báº£o quáº£n v&agrave; tu sá»­a tá»«ng pháº§n vá»›i sá»± gi&uacute;p Ä‘á»¡ vá» chuy&ecirc;n m&ocirc;n cá»§a c&ocirc;ng ty P.K.Z (Ba Lan). Pháº§n lá»›n c&aacute;c t&aacute;c pháº©m Ä‘i&ecirc;u kháº¯c á»Ÿ Má»¹ SÆ¡n Ä‘&atilde; Ä‘Æ°á»£c ngÆ°á»i Ph&aacute;p thu gom vá» Ä&agrave; Náºµng v&agrave;o nhá»¯ng nÄƒm Ä‘áº§u tháº¿ ká»· 20 v&agrave; Ä‘Æ°á»£c trÆ°ng b&agrave;y táº¡i báº£o táº£ng Ch&agrave;m. Khu di t&iacute;ch Má»¹ SÆ¡n Ä‘&atilde; Ä‘Æ°á»£c UNESCO c&ocirc;ng nháº­n l&agrave; Di sáº£n vÄƒn h&oacute;a tháº¿ giá»›i th&aacute;ng 12 nÄƒm 1999.</div>', 1, 1333598876, 1, 2, 0, NULL),
(190, 7, 'MÃ¹a khuyáº¿n mÃ£i', 'KhÃ¡ch sáº¡n Sunny Beach Danang â€“ khÃ¡ch sáº¡n sang trá»ng vÃ  tiá»‡n nghi náº±m trÃªn con Ä‘Æ°á»ng du lá»‹ch SÆ¡n TrÃ  - Äiá»‡n Ngá»c, TP ÄÃ  Náºµng Ä‘Æ°a ra chÆ°Æ¡ng trÃ¬nh khuyáº¿n mÃ£i Ä‘áº·c biá»‡t háº¥p dáº«n cho khÃ¡ch hÃ ng trong mÃ¹a Thu ÄÃ´ng nÃ y. ', '190.jpg', '', '<p align="justify"><font size="2">- Gi&aacute; chá»‰ c&oacute; <strong>&nbsp;600.000</strong>&nbsp;VND&nbsp;cho 2 kh&aacute;ch (loáº¡i ph&ograve;ng ti&ecirc;u chuáº©n).</font></p>\r\n<p align="justify"><font size="2">- Gi&aacute; ph&ograve;ng bao gá»“m Äƒn s&aacute;ng tá»± chá»n, 10% thuáº¿ v&agrave; 5% ph&iacute; phá»¥c vá»¥.</font></p>\r\n<p align="justify"><font size="2">- Ngo&agrave;i ra Qu&yacute; kh&aacute;ch c&ograve;n c&ograve;n Ä‘Æ°á»£c hÆ°á»Ÿng c&aacute;c dá»‹ch vá»¥ nhÆ°: </font></p>\r\n<p align="justify"><font size="2">- Miá»…n ph&iacute; 02 chai nÆ°á»›c Ä‘áº·t ph&ograve;ng/ng&agrave;y</font></p>\r\n<p align="justify"><font size="2">- </font>Ä&oacute;n hoáº·c Ä‘Æ°á»£c s&acirc;n bay miá»…n ph&iacute; cho kh&aacute;ch Ä‘áº·t tá»« 03 ph&ograve;ng trá»Ÿ l&ecirc;n<span class="Apple-style-span" style="font-size: small"><font size="2">.</font></span></p>\r\n<p align="justify"><span class="Apple-style-span" style="font-size: small"><font size="2">- Miá»…n ph&iacute; Internet wifi v&agrave; sá»­ dá»¥ng Business center. </font></span></p>\r\n<p align="justify">+ Má»i th&ocirc;ng tin chi tiáº¿t xin li&ecirc;n há»‡ th&ecirc;m bá»™ pháº­n Ä‘áº·t ph&ograve;ng: (511)3848 666 hoáº·c Hotline: 0918329651</p>\r\n<p align="justify">Ch&acirc;n th&agrave;nh cáº£m Æ¡n!&nbsp;</p>', 1, 1333178542, 1, 5, 0, NULL),
(194, 6, 'BÃ  NÃ  NÃºi ChÃºa', 'BÃ  NÃ  - NÃºi ChÃºa lÃ  má»™t dÃ£y nÃºi thuá»™c huyá»‡n HÃ²a Vang cÃ¡ch ÄÃ  Náºµng 40 km vá» phÃ­a TÃ¢y Nam, cao 1.487 m so vá»›i má»±c nÆ°á»›c biá»ƒn. Nhiá»‡t Ä‘á»™ trung bÃ¬nh hÃ ng nÄƒm tá»« 17 dáº¿n 20oC.', '194.jpg', '', '<div style="text-align: justify;">á»ž B&agrave; N&agrave;, du kh&aacute;ch sáº½ cáº£m nháº­n Ä‘Æ°á»£c bá»‘n m&ugrave;a ri&ecirc;ng biá»‡t trong má»™t ng&agrave;y: s&aacute;ng - xu&acirc;n, trÆ°a - háº¡, chiá»u - thu, tá»‘i - Ä‘&ocirc;ng v&agrave; kh&aacute;c vá»›i Ä&agrave; Láº¡t l&agrave; kh&ocirc;ng bá»‹ áº©m Æ°á»›t v&igrave; c&aacute;c cÆ¡n mÆ°a nhá». Äáº·c biá»‡t khi cÆ¡n mÆ°a xuáº¥t hiá»‡n, ch&uacute;ng ta Ä‘Æ°á»£c xem mÆ°a rÆ¡i xung quanh sÆ°á»n n&uacute;i m&agrave; pháº§n Ä‘á»‰nh váº«n lu&ocirc;n kh&ocirc; r&aacute;o, váº«n trá»i m&acirc;y quang táº¡nh, kh&ocirc;ng kh&iacute; tho&aacute;ng Ä‘&atilde;ng m&aacute;t máº½. So vá»›i Tam Äáº£o, Ä&agrave; Láº¡t, B&agrave; N&agrave; c&oacute; Æ°u tháº¿ hÆ¡n vá» táº§m nh&igrave;n to&agrave;n cáº£nh. Tá»« tr&ecirc;n nhá»¯ng má»m n&uacute;i, du kh&aacute;ch c&oacute; thá»ƒ bao qu&aacute;t cáº£ má»™t kh&ocirc;ng gian m&ecirc;nh m&ocirc;ng: biá»ƒn cáº£, th&agrave;nh phá»‘ Ä&agrave; Náºµng, nhá»¯ng c&aacute;nh Ä‘á»“ng l&uacute;a xanh táº­n ch&acirc;n trá»i...<br />\r\n<br />\r\nTrong khi nhiá»‡t Ä‘á»™ tá»« th&aacute;ng 5 Ä‘áº¿n th&aacute;ng 8 l&agrave; nhá»¯ng th&aacute;ng n&oacute;ng nháº¥t á»Ÿ ven biá»ƒn miá»n Trung thÆ°á»ng l&ecirc;n tá»›i 32oC th&igrave; á»Ÿ Ä‘&acirc;y chá»‰ c&oacute; 17oC Ä‘áº¿n 20oC, cao nháº¥t tá»« 22oC - 25oC. C&ograve;n ban Ä‘&ecirc;m xuá»‘ng tá»›i 15oC, tÆ°Æ¡ng Ä‘Æ°Æ¡ng vá»›i nhiá»‡t Ä‘á»™ trung b&igrave;nh vá» m&ugrave;a Ä‘&ocirc;ng á»Ÿ miá»n Báº¯c. Kh&iacute; háº­u &ocirc;n h&ograve;a suá»‘i cháº£y r&oacute;c r&aacute;ch, rá»«ng c&acirc;y x&agrave;o xáº¡c l&agrave;m cho nÆ¡i Ä‘&acirc;y c&oacute; thá»ƒ s&aacute;nh vá»›i nhá»¯ng v&ugrave;ng nghá»‰ m&aacute;t nhÆ° Tam Äáº£o, Ä&agrave; Láº¡t... B&agrave; N&agrave; c&ograve;n c&oacute; gi&aacute; trá»‹ l&agrave; khu báº£o tá»“n thi&ecirc;n nhi&ecirc;n vá»›i 544 lo&agrave;i thá»±c váº­t báº­c cao, 256 lo&agrave;i Ä‘á»™ng váº­t, trong Ä‘&oacute; c&oacute; 6 lo&agrave;i c&acirc;y v&agrave; 44 lo&agrave;i Ä‘á»™ng váº­t qu&iacute; hiáº¿m Ä‘Æ°á»£c ghi trong s&aacute;ch Ä‘á» Viá»‡t Nam theo ti&ecirc;u chuáº©n quá»‘c táº¿.<br />\r\n&nbsp;</div>\r\n<div style="text-align: center;"><img width="500" height="375" src="/uploads/bana6.jpg" alt="" /></div>\r\n<div style="text-align: justify;"><br />\r\nL&ecirc;n B&agrave; N&agrave;, du kh&aacute;ch sáº½ cáº£m nháº­n Ä‘Æ°á»£c c&aacute;i cáº£m gi&aacute;c nhÆ° Ä‘i láº¡c trong m&acirc;y v&agrave; sÆ°Æ¡ng kh&oacute;i. Cáº£m x&uacute;c cá»§a má»—i ngÆ°á»i khi l&ecirc;n nÆ¡i n&agrave;y c&oacute; tháº¿ c&oacute; kh&aacute;c nhau t&ugrave;y thuá»™c v&agrave;o nhiá»u yáº¿u tá»‘, nhÆ°ng c&aacute;i &yacute; nghÄ© ráº±ng, giá»¯a v&ugrave;ng nhiá»‡t Ä‘á»›i gi&oacute; m&ugrave;a n&agrave;y m&agrave; chá»n má»™t nÆ¡i nhÆ° B&agrave; N&agrave; l&agrave;m nÆ¡i nghá»‰ dÆ°á»¡ng th&igrave; kh&oacute; c&oacute; nÆ¡i n&agrave;o báº±ng sáº½ lu&ocirc;n l&agrave; má»™t &yacute; nghÄ© chung...<br />\r\n<br />\r\nVá»›i nhá»¯ng Æ°u tháº¿ tuyá»‡t diá»‡u Ä‘&oacute;, tá»« nhá»¯ng nÄƒm Ä‘áº§u tháº¿ ká»‰ XX ngÆ°á»i Ph&aacute;p Ä‘&atilde; chá»n B&agrave; N&agrave; l&agrave; nÆ¡i nghá»‰ m&aacute;t v&agrave; x&acirc;y dá»±ng nÆ¡i Ä‘&acirc;y h&agrave;ng trÄƒm biá»‡t thá»±, l&acirc;u Ä‘&agrave;i... Thi&ecirc;n tai, Ä‘á»‹ch há»a hÆ¡n ná»­a tháº¿ ká»‰ qua Ä‘&atilde; l&agrave;m máº¥t Ä‘i dáº¥u t&iacute;ch c&aacute;c l&acirc;u Ä‘&agrave;i, nh&agrave; nghá»‰ cá»• xÆ°a... nhÆ°ng váº«n c&ograve;n Ä‘&oacute; sá»± h&agrave;o ph&oacute;ng cá»§a thi&ecirc;n nhi&ecirc;n vá»›i nhá»¯ng c&aacute;nh rá»«ng nguy&ecirc;n sinh v&agrave; má»™t v&ugrave;ng kh&iacute; háº­u &ocirc;n h&ograve;a m&aacute;t máº» vá»›i mu&ocirc;n ng&agrave;n &acirc;m thanh x&agrave;o xáº¡c cá»§a Ä‘á»“i th&ocirc;ng h&ograve;a quyá»‡n c&ugrave;ng kh&uacute;c nháº¡c r&oacute;c r&aacute;ch cá»§a nhá»¯ng con suá»‘i tr&agrave;n l&ecirc;n tr&ecirc;n th&agrave;nh Ä‘&aacute; hoa cÆ°Æ¡ng, rá»“i láº·ng láº½ láº«n khuáº¥t sau nhá»¯ng c&aacute;nh rá»«ng xanh ngáº¯t.<br />\r\n&nbsp;</div>\r\n<div style="text-align: center;"><img width="500" height="332" src="/uploads/bn.JPG" alt="" /></div>\r\n<div style="text-align: justify;"><br />\r\nHiá»‡n nay, má»™t sá»‘ biá»‡t thá»± táº¡i khu du lá»‹ch B&agrave; N&agrave; Ä‘&atilde; Ä‘Æ°á»£c tr&ugrave;ng tu láº¡i vá»›i Ä‘áº§y Ä‘á»§ c&aacute;c tiá»‡n nghi v&agrave; dá»‹ch vá»¥ hiá»‡n Ä‘áº¡i sáºµn s&agrave;ng phá»¥c vá»¥ du kh&aacute;ch. Nhiá»u khu biá»‡t thá»± cá»§a Nh&agrave; nÆ°á»›c cÅ©ng nhÆ° cá»§a tÆ° nh&acirc;n Ä‘&atilde; Ä‘Æ°á»£c x&acirc;y dá»±ng táº¡i Ä‘&acirc;y, Ä‘á»§ sá»©c Ä‘&aacute;p á»©ng Ä‘Æ°á»£c nhu cáº§u tham quan, nghá»‰ m&aacute;t cá»§a du lkh&aacute;ch. Äáº·c biá»‡t, há»‡ thá»‘ng c&aacute;p treo hiá»‡n Ä‘áº¡i sáº½ Ä‘Æ°a qu&yacute; kh&aacute;ch tá»« Ä‘á»“i Vá»ng Nguyá»‡t, áº©n hiá»‡n trong m&acirc;y v&agrave; bÄƒng qua khu rá»«ng nguy&ecirc;n sinh b&ecirc;n dÆ°á»›i Ä‘á»ƒ Ä‘áº¿n trung t&acirc;m khu du lá»‹ch B&agrave; N&agrave;.<br />\r\n<br />\r\nB&agrave; N&agrave; - nÆ¡i há»™i tá»¥ váº» m&ocirc;ng lung, l&atilde;ng máº¡n cá»§a táº¡o váº­t, ch&uacute;t cáº£m ho&agrave;i gáº¡ch ng&oacute;i r&ecirc;u phong cá»§a thá»i gian v&agrave; sá»± tham dá»± c&oacute; &yacute; thá»©c cá»§a con ngÆ°á»i v&agrave;o c&aacute;i Ä‘áº¹p. Tá»« tr&ecirc;n Ä‘á»‰nh B&agrave; N&agrave; nh&igrave;n vá» Ä&agrave; Náºµng, con ngÆ°á»i nhÆ° cáº£m tháº¥y m&igrave;nh c&oacute; Ä‘Æ°á»£c má»™t cuá»™c sá»‘ng kh&aacute;c, táº­n hÆ°á»Ÿng Ä‘Æ°á»£c nhá»¯ng háº¡nh ph&uacute;c kh&aacute;c... nhá»¯ng thá»© m&agrave; cuá»™c sá»‘ng n&aacute;o nhiá»‡t thá»‹ th&agrave;nh kh&ocirc;ng bao giá» biáº¿t Ä‘Æ°á»£c.<br />\r\n<br />\r\nDÆ°á»›i ch&acirc;n n&uacute;i B&agrave; N&agrave;, Suá»‘i MÆ¡ l&agrave; Ä‘iá»ƒm du lá»‹ch ráº¥t Ä‘&ocirc;ng kh&aacute;ch, nháº¥t l&agrave; v&agrave;o m&ugrave;a h&egrave;. á»ž Ä‘&acirc;y c&oacute; th&aacute;c T&oacute;c Ti&ecirc;n 9 táº§ng, th&aacute;c n&agrave;y gá»i l&agrave; th&aacute;c T&oacute;c Ti&ecirc;n bá»Ÿi v&igrave; Ä‘á»©ng tá»« ph&iacute;a dÆ°á»›i ch&acirc;n th&aacute;c nh&igrave;n l&ecirc;n th&aacute;c nhÆ° má»™t m&aacute;i t&oacute;c cá»§a má»™t n&agrave;ng ti&ecirc;n. Phong cáº£nh káº¿t há»£p giá»¯a n&uacute;i rá»«ng bao la vá»›i nhá»¯ng d&ograve;ng nÆ°á»›c tráº¯ng x&oacute;a, m&aacute;t máº» gi&uacute;p cho ch&uacute;ng ta qu&ecirc;n ngay Ä‘i nhá»¯ng má»‡t má»i cá»§a Ä‘á»i thÆ°á»ng Ä‘á»ƒ táº­n hÆ°á»Ÿng nhá»¯ng gi&acirc;y ph&uacute;t thÆ° gi&atilde;n tháº§n ti&ecirc;n.</div>', 1, 1333599107, 1, 5, 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tgp_cms_menu`
--

CREATE TABLE IF NOT EXISTS `tgp_cms_menu` (
  `id` int(11) NOT NULL auto_increment,
  `cat` varchar(20) NOT NULL,
  `ten` varchar(255) NOT NULL,
  `type` int(1) default '0',
  `thu_tu` int(11) NOT NULL,
  `hien_thi` int(1) NOT NULL default '1',
  `noi_bat` int(1) NOT NULL default '0',
  `rss_link` varchar(255) default NULL,
  `rss_time` int(11) NOT NULL default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `tgp_cms_menu`
--

INSERT INTO `tgp_cms_menu` (`id`, `cat`, `ten`, `type`, `thu_tu`, `hien_thi`, `noi_bat`, `rss_link`, `rss_time`) VALUES
(5, 'he_thong_phong', 'Há»‡ thá»‘ng phÃ²ng', 0, 1, 1, 0, '', 0),
(6, 'tin_tuc', 'Tin tá»©c', 0, 1, 1, 0, '', 0),
(7, 'khuyen_mai', 'Khuyáº¿n mÃ£i', 0, 1, 1, 0, '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tgp_customers`
--

CREATE TABLE IF NOT EXISTS `tgp_customers` (
  `id` int(11) NOT NULL auto_increment,
  `ten` varchar(255) NOT NULL,
  `cat` int(11) NOT NULL,
  `hinh` varchar(255) default 'no',
  `dia_chi` varchar(255) NOT NULL,
  `gioi_thieu` text NOT NULL,
  `thu_tu` int(11) NOT NULL,
  `dem_click` int(11) default '0',
  `dem_view` int(11) default '0',
  `hien_thi` int(1) NOT NULL,
  `noi_bat` int(1) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `tgp_customers_cat`
--

CREATE TABLE IF NOT EXISTS `tgp_customers_cat` (
  `id` int(11) NOT NULL auto_increment,
  `ten` varchar(255) NOT NULL,
  `thu_tu` int(11) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

-- --------------------------------------------------------

--
-- Table structure for table `tgp_doc`
--

CREATE TABLE IF NOT EXISTS `tgp_doc` (
  `id` int(11) NOT NULL auto_increment,
  `cat` int(11) NOT NULL,
  `ten` varchar(255) NOT NULL,
  `chu_thich` text NOT NULL,
  `file` varchar(255) default 'no',
  `file_size` varchar(255) NOT NULL,
  `noi_dung` text NOT NULL,
  `hien_thi` int(1) NOT NULL default '1',
  `gia` double default NULL,
  `time` int(11) NOT NULL,
  `luot_tai` int(11) NOT NULL default '0',
  `noi_bat` int(1) NOT NULL default '0',
  `user` int(11) NOT NULL default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=12 ;

--
-- Dumping data for table `tgp_doc`
--

INSERT INTO `tgp_doc` (`id`, `cat`, `ten`, `chu_thich`, `file`, `file_size`, `noi_dung`, `hien_thi`, `gia`, `time`, `luot_tai`, `noi_bat`, `user`) VALUES
(10, 3, 'DÃ¢n trÃ­', 'http://dantri.com.vn/', 'no', '', '', 1, NULL, 1323837802, 0, 0, 1),
(11, 3, 'Mp3 zing', 'http://mp3.zing.vn/', 'no', '', '', 1, NULL, 1323837836, 0, 0, 1),
(9, 3, 'Goolge', 'http://google.com.vn/', 'no', '', '', 1, NULL, 1323837779, 0, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tgp_doc_menu`
--

CREATE TABLE IF NOT EXISTS `tgp_doc_menu` (
  `id` int(11) NOT NULL auto_increment,
  `cat` varchar(20) NOT NULL,
  `ten` varchar(255) NOT NULL,
  `thu_tu` int(11) NOT NULL,
  `hien_thi` int(1) NOT NULL default '1',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `tgp_doc_menu`
--

INSERT INTO `tgp_doc_menu` (`id`, `cat`, `ten`, `thu_tu`, `hien_thi`) VALUES
(3, 'lien_ket', 'Website liÃªn káº¿t', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tgp_email`
--

CREATE TABLE IF NOT EXISTS `tgp_email` (
  `email` varchar(255) NOT NULL,
  `time` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tgp_email`
--

INSERT INTO `tgp_email` (`email`, `time`) VALUES
('thienbaoit@gmail.com', 1323837207);

-- --------------------------------------------------------

--
-- Table structure for table `tgp_gallery`
--

CREATE TABLE IF NOT EXISTS `tgp_gallery` (
  `id` int(11) NOT NULL auto_increment,
  `cat` int(11) NOT NULL,
  `ten` varchar(255) NOT NULL,
  `chu_thich` text NOT NULL,
  `hinh` varchar(255) default 'no',
  `hien_thi` int(1) NOT NULL default '1',
  `noi_bat` int(1) NOT NULL default '1',
  `time` int(11) NOT NULL,
  `user` int(11) NOT NULL default '0',
  `luot_xem` int(11) NOT NULL default '0',
  `link` varchar(255) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=125 ;

--
-- Dumping data for table `tgp_gallery`
--

INSERT INTO `tgp_gallery` (`id`, `cat`, `ten`, `chu_thich`, `hinh`, `hien_thi`, `noi_bat`, `time`, `user`, `luot_xem`, `link`) VALUES
(124, 34, 'hinh 1', '', '124.jpg', 1, 0, 1333936327, 1, 0, ''),
(112, 28, 'lá»… tÃ¢n', ' ', '112.jpg', 1, 0, 1333597579, 1, 0, ''),
(113, 28, 'phÃ²ng tiá»‡c', ' ', '113.jpg', 1, 0, 1333597668, 1, 0, ''),
(114, 28, 'tiec ngoai troi', ' ', '114.jpg', 1, 0, 1333597773, 1, 0, ''),
(115, 38, 'nha hang 1', ' ', '115.jpg', 1, 0, 1333608661, 1, 0, ''),
(116, 38, 'nha hang 2', ' ', '116.jpg', 1, 0, 1333608690, 1, 0, ''),
(69, 34, 'HÃ¬nh 2', '', '69.jpg', 1, 0, 1330495801, 1, 0, ''),
(70, 34, 'HÃ¬nh 3', '', '70.jpg', 1, 0, 1330495817, 1, 0, ''),
(71, 34, 'HÃ¬nh 4', '', '71.jpg', 1, 0, 1330495831, 1, 0, ''),
(72, 29, '1', '', '72.jpg', 1, 0, 1330498312, 1, 0, ''),
(73, 29, '2', '', '73.jpg', 1, 0, 1330498332, 1, 0, ''),
(74, 29, '3', '', '74.jpg', 1, 0, 1330498422, 1, 0, ''),
(75, 29, '4', '', '75.jpg', 1, 0, 1330498479, 1, 0, ''),
(76, 29, '5', '', '76.jpg', 1, 0, 1330498491, 1, 0, ''),
(77, 29, '6', '', '77.jpg', 1, 0, 1330498508, 1, 0, ''),
(78, 29, '7', '', '78.jpg', 1, 0, 1330498544, 1, 0, ''),
(79, 29, '8', '', '79.jpg', 1, 0, 1330498556, 1, 0, ''),
(80, 29, '9', '', '80.jpg', 1, 0, 1330498577, 1, 0, ''),
(81, 29, '10', '', '81.jpg', 1, 0, 1330498621, 1, 0, ''),
(82, 29, '11', '', '82.jpg', 1, 0, 1330498632, 1, 0, ''),
(123, 35, '1', ' ', '123.jpg', 1, 0, 1333936094, 1, 0, ''),
(84, 35, '2', '', '84.jpg', 1, 0, 1330498760, 1, 0, ''),
(85, 35, '3', '', '85.jpg', 1, 0, 1330498782, 1, 0, ''),
(86, 35, '4', '', '86.jpg', 1, 0, 1330498793, 1, 0, ''),
(87, 35, '5', '', '87.jpg', 1, 0, 1330499472, 1, 0, ''),
(88, 35, '6', '', '88.jpg', 1, 0, 1330499494, 1, 0, ''),
(89, 36, '1', '', '89.jpg', 1, 0, 1330499533, 1, 0, ''),
(90, 37, '1', '', '90.jpg', 1, 0, 1330499735, 1, 0, ''),
(91, 37, '2', '', '91.jpg', 1, 0, 1330499768, 1, 0, ''),
(92, 37, '3', '', '92.jpg', 1, 0, 1330499778, 1, 0, ''),
(93, 37, '4', '', '93.jpg', 1, 0, 1330499787, 1, 0, ''),
(94, 37, '5', '', '94.jpg', 1, 0, 1330499797, 1, 0, ''),
(95, 37, '6', '', '95.jpg', 1, 0, 1330499805, 1, 0, ''),
(96, 39, '1', '', '96.jpg', 1, 0, 1333179468, 1, 0, ''),
(97, 39, '2', '', '97.jpg', 1, 0, 1333179484, 1, 0, ''),
(98, 39, '3', '', '98.jpg', 1, 0, 1333179517, 1, 0, ''),
(99, 39, '3', '', '99.jpg', 1, 0, 1333179519, 1, 0, ''),
(100, 40, '1', '', '100.jpg', 1, 0, 1333181666, 1, 0, ''),
(101, 40, '2', '', '101.jpg', 1, 0, 1333181705, 1, 0, ''),
(102, 40, '3', '', '102.jpg', 1, 0, 1333181746, 1, 0, ''),
(103, 43, '1', '', '103.jpg', 1, 0, 1333183700, 1, 0, ''),
(104, 43, '2', '', '104.jpg', 1, 0, 1333183712, 1, 0, ''),
(105, 43, '3', '', '105.jpg', 1, 0, 1333183726, 1, 0, ''),
(106, 41, '1', '', '106.jpg', 1, 0, 1333183812, 1, 0, ''),
(107, 41, '2', '', '107.jpg', 1, 0, 1333183830, 1, 0, ''),
(108, 41, '3', '', '108.jpg', 1, 0, 1333183842, 1, 0, ''),
(120, 42, '1', ' ', '120.jpg', 1, 0, 1333609695, 1, 0, ''),
(121, 42, '2', ' ', '121.jpg', 1, 0, 1333609716, 1, 0, ''),
(117, 38, 'IMG_0503', ' ', '117.jpg', 1, 0, 1333608959, 1, 0, ''),
(118, 38, 'IMG_0505', ' ', '118.jpg', 1, 0, 1333608994, 1, 0, ''),
(119, 38, 'IMG_0509', ' ', '119.jpg', 1, 0, 1333609023, 1, 0, ''),
(122, 42, '3', ' ', '122.jpg', 1, 0, 1333610260, 1, 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `tgp_gallery_menu`
--

CREATE TABLE IF NOT EXISTS `tgp_gallery_menu` (
  `id` int(11) NOT NULL auto_increment,
  `cat` varchar(20) NOT NULL,
  `ten` varchar(255) NOT NULL,
  `thu_tu` int(11) NOT NULL,
  `hien_thi` int(1) NOT NULL default '1',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=44 ;

--
-- Dumping data for table `tgp_gallery_menu`
--

INSERT INTO `tgp_gallery_menu` (`id`, `cat`, `ten`, `thu_tu`, `hien_thi`) VALUES
(28, 'slide_background', 'Slide background full', 1, 1),
(29, 'thu_vien_hinh', 'HÃ¬nh áº£nh phÃ²ng', 1, 1),
(36, 'thu_vien_hinh', 'HÃ¬nh áº£nh Há»™i trÆ°á»ng', 3, 1),
(34, 'gioi_thieu', 'Giá»›i thiá»‡u', 1, 1),
(35, 'thu_vien_hinh', 'HÃ¬nh áº£nh KhÃ¡ch sáº¡n', 2, 1),
(37, 'thu_vien_hinh', 'Tháº¯ng cáº£nh ÄÃ  Náºµng', 4, 1),
(38, 'gioi_thieu', 'NhÃ  hÃ ng', 2, 1),
(39, 'gioi_thieu', 'Bar - cafe', 3, 1),
(40, 'gioi_thieu', 'ThuÃª Ã´tÃ´ - xe mÃ¡y - xe Ä‘áº¡p', 4, 1),
(41, 'gioi_thieu', 'Tour BÃ  NÃ ', 5, 1),
(42, 'gioi_thieu', 'Tour Non nÆ°á»›c - Há»™i An - Má»¹ SÆ¡n', 6, 1),
(43, 'gioi_thieu', 'Tour vÃ²ng quanh bÃ¡n Ä‘áº£o SÆ¡n TrÃ ', 7, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tgp_online`
--

CREATE TABLE IF NOT EXISTS `tgp_online` (
  `ip` varchar(255) NOT NULL default '',
  `time` varchar(255) NOT NULL default '',
  `site` varchar(255) NOT NULL default '',
  `agent` varchar(255) NOT NULL default '',
  `user` int(11) NOT NULL default '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tgp_online`
--

INSERT INTO `tgp_online` (`ip`, `time`, `site`, `agent`, `user`) VALUES
('222.254.225.194', '1335535575', 'act=dat_phong', 'Mozilla/5.0 (Windows NT 5.1; rv:12.0) Gecko/20100101 Firefox/12.0', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tgp_online_daily`
--

CREATE TABLE IF NOT EXISTS `tgp_online_daily` (
  `ngay` varchar(10) NOT NULL default '',
  `bo_dem` int(11) NOT NULL default '0',
  PRIMARY KEY  (`ngay`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tgp_online_daily`
--

INSERT INTO `tgp_online_daily` (`ngay`, `bo_dem`) VALUES
('27/07/2010', 7),
('28/07/2010', 17),
('02/08/2010', 2),
('03/08/2010', 6),
('04/08/2010', 14),
('05/08/2010', 13),
('06/08/2010', 10),
('07/08/2010', 5),
('09/08/2010', 15),
('10/08/2010', 1),
('11/08/2010', 2),
('12/08/2010', 18),
('13/08/2010', 21),
('14/08/2010', 17),
('16/08/2010', 1),
('20/08/2010', 1),
('21/08/2010', 4),
('23/08/2010', 8),
('24/08/2010', 5),
('01/09/2010', 2),
('03/09/2010', 7),
('04/09/2010', 4),
('06/09/2010', 4),
('08/09/2010', 1),
('10/09/2010', 4),
('11/09/2010', 7),
('13/09/2010', 12),
('14/09/2010', 7),
('15/09/2010', 13),
('16/09/2010', 18),
('17/09/2010', 15),
('18/09/2010', 7),
('19/09/2010', 3),
('20/09/2010', 9),
('21/09/2010', 9),
('22/09/2010', 16),
('23/09/2010', 9),
('24/09/2010', 25),
('25/09/2010', 17),
('26/09/2010', 16),
('27/09/2010', 33),
('28/09/2010', 59),
('29/09/2010', 65),
('30/09/2010', 71),
('01/10/2010', 13),
('02/10/2010', 12),
('04/10/2010', 10),
('05/10/2010', 11),
('06/10/2010', 9),
('07/10/2010', 10),
('08/10/2010', 7),
('09/10/2010', 5),
('10/10/2010', 1),
('11/10/2010', 8),
('12/10/2010', 19),
('13/10/2010', 19),
('14/10/2010', 12),
('15/10/2010', 29),
('16/10/2010', 20),
('18/10/2010', 6),
('19/10/2010', 1),
('20/10/2010', 10),
('21/10/2010', 12),
('22/10/2010', 3),
('23/10/2010', 4),
('25/10/2010', 4),
('29/10/2010', 4),
('03/10/2011', 12),
('04/10/2011', 8),
('05/10/2011', 14),
('06/10/2011', 7),
('13/10/2011', 3),
('14/10/2011', 2),
('15/10/2011', 7),
('12/12/2011', 11),
('13/12/2011', 12),
('14/12/2011', 5),
('15/12/2011', 4),
('16/12/2011', 7),
('17/12/2011', 2),
('19/12/2011', 3),
('23/12/2011', 7),
('26/12/2011', 4),
('29/12/2011', 1),
('08/01/2012', 2),
('13/01/2012', 2),
('02/02/2012', 8),
('03/02/2012', 9),
('04/02/2012', 4),
('05/02/2012', 2),
('06/02/2012', 3),
('10/02/2012', 12),
('11/02/2012', 6),
('12/02/2012', 5),
('13/02/2012', 4),
('15/02/2012', 6),
('16/02/2012', 13),
('19/02/2012', 4),
('20/02/2012', 7),
('21/02/2012', 5),
('22/02/2012', 3),
('23/02/2012', 1),
('25/02/2012', 2),
('27/02/2012', 4),
('29/02/2012', 14),
('01/03/2012', 16),
('02/03/2012', 6),
('03/03/2012', 10),
('04/03/2012', 8),
('05/03/2012', 3),
('06/03/2012', 3),
('07/03/2012', 5),
('09/03/2012', 3),
('10/03/2012', 1),
('12/03/2012', 1),
('13/03/2012', 3),
('14/03/2012', 1),
('19/03/2012', 1),
('22/03/2012', 1),
('23/03/2012', 1),
('24/03/2012', 7),
('28/03/2012', 1),
('29/03/2012', 2),
('30/03/2012', 1),
('31/03/2012', 6),
('03/04/2012', 2),
('05/04/2012', 6),
('06/04/2012', 2),
('07/04/2012', 8),
('09/04/2012', 5),
('10/04/2012', 1),
('12/04/2012', 5),
('13/04/2012', 6),
('20/04/2012', 1),
('22/04/2012', 2),
('23/04/2012', 1),
('24/04/2012', 5),
('25/04/2012', 5),
('26/04/2012', 3),
('27/04/2012', 2);

-- --------------------------------------------------------

--
-- Table structure for table `tgp_page`
--

CREATE TABLE IF NOT EXISTS `tgp_page` (
  `id` int(11) NOT NULL auto_increment,
  `alias` varchar(255) NOT NULL,
  `ten` varchar(255) NOT NULL,
  `noi_dung` text NOT NULL,
  `time` int(11) NOT NULL,
  `user` int(11) NOT NULL,
  `luot_xem` int(11) default '1',
  PRIMARY KEY  (`id`),
  UNIQUE KEY `alias` (`alias`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=79 ;

--
-- Dumping data for table `tgp_page`
--

INSERT INTO `tgp_page` (`id`, `alias`, `ten`, `noi_dung`, `time`, `user`, `luot_xem`) VALUES
(57, 'copyright', 'Copyright', '<span style="color: rgb(246, 222, 145);"><span style="font-weight: bold;">Copyright &copy; 2012 Sunny Beach Hotel Ä&agrave; Náºµng</span><br />\r\nÄá»‹a chá»‰: L&ocirc; 29-30 DÆ°Æ¡ng Ä&igrave;nh Nghá»‡ - Quáº­n SÆ¡n Tr&agrave; - Tp. Ä&agrave; Náºµng<br />\r\nÄiá»‡n thoáº¡i : (0511) 3967666 - </span><span style="color: rgb(246, 222, 145);">(0511) 3967665</span><span style="color: rgb(246, 222, 145);"> - Fax: (0511) 3967664<br />\r\nEmail : info@sunnybeachhotel.com.vn</span>', 1333159337, 1, 14087),
(55, 'thong_tin_lien_he', 'ThÃ´ng tin liÃªn há»‡', '<div style="text-align: left;">Li&ecirc;n há»‡:</div>', 1333609058, 1, 1028),
(65, 'dich_vu', 'dich vu ', '<div dir="ltr" style="line-height: 20px; width: 279px">\r\n<ul>\r\n    <li><a href="/he-thong-phong/5-Há»‡%20thá»‘ng%20ph&ograve;ng"><font color="#eed390" size="2">Há»‡ thá»‘ng ph&ograve;ng</font></a>&nbsp;</li>\r\n    <li><a href="/nha-hang/"><font color="#eed390" size="2">Nh&agrave; h&agrave;ng</font></a>&nbsp;</li>\r\n    <li><a href="/bar-cafe/"><font color="#eed390" size="2">Bar - Cafe</font></a>&nbsp;</li>\r\n    <li><a href="/thue-xe/"><font color="#eed390" size="2">Thu&ecirc; &ocirc; t&ocirc; - Xe m&aacute;y - Xe Ä‘áº¡p</font></a>&nbsp;</li>\r\n    <li><a href="/tour-bana/"><font color="#eed390" size="2">Tour B&agrave; n&agrave;</font></a>&nbsp;</li>\r\n    <li><a href="/tour-tonghop/"><font color="#eed390" size="2">Tour Non nÆ°á»›c - Há»™i An - Má»¹ SÆ¡n</font></a>&nbsp;</li>\r\n    <li><a href="/tour-sontra/"><font color="#eed390" size="2">Tour&nbsp;v&ograve;ng quanh&nbsp;b&aacute;n&nbsp;Ä‘áº£o SÆ¡n Tr&agrave;</font></a>&nbsp;</li>\r\n</ul>\r\n</div>', 1333181203, 1, 529),
(68, 'ho_tro', 'Há»— trá»£', '<table cellspacing="0" cellpadding="0" border="0" style="width: 279px; height: 40px; margin-bottom:-0.7em;">\r\n    <tbody>\r\n        <tr>\r\n            <td><a href="ymsgr:sendIM?sunnybeachhotel"><img align="absMiddle" vspace="4" border="0" alt="" src="/uploads/image/yahoo.png" style="width: 28px; height: 22px;" /></a><a href="ymsgr:sendIM?sunnybeachhotel">&nbsp;&nbsp;&nbsp; <br />\r\n            </a></td>\r\n            <td><span><span style=" float: left;"><strong> Lá»… T&acirc;n:</strong></span></span></td>\r\n            <td><span><span style=" float: left;">&nbsp; 0511.3967 666 - 0511.3967 665</span></span></td>\r\n        </tr>\r\n        <tr>\r\n            <td><a href="skype:sunnybeachhotel?call"><img align="absMiddle" vspace="4" border="0" alt="" style="width: 32px; height: 18px;" src="/uploads/image/skyle.png" />&nbsp;</a><a href="skype:sunnybeachhotel?call">&nbsp; </a></td>\r\n            <td><span style="float: left;"><strong>Quáº£n l&yacute;:</strong></span></td>\r\n            <td><span style="float: left;">&nbsp; 0905 159 128 - 0905 205 840</span></td>\r\n        </tr>\r\n    </tbody>\r\n</table>', 1333159235, 1, 11930),
(70, 'gioi_thieu', 'Giá»›i thiá»‡u', '<span style="font-size: medium;"><span style="font-family: Arial;"><strong>Kh&aacute;ch sáº¡n Sunny Beach</strong></span></span><span style="font-family: Arial;"><span style="font-size: large;"><strong> </strong></span><span style="font-size: medium;">h&acirc;n háº¡nh Ä‘&oacute;n ch&agrave;o qu&yacute; du kh&aacute;ch Ä‘áº¿n vá»›i th&agrave;nh phá»‘ biá»ƒn Ä&agrave; Náºµng xinh Ä‘áº¹p.</span><br />\r\n</span><br />\r\n<strong>Kh&aacute;ch sáº¡n SUNNY BEACH</strong> náº±m giá»¯a s&ocirc;ng H&agrave;n thÆ¡ má»™ng vá»›i chiáº¿c cáº§u quay Ä‘áº·c trÆ°ng v&agrave; b&atilde;i biá»ƒn Má»¹ Kh&ecirc; xanh, sáº¡ch, Ä‘áº¹p Ä‘&atilde; Ä‘Æ°á»£c táº¡p ch&iacute; Forbes báº§u chá»n l&agrave; má»™t trong s&aacute;u b&atilde;i biá»ƒn Ä‘áº¹p nháº¥t h&agrave;nh tinh. Kh&aacute;ch sáº¡n Ä‘áº¡t ti&ecirc;u chuáº©n 2 sao gá»“m 6 táº§ng, 21 ph&ograve;ng v&agrave; 01 há»™i trÆ°á»ng vá»›i sá»©c chá»©a khoáº£ng 80 kh&aacute;ch. Tá»« kh&ocirc;ng gian há»™i trÆ°á»ng v&agrave; s&acirc;n thÆ°á»£ng á»Ÿ táº§ng 6, qu&yacute; kh&aacute;ch c&oacute; thá»ƒ ngáº¯m máº·t biá»ƒn xanh á»Ÿ ph&iacute;a Ä&ocirc;ng, vá»«a c&oacute; thá»ƒ ngáº¯m nhá»¯ng ch&ugrave;m ph&aacute;o hoa sáº·c sá»¡ Ä‘Æ°á»£c báº¯n l&ecirc;n tá»« bá» s&ocirc;ng H&agrave;n.&nbsp; <br />\r\n<br />\r\nVá»›i ná»™i tháº¥t gá»— áº¥m c&uacute;ng, trang thiáº¿t bá»‹ Ä‘áº§y Ä‘á»§: b&agrave;n l&agrave;m viá»‡c, b&agrave;n tr&agrave;, máº¡ng internet kh&ocirc;ng d&acirc;y miá»…n ph&iacute;, tivi vá»›i c&aacute;c k&ecirc;nh truyá»n h&igrave;nh c&aacute;p quá»‘c táº¿... c&ugrave;ng c&aacute;c dá»‹ch vá»¥ phong ph&uacute;, cháº¥t lÆ°á»£ng cao v&agrave; phong c&aacute;ch phá»¥c vá»¥ táº­n t&igrave;nh chu Ä‘&aacute;o cá»§a Ä‘á»™i ngÅ© nh&acirc;n vi&ecirc;n Ä‘Æ°á»£c Ä‘&agrave;o táº¡o chuy&ecirc;n nghiá»‡p, cháº¯c cháº¯n <strong>kh&aacute;ch sáº¡n Sunny Beach</strong> Ä&agrave; Náºµng sáº½ mang láº¡i cho qu&yacute; kh&aacute;ch sá»± thoáº£i m&aacute;i, dá»… chá»‹u khi lÆ°u tr&uacute; á»Ÿ Ä‘&acirc;y.&nbsp; <br />\r\n<br />\r\nNgo&agrave;i ra, Ä‘áº¿n vá»›i <strong>kh&aacute;ch sáº¡n Sunny Beach</strong> Ä&agrave; Náºµng du kh&aacute;ch c&ograve;n c&oacute; thá»ƒ táº­n hÆ°á»Ÿng kh&ocirc;ng kh&iacute; trong l&agrave;nh cá»§a biá»ƒn v&agrave; thÆ°á»Ÿng ngoáº¡n nhá»¯ng cáº£nh Ä‘áº¹p n&uacute;i non cá»§a th&agrave;nh phá»‘ Ä&agrave; Náºµng xinh Ä‘áº¹p.&nbsp; <br />\r\n<br />\r\n<strong>Kh&aacute;ch sáº¡n Sunny Beach</strong> Ä&agrave; Náºµng ráº¥t h&acirc;n háº¡nh Ä‘Æ°á»£c phá»¥c vá»¥ qu&yacute; kh&aacute;ch.<br />', 1330500204, 1, 1),
(71, 'lien_he_dat_phong', 'LiÃªn há»‡ Ä‘áº·t phÃ²ng', 'Qu&yacute; kh&aacute;ch vui l&ograve;ng Ä‘iá»n v&agrave;o &ocirc; trá»‘ng dÆ°á»›i Ä‘&acirc;y Ä‘á»ƒ Ä‘áº·t ph&ograve;ng hoáº·c gá»i 05113.967.666 - 05113.967.665. C&aacute;m Æ¡n qu&yacute; kh&aacute;ch Ä‘&atilde; li&ecirc;n há»‡ vá»›i ch&uacute;ng t&ocirc;i.<br />', 1328241700, 1, 409),
(72, 'nd_dat_phong', 'Äáº·t phÃ²ng', '<p><strong>Kh&aacute;ch h&agrave;ng Ä‘áº·t ph&ograve;ng vui l&ograve;ng gá»i Ä‘iá»‡n trá»±c tiáº¿p Ä‘áº¿n:<br />\r\n</strong>Äiá»‡n thoáº¡i: 0511.3967 666 Ä‘á»ƒ Ä‘áº·t ph&ograve;ng hoáº·c nháº­p theo form Ä‘áº·t ph&ograve;ng trá»±c tuyáº¿n dÆ°á»›i Ä‘&acirc;y.</p>', 1333170103, 1, 1),
(73, 'nha_hang', 'ThÃ´ng tin nhÃ  hÃ ng', '<div style="text-align: justify;">Nh&agrave; h&agrave;ng Kh&aacute;ch sáº¡n Sunny Beach vá»›i kh&ocirc;ng gian tho&aacute;ng m&aacute;t, c&oacute; thá»ƒ ngáº¯m nh&igrave;n khung cáº£nh n&uacute;i s&ocirc;ng, c&aacute;c t&ograve;a nh&agrave; cao v&uacute;t cá»§a 2 b&ecirc;n bá» S&ocirc;ng H&agrave;n thÆ¡ má»™ng, chi&ecirc;m ngÆ°á»¡ng c&aacute;c m&agrave;n tr&igrave;nh diá»…n ph&aacute;o hoa quá»‘c táº¿ Ä‘áº·c sáº¯c v&agrave; hiá»‡n Ä‘áº¡i. Nh&agrave; h&agrave;ng náº±m táº¡i táº§ng 6 vá»›i diá»‡n t&iacute;ch l&agrave; 160 m2, sáºµn s&agrave;ng phá»¥c vá»¥ cho c&aacute;c buá»•i li&ecirc;n hoan, tiá»‡c, há»™i nghá»‹.</div>', 1333608416, 1, 1),
(74, 'bar_cafe', 'ThÃ´ng tin cafe - bar', 'ná»™i dung th&ocirc;ng tin trang cafe bar Ä‘ang Ä‘Æ°á»£c cáº­p nháº­t...', 1333179353, 1, 1),
(75, 'thue_xe', 'ThuÃª Ã´tÃ´ - xe mÃ¡y - xe Ä‘áº¡p', '<div style="text-align: justify;">Kh&aacute;ch sáº¡n sáºµn s&agrave;ng Ä‘&aacute;p á»©ng má»i y&ecirc;u cáº§u cá»§a Q&uacute;y kh&aacute;ch vá» nhiá»u phÆ°Æ¡ng tiá»‡n Ä‘i láº¡i vá»›i gi&aacute; cáº£ há»£p l&yacute; v&agrave; linh Ä‘á»™ng. Dá»‹ch vá»¥ Ä‘Æ°a v&agrave; Ä‘&oacute;n táº¡i s&acirc;n bay, thu&ecirc; xe tá»± l&aacute;i, c&aacute;c loáº¡i xe Ä‘á»i má»›i tá»« 4 - 30 chá»—. Vá»›i má»©c gi&aacute; chá»‰ 150.000Ä‘á»“ng/1 ng&agrave;y/1 xe m&aacute;y hoáº·c xe Ä‘áº¡p Q&uacute;y kh&aacute;ch c&oacute; thá»ƒ thÆ°á»Ÿng ngoáº¡n th&agrave;nh phá»‘ Ä&agrave; Náºµng, kh&aacute;m ph&aacute; Ä‘á»‰nh n&uacute;i SÆ¡n Tr&agrave;, Phá»‘ cá»• Há»™i An v&agrave; dá»c theo b&atilde;i biá»ƒn xinh Ä‘áº¹p cá»§a th&agrave;nh phá»‘.</div>', 1333609072, 1, 1),
(76, 'tour_bana', 'BÃ  NÃ  NÃºi ChÃºa - ÄÆ°á»ng LÃªn TiÃªn Cáº£nh - SBH', '<div style="text-align: center;"><strong>B&Agrave; N&Agrave; N&Uacute;I CH&Uacute;A &ndash; ÄÆ°á»ng l&ecirc;n Ti&ecirc;n cáº£nh</strong></div>\r\n<div style="text-align: justify;"><strong>Ä&Agrave; Náº´NG - Äá»ˆNH B&Agrave; N&Agrave;</strong><br />\r\n<br />\r\n<strong>8h00:</strong> Xe v&agrave; hÆ°á»›ng dáº«n vi&ecirc;n Ä‘Æ°a qu&yacute; kh&aacute;ch Ä‘áº¿m khu du lá»‹ch B&agrave; N&agrave; - N&uacute;i Ch&uacute;a, má»‡nh danh l&agrave; Sa Pa hay Ä&agrave; Láº¡t táº¡i miá»n Trung vá»›i kh&iacute; háº­u tuyá»‡t vá»i Ä‘Æ°á»£c v&iacute; nhÆ° m&ugrave;a Xu&acirc;n nÆ°á»›c Ph&aacute;p.<br />\r\n<strong><br />\r\n09h30:</strong> Ngá»“i c&aacute;p treo Ä‘áº¡t 2 ká»· lá»¥c tháº¿ giá»›i<br />\r\n<br />\r\n<strong>10h00:</strong> Tham quan khu Jardin, Biá»‡t thá»± cá»•, Háº§m rÆ°á»£u ( chi ph&iacute; tá»± t&uacute;c ), thÄƒm Linh á»©ng tá»±, vÆ°á»n Lá»™c Uyá»ƒn v&agrave; TÆ°á»£ng Pháº­t Th&iacute;ch Ca cao 27 m.<br />\r\n<br />\r\n<strong>11h00: </strong>Chinh phá»¥c Ä‘á»‰nh n&uacute;i ch&uacute;a cao 1.487 m, Ä‘i Cáº§u treo, di t&iacute;ch nh&agrave; h&aacute;t opera<br />\r\n<strong><br />\r\n11h45:</strong> Qu&yacute; kh&aacute;ch d&ugrave;ng bá»¯a trÆ°a táº¡i nh&agrave; h&agrave;ng.<br />\r\n<strong><br />\r\n13h30:</strong> Ä&oacute;n c&aacute;p treo xuá»‘ng Ga Suá»‘i MÆ¡<br />\r\n<strong><br />\r\n14H30:</strong> L&ecirc;n Xe vá» láº¡i th&agrave;nh phá»‘ Ä&agrave; Náºµng<br />\r\n<br />\r\n<strong>15h00:</strong> Tráº£ kh&aacute;ch táº¡i Ä‘iá»ƒm Ä‘&oacute;n</div>', 1333599436, 1, 1),
(77, 'tour_tonghop', 'Tour Non nÆ°á»›c - Há»™i An - Má»¹ SÆ¡n', '<div style="text-align: center;"><strong>NgÅ© H&agrave;nh SÆ¡n &ndash; Há»™i An &ndash; Di sáº£n v&agrave; Thi&ecirc;n nhi&ecirc;n<br />\r\n<br />\r\nÄ&Agrave; Náº´NG &ndash; NGÅ¨ H&Agrave;NH SÆ N &ndash; Há»˜I AN</strong></div>\r\n<div style="text-align: justify;"><br />\r\n<strong>8h00:&nbsp;</strong>&nbsp; Xe v&agrave; hÆ°á»›ng dáº«n vi&ecirc;n Ä‘&oacute;n kh&aacute;ch táº¡i Ä&agrave; Náºµng<br />\r\n<br />\r\n<strong>8h15: </strong>ThÄƒm l&agrave;ng nghá» Ä‘i&ecirc;u kháº¯c Ä‘&aacute; Non nÆ°á»›c<br />\r\n<br />\r\n<strong>8h45:</strong> Chinh phá»¥c ngÅ© h&agrave;nh, kh&aacute;m ph&aacute; váº» Ä‘áº¹p, hang Ä‘á»™ng, Linh á»©ng tá»±, tam thai<br />\r\n<br />\r\n<strong>10h00:</strong> Khá»Ÿi h&agrave;nh Ä‘i Phá»‘ cá»•<br />\r\n<br />\r\n<strong>11h30: </strong>Äƒn trÆ°a táº¡i Nh&agrave; h&agrave;ng Há»™i An<br />\r\n<br />\r\n<strong>13h30: </strong>B&aacute;ch bá»™ tham quan mua sáº¯m táº¡i Phá»‘ cá»•<br />\r\n<br />\r\n<strong>14H30: </strong>L&ecirc;n Xe vá» láº¡i th&agrave;nh phá»‘ Ä&agrave; Náºµng<br />\r\n<br />\r\n<strong>15h00:</strong> Tráº£ kh&aacute;ch táº¡i Ä‘iá»ƒm Ä‘&oacute;n</div>', 1333609333, 1, 1),
(78, 'tour_sontra', 'Tour vÃ²ng quanh bÃ¡n Ä‘áº£o SÆ¡n TrÃ ', '<div style="text-align: center;"><strong>V&Ograve;NG QUANH B&Aacute;N Äáº¢O SÆ N TR&Agrave;</strong></div>\r\n<div style="text-align: justify;"><strong><br />\r\n07h30</strong>: Ä&oacute;n qu&yacute; kh&aacute;ch theo Ä‘iá»ƒm háº¹n táº¡i Ä&agrave; Náºµng, khá»Ÿi h&agrave;nh Ä‘áº¿n B&aacute;n Äáº£o SÆ¡n Tr&agrave; (Monkey Mountain), dá»«ng ch&acirc;n táº¡i Ä&agrave;i ph&aacute;t s&oacute;ng truyá»n h&igrave;nh th&agrave;nh phá»‘ Ä‘á»ƒ thÆ°á»Ÿng ngoáº¡n to&agrave;n cáº£nh phá»‘ biá»ƒn Ä&agrave; Náºµng tr&ecirc;n cao .&nbsp; Má»¥c k&iacute;ch tráº¡m Radar cÅ© nhá»¯ng nÄƒm 60 cá»§a Má»¹, Ä‘Æ°á»£c má»‡nh danh l&agrave; &ldquo;Ä&ocirc;i máº¯t tháº§n Ä&ocirc;ng DÆ°Æ¡ng&rdquo;. Äáº¿n s&acirc;n bay Trá»±c ThÄƒng, Trekking xuy&ecirc;n rá»«ng kh&aacute;m ph&aacute; thi&ecirc;n nhi&ecirc;n n&uacute;i rá»«ng SÆ¡n Tr&agrave; vá»›i tháº£m Ä‘á»™ng thá»±c váº­t nhiá»‡t Ä‘á»›i phong ph&uacute;, qu&yacute; kh&aacute;ch táº­n máº¯t ngáº¯m nh&igrave;n báº§y Voá»c (lo&agrave;i th&uacute; qu&yacute; hiáº¿m thuá»™c s&aacute;ch Ä‘á» cáº§n báº£o tá»“n cá»§a tháº¿ giá»›i), hay h&aacute;i nhá»¯ng quáº£ sim ch&iacute;n má»ng, nhá»¯ng c&acirc;y D&acirc;u rá»«ng trÄ©u quáº£ .&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<br />\r\n<br />\r\nXe Ä‘Æ°a qu&yacute; kh&aacute;ch dá»c theo triá»n n&uacute;i Ä&ocirc;ng Nam Ä‘á»ƒ chi&ecirc;m ngÆ°á»¡ng váº» Ä‘áº¹p tuyá»‡t má»¹ cá»§a biá»ƒn Ä&agrave; Náºµng Ä‘áº¿n vá»›i khu sáº£n xuáº¥t - Báº£o tá»“n thi&ecirc;n nhi&ecirc;n TrÆ°á»ng Mai.<br />\r\n<br />\r\n<strong>12h00:</strong> Ä‚n trÆ°a Ä‘áº·c sáº£n Háº£i L&acirc;m . Qu&yacute; kh&aacute;ch nghá»‰ ngÆ¡i .<br />\r\n<strong><br />\r\n13h30: </strong>Men theo Suá»‘i Nai V&agrave;ng chinh phá»¥c Ä‘áº§u nguá»“n Ä‘á»ƒ thÆ°á»Ÿng ngoáº¡n &ldquo; B&aacute;ch ni&ecirc;n cá»• thá»¥ &rdquo; l&agrave; má»™t c&acirc;y Äa ng&agrave;n nÄƒm tuá»•i vá»›i h&igrave;nh tÆ°á»£ng ch&uacute; Nai khá»•ng lá»“ .<br />\r\n<strong><br />\r\n15h00: </strong>Táº¡m biá»‡t n&uacute;i rá»«ng SÆ¡n Tr&agrave;, xe Ä‘Æ°a qu&yacute; kh&aacute;ch viáº¿ng Linh á»¨ng Tá»± - nÆ¡i c&oacute; tÆ°á»£ng Pháº­t B&agrave; cao 67m,&nbsp; tÆ°á»£ng pháº­t b&agrave; cao nháº¥t Viá»‡t Nam ho&agrave;n th&agrave;nh v&agrave;o th&aacute;ng 11 nÄƒm 2009 .<br />\r\n<br />\r\n<strong>16h00: </strong>ThÆ°á»Ÿng ngoáº¡n váº» Ä‘áº¹p v&agrave; táº¯m biá»ƒn Má»¹ Kh&ecirc; Ä&agrave; Náºµng (ÄÆ°á»£c táº¡p ch&iacute; Forbes b&igrave;nh chá»n l&agrave; 1 trong nhá»¯ng b&atilde;i biá»ƒn quyáº¿n rÅ© nháº¥t H&agrave;nh Tinh). &nbsp;<br />\r\n<br />\r\n<strong>17h00: </strong>HDV Ä‘Æ°a qu&yacute; kh&aacute;ch vá» Ä‘iá»ƒm Ä‘&oacute;n ban Ä‘áº§u. Káº¿t th&uacute;c chÆ°Æ¡ng tr&igrave;nh.</div>', 1333609249, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tgp_product`
--

CREATE TABLE IF NOT EXISTS `tgp_product` (
  `id` int(11) NOT NULL auto_increment,
  `cat` int(11) NOT NULL,
  `ten` varchar(255) NOT NULL,
  `chu_thich` text NOT NULL,
  `hinh` varchar(255) default 'no',
  `noi_dung` text NOT NULL,
  `hien_thi` int(1) NOT NULL default '1',
  `gia` double default NULL,
  `don_vi` int(1) default '0',
  `time` int(11) NOT NULL,
  `luot_xem` int(11) NOT NULL default '0',
  `noi_bat` int(1) NOT NULL default '0',
  `user` int(11) NOT NULL default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=62 ;

-- --------------------------------------------------------

--
-- Table structure for table `tgp_product_menu`
--

CREATE TABLE IF NOT EXISTS `tgp_product_menu` (
  `id` int(11) NOT NULL auto_increment,
  `cat` varchar(20) NOT NULL,
  `ten` varchar(255) NOT NULL,
  `thu_tu` int(11) NOT NULL,
  `hien_thi` int(1) NOT NULL default '1',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=50 ;

-- --------------------------------------------------------

--
-- Table structure for table `tgp_user`
--

CREATE TABLE IF NOT EXISTS `tgp_user` (
  `id` int(11) NOT NULL auto_increment,
  `username` varchar(20) NOT NULL default '',
  `password` varchar(32) default 'no',
  `ten` varchar(255) NOT NULL default '',
  `email` varchar(255) NOT NULL default '',
  `dien_thoai` varchar(20) NOT NULL default '',
  `dia_chi` varchar(255) NOT NULL default '',
  `level` int(1) default '0',
  `trang_thai` int(1) NOT NULL default '0',
  `time` int(11) NOT NULL default '0',
  PRIMARY KEY  (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `tgp_user`
--

INSERT INTO `tgp_user` (`id`, `username`, `password`, `ten`, `email`, `dien_thoai`, `dia_chi`, `level`, `trang_thai`, `time`) VALUES
(1, 'admin', 'b4e9f6ad3b9d4295f0ac72e5dcb9be84', 'Dang Thien Bao', 'thienbaoit@gmail.com', '0126.3688368', 'http://goon.net/', 0, 1, 0);
