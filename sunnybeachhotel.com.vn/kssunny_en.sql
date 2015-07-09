-- phpMyAdmin SQL Dump
-- version 3.4.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Apr 27, 2012 at 09:09 PM
-- Server version: 5.0.92
-- PHP Version: 5.2.1

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `kssunny_en`
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
(183, 5, 'Superior', 'There are 7 rooms - Price: 550,000 VND', '183.jpg', '', '<strong><span lang="en" id="result_box"><span class="hps">Characteristics</span> <span class="hps">of rooms:</span></span></strong><span lang="en" id="result_box"><br />\r\n<span class="hps">The area of</span> <span class="hps">â€‹â€‹each room</span> <span class="hps">in which</span> <span class="hps">a toilet</span> <span class="hps">18m2</span> <span class="hps">3m2</span><br />\r\n<strong><br />\r\n<span class="hps">Equipment</span> <span class="hps">in the room</span></strong><br />\r\n<br />\r\n<span class="hps">-</span> <span class="hps">TV 21</span> <span class="hps atn">&quot;</span><span>TV</span> <span class="hps">channel</span> <span class="hps">Vietnam</span> <span class="hps">and internationally.</span><br />\r\n<span class="hps">-</span> <span class="hps">Bathroom</span> <span class="hps">amenities</span> <span class="hps">glass wall</span><span>.</span><br />\r\n<span class="hps">- 01</span> <span class="hps">bed</span> <span class="hps">02</span> <span class="hps">bed</span> <span class="hps">1.6 m</span> <span class="hps">or</span> <span class="hps">1.1</span> <span class="hps">m</span><span>.</span><br />\r\n<span class="hps">-</span> <span class="hps">Desk</span> <span class="hps">with chair</span><span>.</span><br />\r\n<span class="hps">-</span> <span class="hps">Tables and chairs</span> <span class="hps">for tea.</span><br />\r\n<span class="hps">-</span> <span class="hps">Air conditioning</span> <span class="hps">completely new</span> <span class="hps">SHARP</span><span>.</span><br />\r\n<span class="hps">-</span> <span class="hps">Completely new</span> <span class="hps">Sanyo</span> <span class="hps">Refrigerator</span><span>.</span><br />\r\n<span class="hps">- System</span> <span class="hps">Wifi</span> <span class="hps">wireless internet</span> <span class="hps">access</span><span>.</span><br />\r\n<span class="hps">-</span> <span class="hps">High-speed</span> <span class="hps">Internet connection</span> <span class="hps">ADSL</span><span>.</span><br />\r\n<span class="hps">-</span> <span class="hps">Panasonic</span> <span class="hps">phone</span> <span class="hps">in</span> <span class="hps">the country</span><span>.</span><br />\r\n<span class="hps">-</span> <span class="hps">Ariston</span> <span class="hps">hot water</span> <span class="hps">system</span><span>.</span><br />\r\n<span class="hps">-</span> <span class="hps">American Standard</span> <span class="hps">Sanitary</span> <span class="hps">completely new</span><span>.</span><br />\r\n<span class="hps">- Interior</span> <span class="hps">wooden</span> <span class="hps">bed,</span> <span class="hps">desk,</span> <span class="hps">wardrobe</span> <span class="hps">standard</span> <span class="hps">luxury hotels</span><span>.</span><br />\r\n<span class="hps">-</span> <span class="hps">A spring</span> <span class="hps">mattress</span><span>, blankets</span><span>, sheets, pillows</span> <span class="hps">standard</span> <span class="hps">luxury hotels</span><span>.</span></span>', 1, 1330448400, 1, 0, 0, '183_862106588.jpg;183_1310620108.jpg'),
(181, 5, 'Suite', 'There are 3 rooms - Price: 800,000 VND', '181.jpg', '', '<strong><span lang="en" id="result_box"><span class="hps">Characteristics</span> <span class="hps">of rooms:</span></span></strong><span lang="en" id="result_box"><br />\r\n<span class="hps">The area of</span> <span class="hps">â€‹â€‹each room</span> <span class="hps">in which</span> <span class="hps">a toilet</span> <span class="hps">32m2</span> <span class="hps">5.5</span> <span class="hps">m2</span><span>.</span><br />\r\n<br />\r\n<strong><span class="hps">Equipment</span> <span class="hps">in the room</span><span>:</span></strong><br />\r\n<span class="hps">-</span> <span class="hps">TV</span> <span class="hps atn">LCD 32 &quot;</span><span>TV</span> <span class="hps">channels</span> <span class="hps">Vietnamese and</span> <span class="hps">international</span><br />\r\n<span class="hps">- Baths</span> <span class="hps">are</span><br />\r\n<span class="hps">- 01</span> <span class="hps">bed</span> <span class="hps">1.8 m</span><br />\r\n<span class="hps">-</span> <span class="hps">The window</span> <span class="hps">has</span> <span class="hps">a view of</span> <span class="hps">outside</span><br />\r\n<span class="hps">-</span> <span class="hps">Salon</span> <span class="hps">furniture</span><br />\r\n<span class="hps">-</span> <span class="hps">Desk</span> <span class="hps">with chair</span><br />\r\n<span class="hps">-</span> <span class="hps">Tables and chairs</span> <span class="hps">for tea</span><br />\r\n<span class="hps">-</span> <span class="hps">Air conditioning</span> <span class="hps">completely new</span> <span class="hps">SHARP</span><br />\r\n<span class="hps">-</span> <span class="hps">Completely new</span> <span class="hps">Sanyo</span> <span class="hps">Refrigerator</span><br />\r\n<span class="hps">- System</span> <span class="hps">Wifi</span> <span class="hps">wireless internet</span> <span class="hps">access</span><br />\r\n<span class="hps">-</span> <span class="hps">High-speed</span> <span class="hps">Internet connection</span> <span class="hps">ADSL</span><br />\r\n<span class="hps">-</span> <span class="hps">Panasonic</span> <span class="hps">Phones</span> <span class="hps">domestic</span> <span class="hps">and international</span><br />\r\n<span class="hps">-</span> <span class="hps">Ariston</span> <span class="hps">hot water</span> <span class="hps">system</span><br />\r\n<span class="hps">-</span> <span class="hps">American Standard</span> <span class="hps">Sanitary</span> <span class="hps">completely new</span><br />\r\n<span class="hps">- Interior</span> <span class="hps">wooden</span> <span class="hps">bed,</span> <span class="hps">desk,</span> <span class="hps">wardrobe</span> <span class="hps">standard</span> <span class="hps">luxury hotels</span><br />\r\n<span class="hps">-</span> <span class="hps">A spring</span> <span class="hps">mattress</span><span>, blankets</span><span>, sheets, pillows</span> <span class="hps">standard</span> <span class="hps">luxury hotels</span></span>', 1, 1330448400, 1, 0, 0, '181_50155926.jpg;181_447242743.jpg;181_772976314.jpg;181_350767708.jpg;181_1217506016.jpg'),
(182, 5, 'Deluxe ', 'There are 11 rooms - Price: 650,000 VND', '182.jpg', '', '<strong><span lang="en" id="result_box"><span class="hps">Characteristics</span> <span class="hps">of rooms:</span></span></strong><span lang="en" id="result_box"><br />\r\n<span class="hps">Area</span> <span class="hps atn">25-</span><span>32m2</span> <span class="hps">per</span> <span class="hps">room</span> <span class="hps">including</span> <span class="hps">toilets for</span> <span class="hps atn">4-</span><span>5m2</span><span>.</span><br />\r\n<br />\r\n<strong><span class="hps">Equipment</span> <span class="hps">in the room</span><span>:</span></strong><br />\r\n<br />\r\n<span class="hps">-</span> <span class="hps">TV 21</span> <span class="hps atn">&quot;</span><span>TV</span> <span class="hps">channels</span> <span class="hps">in Vietnam</span> <span class="hps">and internationally.</span><br />\r\n<span class="hps">- Bath</span> <span class="hps">or</span> <span class="hps">shower</span> <span class="hps">glass wall</span> <span class="hps">located</span> <span class="hps">facilities</span><span>.</span><br />\r\n<span class="hps">- 02</span> <span class="hps">bed</span> <span class="hps">1.2 m</span> <span class="hps">or</span> <span class="hps">1.1</span> <span class="hps">m</span> <span class="hps">&amp; 01</span> <span class="hps">bed</span> <span class="hps">01</span> <span class="hps">bed</span> <span class="hps">01</span> <span class="hps">bed</span> <span class="hps">1.6 m</span> <span class="hps">or</span> <span class="hps">1.8 m</span><span>.</span><br />\r\n<span class="hps">-</span> <span class="hps">Desk</span> <span class="hps">with chair</span><span>.</span><br />\r\n<span class="hps">-</span> <span class="hps">Tables and chairs</span> <span class="hps">for tea.</span><br />\r\n<span class="hps">-</span> <span class="hps">Air conditioning</span> <span class="hps">completely new</span> <span class="hps">SHARP</span><span>.</span><br />\r\n<span class="hps">-</span> <span class="hps">Completely new</span> <span class="hps">Sanyo</span> <span class="hps">Refrigerator</span><span>.</span><br />\r\n<span class="hps">- System</span> <span class="hps">Wifi</span> <span class="hps">wireless internet</span> <span class="hps">access</span><span>.</span><br />\r\n<span class="hps">-</span> <span class="hps">High-speed</span> <span class="hps">Internet connection</span> <span class="hps">ADSL</span><span>.</span><br />\r\n<span class="hps">-</span> <span class="hps">Panasonic</span> <span class="hps">phone</span> <span class="hps">in</span> <span class="hps">the country</span><span>.</span><br />\r\n<span class="hps">-</span> <span class="hps">Ariston</span> <span class="hps">hot water</span> <span class="hps">system</span><span>.</span><br />\r\n<span class="hps">-</span> <span class="hps">American Standard</span> <span class="hps">Sanitary</span> <span class="hps">completely new</span><span>.</span><br />\r\n<span class="hps">- Interior</span> <span class="hps">wooden</span> <span class="hps">bed,</span> <span class="hps">desk,</span> <span class="hps">wardrobe</span> <span class="hps">standard</span> <span class="hps">luxury hotels</span><span>.</span><br />\r\n<span class="hps">-</span> <span class="hps">A spring</span> <span class="hps">mattress</span><span>, blankets</span><span>, sheets, pillows</span> <span class="hps">standard</span> <span class="hps">luxury hotels</span><span>.</span></span>', 1, 1330448400, 1, 0, 0, '182_1263935914.jpg;182_438093387.jpg;182_583542703.jpg'),
(191, 6, 'Son Tra Peninsula', 'Son Tra Peninsula (Da Nang) has an area of â€‹â€‹4400ha, the center of Da Nang about 7km, is being developed into a resort with .', '191.jpg', '', '<div style="text-align: justify;"><span lang="en" id="result_box"><span class="hps">the</span> <span class="hps">colonies</span> <span class="hps">are</span> <span class="hps">very</span> <span class="hps">close to shore</span><span>, waves</span> <span class="hps">at</span> <span class="hps">this</span> <span class="hps">beach</span> <span class="hps">two</span> <span class="hps">gentle</span><span>, safe</span> <span class="hps">for</span> <span class="hps">diving</span> <span class="hps">tourism</span><span>.</span></span><br />\r\n&nbsp;</div>\r\n<div style="text-align: center;"><img width="500" height="371" alt="" src="/uploads/sontra1.jpg" /></div>\r\n<div style="text-align: justify;"><br />\r\n<span lang="en" id="result_box"><span class="hps">Surrounding</span> <span class="hps">Son Tra</span> <span class="hps">is the</span> <span class="hps">sea</span><span>, close to</span> <span class="hps">the woods</span> <span class="hps">is</span> <span class="hps">fine white</span> <span class="hps">sand</span><span>,</span> <span class="hps">comfortable</span> <span class="hps">running</span> <span class="hps">along the</span> <span class="hps">narrow</span> <span class="hps">beach.</span> <span class="hps">In places</span> <span class="hps">empty</span><span>,</span> <span class="hps">the</span> <span class="hps">monkeys</span> <span class="hps">often</span> <span class="hps">play</span> <span class="hps">down the beach</span> <span class="hps">forest</span><span>.</span> <span class="hps">Alternating between</span> <span class="hps">sand</span> <span class="hps">and sea</span><span>,</span> <span class="hps">plants</span> <span class="hps">are the</span> <span class="hps">cornerstone</span> <span class="hps">beautiful</span> <span class="hps">shapes</span><span>.</span> <span class="hps">Hon</span><span>, the</span> <span class="hps">fish</span> <span class="hps">look like</span> <span class="hps">warts</span> <span class="hps">on the sand</span> <span class="hps">swaying</span><span>,</span> <span class="hps">sometimes</span> <span class="hps">rock</span> <span class="hps">like</span> <span class="hps">turtles</span> <span class="hps">head up</span> <span class="hps">with one another</span> <span class="hps">prankster</span><span>,</span> <span class="hps">island</span> <span class="hps">girl</span> <span class="hps">beach</span> <span class="hps">picture</span> <span class="hps">...</span> <span class="hps">North shore</span> <span class="hps">winds</span> <span class="hps">and</span> <span class="hps">strong</span> <span class="hps">waves</span><span>, suitable for</span> <span class="hps">adventure tourism</span><span>, south of</span> <span class="hps">Son Tra</span> <span class="hps">sea</span> <span class="hps">calm,</span> <span class="hps">safe.</span> <span class="hps">Son Tra</span> <span class="hps">is</span> <span class="hps">approximately 20</span> <span class="hps">stream flows</span><span>,</span> <span class="hps">water</span> <span class="hps">supply</span> <span class="hps">mainly for</span> <span class="hps">people</span> <span class="hps">living around</span><span>.</span> <span class="hps">Mineral water</span> <span class="hps">in Son</span> <span class="hps">Tra</span> <span class="hps">is considered</span> <span class="hps">one of the</span> <span class="hps">valuable</span> <span class="hps">resources</span> <span class="hps">and export</span> <span class="hps">economy</span><span>.</span> <span class="hps">Son Tra</span> <span class="hps">has</span> <span class="hps">a lighthouse</span> <span class="hps">Tien</span> <span class="hps">Sa</span> <span class="hps">is</span> <span class="hps">one of the</span> <span class="hps">largest and most</span> <span class="hps">beautiful</span> <span class="hps">light</span> <span class="hps">in Vietnam,</span> <span class="hps">was rebuilt</span> <span class="hps">in 1958.</span></span><br />\r\n&nbsp;</div>\r\n<div style="text-align: center;"><img width="500" height="324" alt="" src="/uploads/sontra.jpg" /></div>\r\n<div style="text-align: justify;"><br />\r\n<span lang="en" id="result_box"><span class="hps">Son Tra</span> <span class="hps">is not only</span> <span class="hps">attractive</span> <span class="hps">for</span> <span class="hps">tourists</span> <span class="hps">but also a place</span> <span class="hps">to find</span> <span class="hps">the</span> <span class="hps">ecological</span> <span class="hps">scientists</span><span>.</span> <span class="hps">Sanctuaries</span> <span class="hps">Son Tra</span> <span class="hps">natural</span> <span class="hps">ecosystems</span> <span class="hps">broadleaf</span> <span class="hps">evergreen forest</span> <span class="hps">with many</span> <span class="hps">endemic plants</span><span>, especially</span> <span class="hps">trees that</span> <span class="hps">are</span> <span class="hps">black</span><span>,</span> <span class="hps">glossy</span> <span class="hps">leaf</span> <span class="hps">oil</span><span>,</span> <span class="hps">coastal</span> <span class="hps">runs</span> <span class="hps">to</span> <span class="hps">create the</span> <span class="hps">romantic</span> <span class="hps">beach</span><span>.</span> <span class="hps">There are</span> <span class="hps">many</span> <span class="hps">large</span> <span class="hps">trees</span> <span class="hps">with</span> <span class="hps">odd shapes</span><span>.</span> <span class="hps">Number of</span> <span class="hps">vascular plant</span> <span class="hps">species</span> <span class="hps">to nearly</span> <span class="hps">1000</span> <span class="hps">species of</span> <span class="hps">483</span> <span class="hps">more</span><span>, including 22</span> <span class="hps">rare species of</span> <span class="hps">plants</span> <span class="hps">Essence</span> <span class="hps">evening</span> <span class="hps">appointment</span><span>,</span> <span class="hps">Long live</span> <span class="hps">the tree</span> <span class="hps">strategy</span><span>,</span> <span class="hps">Re</span> <span class="hps">incense</span><span>, Cam</span> <span class="hps">Lai</span> <span class="hps">Ba Ria</span> <span class="hps">and 143</span> <span class="hps">species of</span> <span class="hps">medicinal plants</span><span>, 104</span> <span class="hps">plants</span> <span class="hps">.</span> <span class="hps">Son Tra</span> <span class="hps">has relation</span> <span class="hps">scrub</span><span>,</span> <span class="hps">grassland,</span> <span class="hps">rich,</span> <span class="hps">run down</span> <span class="hps">the coast.</span> <span class="hps">In</span> <span class="hps">this sanctuary</span> <span class="hps">also has 30</span> <span class="hps">species of mammals</span> <span class="hps">belonging to 15 families</span><span>, 51</span> <span class="hps">species</span> <span class="hps">of</span> <span class="hps">25 families</span> <span class="hps">and</span> <span class="hps">15 species of reptiles</span> <span class="hps">and</span> <span class="hps">three</span> <span class="hps">amphibians</span><span>.</span> <span class="hps">Son Tra</span> <span class="hps">is</span> <span class="hps">common</span> <span class="hps">in</span> <span class="hps">all kinds</span> <span class="hps">of rare</span> <span class="hps">animals</span> <span class="hps">such as</span> <span class="hps">monkeys</span> <span class="hps">and</span> <span class="hps">dates</span> <span class="hps">to about</span> <span class="hps">50-60</span> <span class="hps">individuals,</span> <span class="hps">long-tailed macaques</span><span>, wild pigs</span><span>,</span> <span class="hps">hills</span><span>,</span> <span class="hps">cheeks</span> <span class="hps">silver</span> <span class="hps">mink</span><span>,</span> <span class="hps">yellow-legged</span> <span class="hps">squirrels</span><span>,</span> <span class="hps">trees with</span> <span class="hps">spots</span><span>,</span> <span class="hps">chicken</span> <span class="hps">red</span> <span class="hps">cash</span><span>,</span> <span class="hps">green turtles</span><span>.</span></span></div>', 1, 1333558800, 1, 3, 0, NULL),
(192, 6, 'Hai Van Pass - people most important heroes', 'On the way north to south through Vietnam, Hai Van is always an impressive landmarks. This is the highest mountain pass in the mountain pass in Vietnam (about 500m over sea level), full of craggy peaks and also the end of a circuit Truong Son stabbed the sea level.', '192.jpg', '', '<div style="text-align: justify;"><span lang="en" id="result_box"><span class="hps">In</span> <span class="hps">Phu Bien</span> <span class="hps">Tap Luc</span><span>,</span> <span class="hps">Le</span> <span class="hps">Quy Don</span> <span class="hps">commented</span><span>:</span> <span class="hps">Hai Van</span> <span class="hps">the</span> <span class="hps">beach,</span> <span class="hps">the</span> <span class="hps">clouds</span> <span class="hps">teased</span> <span class="hps">each</span> <span class="hps">of</span> <span class="hps">the two countries</span> <span class="hps">is</span> <span class="hps">limited to</span> <span class="hps">Thuan Hoa</span> <span class="hps">and Quang</span> <span class="hps">Nam</span><span>.</span> <span class="hps">More than</span> <span class="hps">six</span> <span class="hps">centuries ago</span><span>, this land</span> <span class="hps">belongs to</span> <span class="hps">two</span> <span class="hps">continents</span> <span class="hps">O</span><span>,</span> <span class="hps">Ri</span> <span class="hps">kingdom</span> <span class="hps">of</span> <span class="hps">Champa</span><span>,</span> <span class="hps">the</span> <span class="hps">King</span> <span class="hps">Che Man</span> <span class="hps">of Champa</span> <span class="hps">is</span> <span class="hps">proposed to</span> <span class="hps">cut</span> <span class="hps">wedding presents</span> <span class="hps">Princess Huyen Tran</span> <span class="hps">Tran</span><span>.</span> <span class="hps">Currently,</span> <span class="hps">Hai Van Pass</span> <span class="hps">is the</span> <span class="hps">border between</span> <span class="hps">Thua Thien</span> <span class="hps">-</span> <span class="hps">Hue</span> <span class="hps">and</span> <span class="hps">Danang</span><span>.</span></span><br />\r\n&nbsp;</div>\r\n<div style="text-align: center;"><img src="/uploads/haivan.jpg" alt="" /></div>\r\n<div style="text-align: justify;"><br />\r\n<span lang="en" id="result_box"><span class="hps">Right on</span> <span class="hps">top of</span> <span class="hps">plastic</span><span>, trace</span> <span class="hps">your ancestors</span> <span class="hps">has left</span><span>:</span> <span class="hps">Pass</span> <span class="hps">the</span> <span class="hps">gate</span> <span class="hps">and</span> <span class="hps">ramparts</span> <span class="hps">level</span> <span class="hps">up</span><span>.</span> <span class="hps">Look</span> <span class="hps">on</span> <span class="hps">the</span> <span class="hps">door</span> <span class="hps">three digit</span> <span class="hps">subject</span> <span class="hps">Thua Thien</span> <span class="hps">Hai</span> <span class="hps">Van</span> <span class="hps">Quan,</span> <span class="hps">Quang</span> <span class="hps">Nams</span> <span class="hps">doors</span> <span class="hps">overlooking the</span> <span class="hps">most important heroes</span> <span class="hps">under heaven</span> <span class="hps">(this is</span> <span class="hps">from the</span> <span class="hps">inscription</span> <span class="hps">of King Le Thanh</span> <span class="hps">Ton</span> <span class="hps">when</span> <span class="hps">stopping</span> <span class="hps">this</span> <span class="hps">scenic</span> <span class="hps">place</span><span>)</span><span>.</span> <span class="hps">Indeed,</span> <span class="hps">from South to North</span><span>, no</span> <span class="hps">protruding</span> <span class="hps">where</span> <span class="hps">high passes</span><span>,</span> <span class="hps">beautiful</span> <span class="hps">shimmering</span><span>,</span> <span class="hps">magical</span> <span class="hps">as</span> <span class="hps">Hai Van</span><span>.</span> <span class="hps">Winding</span> <span class="hps">road passes</span><span>,</span> <span class="hps">meander</span> <span class="hps">along the</span> <span class="hps">mountainside,</span> <span class="hps">winding</span> <span class="hps">like</span> <span class="hps">silk</span> <span class="hps">running horizontally across</span> <span class="hps">the</span> <span class="hps">sky</span><span>.</span> <span class="hps">Just</span> <span class="hps">based on</span> <span class="hps">the name,</span> <span class="hps">is enough to</span> <span class="hps">visualize</span> <span class="hps">the Hai Van</span> <span class="hps">is the world</span> <span class="hps">of wind</span> <span class="hps">and clouds</span><span>.</span> <span class="hps">Wind</span> <span class="hps">as</span> <span class="hps">Drosophila</span> <span class="hps">giong</span> <span class="hps">school</span> <span class="hps">horses</span><span>,</span> <span class="hps">clouds</span> <span class="hps">flowing down</span> <span class="hps">from the sky</span><span>.</span> <span class="hps">Entering</span> <span class="hps">the</span> <span class="hps">realm</span> <span class="hps">to</span> <span class="hps">which</span> <span class="hps">it</span> <span class="hps">lost in</span> <span class="hps">strange</span><span>,</span> <span class="hps">mysterious</span> <span class="hps">smog</span><span>.</span> <span class="hps">Cao</span> <span class="hps">Ba Quat</span><span>,</span> <span class="hps">a poet</span> <span class="hps">Lord</span> <span class="hps">only knows</span> <span class="hps">a life of</span> <span class="hps">apricot</span> <span class="hps atn">(</span><span>Most</span> <span class="hps">students</span> <span class="hps">recommended</span> <span class="hps">the</span> <span class="hps">cult</span> <span class="hps">apricot</span><span>)</span> <span class="hps">also</span> <span class="hps">had</span> <span class="hps">stunned</span><span>:</span> <span class="hps">First</span> <span class="hps">stop</span> <span class="hps">flange</span> <span class="hps">of</span> <span class="hps">gender</span><span>,</span> <span class="hps">remain</span> <span class="hps">identical</span> <span class="hps">to</span> <span class="hps">interference</span> <span class="hps">effects</span> <span class="hps atn">(</span><span>specifically</span> <span class="hps">a</span> <span class="hps">permissive</span> <span class="hps">mold,</span> <span class="hps">do you want to</span> <span class="hps">duplicate</span> <span class="hps">made into</span><span>)</span><span>.</span> <span class="hps">Also from here</span><span>,</span> <span class="hps">on</span> <span class="hps">clear day</span><span>, visitors</span> <span class="hps">can clearly see</span> <span class="hps">the entire city of</span> <span class="hps">Danang,</span> <span class="hps">Tien Sa</span> <span class="hps">-</span> <span class="hps">Son Tra</span> <span class="hps">Peninsula</span><span>,</span> <span class="hps">Cu Lao Cham</span> <span class="hps">...</span> <span class="hps">and</span> <span class="hps">the</span> <span class="hps">golden sand</span> <span class="hps">stretching</span> <span class="hps">to embrace</span> <span class="hps">the immense</span> <span class="hps">blue</span> <span class="hps">water</span> <span class="hps">of the sea.</span><br />\r\n<br />\r\n<span class="hps">What</span> <span class="hps">natural gift</span><span>,</span> <span class="hps">over time and</span> <span class="hps">through</span> <span class="hps">human hands</span><span>,</span> <span class="hps">will become</span> <span class="hps">the</span> <span class="hps">humane values</span><span>â€‹â€‹.</span> <span class="hps">Hai Van</span> <span class="hps">is</span> <span class="hps">to</span> <span class="hps">come</span> <span class="hps">to the</span> <span class="hps">crossroads of</span> <span class="hps">two lands</span><span>,</span> <span class="hps">is the</span> <span class="hps">psychological satisfaction</span> <span class="hps">dominate</span> <span class="hps">the summit,</span> <span class="hps">enjoy yourself</span> <span class="hps">in the</span> <span class="hps">epic</span> <span class="hps">echoes</span> <span class="hps">of</span> <span class="hps">how</span> <span class="hps">the ancient Vietnamese</span> <span class="hps">footprint</span> <span class="hps">to</span> <span class="hps">open the</span> <span class="hps">realms</span><span>, and shall</span> <span class="hps">remember</span> <span class="hps">the past</span> <span class="hps">in</span> <span class="hps">commercial</span> <span class="hps">deep</span> <span class="hps">intestine</span> <span class="hps">of</span> <span class="hps">a</span> <span class="hps">central</span> <span class="hps">track</span><span>.</span></span></div>', 1, 1333558800, 1, 0, 0, NULL),
(193, 6, 'My Son', 'Location: My Son Duy Phu commune, Duy Xuyen district, Quang Nam Da Nang City and about 70km south-west, the Tra Kieu about 10km to the west in a hidden valley.', '193.jpg', '', '<div style="text-align: justify;"><span lang="en" id="result_box"><span class="hps">Characteristics: My Son is a shrine of the Hindu kingdom of Champa. The main temple in My Son worship an image of Linga or Siva - who protected the king of Champa.&nbsp; The words inscribed on a stele in My Son the earliest, dating from the 4th century Bhadresvara said King had built a temple to Siva offering king-Bhadravarman. More than two centuries later, first temple was built of wood were burned in large fires.</span><span><br />\r\n<br />\r\n</span></span></div>\r\n<div style="text-align: center;"><img width="500" height="333" alt="" src="/uploads/my son(1).jpg" /></div>\r\n<div style="text-align: justify;"><br />\r\n<span lang="en" id="result_box"><span class="hps">In the early 7th century, King Sambhuvarman temple rebuilt with more sustainable materials, which exist today. The kings were then remodeled the old temples and build new towers rising to their gods. With more than 70 buildings with brick and stone, was built in the 4th century to the 13th century, My Son became the center of the most important architecture of the Kingdom of Champa. Deity is worshiped in My Son is Bhadravarman, was the king who founded the first king of the late 4th century Amaravati associated with the name Siva, became the main religious worship - the king and royal ancestry .<br />\r\n<br />\r\nIn 1898, the My Son relic was discovered by a French scholar named MC Paris. In the early 20th century, two researchers of France Telecom is L.Finot and L.de Lajonquiere cum architect and archaeologist H. My Son Parmentier came to study art and epitaphs architecture, sculpture Care. Until the years 1903-1904 the most basic of material inscriptions and architecture L.Finot My Son has been officially announced.</span></span><br />\r\n&nbsp;</div>\r\n<div style="text-align: center;"><img width="500" height="352" alt="" src="/uploads/my son1(1).jpg" /></div>\r\n<div style="text-align: justify;"><br />\r\n<span lang="en" id="result_box"><span title="Tiá»n th&acirc;n cá»§a quáº§n thá»ƒ kiáº¿n tr&uacute;c Má»¹ SÆ¡n cá»• k&iacute;nh n&agrave;y, theo vÄƒn bia Ä‘á»ƒ láº¡i l&agrave; má»™t ng&ocirc;i Ä‘á»n l&agrave;m báº±ng gá»— Ä‘á»ƒ thá» tháº§n Siva Bhadravarman.">The precursor of the population of ancient My Son architectural, according to the inscription was a wooden temple to worship Siva Bhadravarman. But by the late 6th century, a massive fire burned wooden temple. Curtain history scientists have been gradually lifted up through historical inscriptions and ancient dynasties shows the My Son Sanctuary is the most important areas of the Cham people during the late fourth century to century 15.<br />\r\n<br />\r\nMaterial and sandstone bricks, for centuries the Cham built a temple tower architectural uniqueness, continuous: the Temple worship Linga-Yoni symbol of creative energy. Beside the main tower (Kalan) are the towers worshiping other gods or worship the deceased kings. Although the same time the war has turned many areas into ruins tower still reflect the sculpture, architecture remains to this day still leave the historical stage style Cham art, the masterpieces a glorious mark of Champa culture and architecture of Southeast Asia.<br />\r\n<br />\r\nEach historical period, architectural style, as well as each church towers gods, the kings of different architectural lines create full mark, but generally the Cham towers were built on one side equal to quadrilateral, divided into 3 sections: Truths tower represents the world of earth, sturdy. Tower itself symbolic of the spirit world, enchanting mystery. The top section is a form of ritual offering fruit or tree leaves, birds, elephants, lions ... animals close to religion and human life.</span><span title="Ä‘&aacute;nh dáº¥u má»™t thá»i huy ho&agrave;ng cá»§a vÄƒn ho&aacute; kiáº¿n tr&uacute;c ChÄƒmpa cÅ©ng nhÆ° cá»§a Ä&ocirc;ng Nam &Aacute;."><br />\r\n<br />\r\n</span><span title="Má»—i thá»i ká»³ lá»‹ch sá»­, kiáº¿n tr&uacute;c mang phong c&aacute;ch ri&ecirc;ng, cÅ©ng nhÆ° má»—i Ä‘á»n th&aacute;p thá» nhá»¯ng vá»‹ tháº§n, nhá»¯ng triá»u vua kh&aacute;c nhau táº¡o n&ecirc;n Ä‘Æ°á»ng n&eacute;t kiáº¿n tr&uacute;c Ä‘áº§y dáº¥u áº¥n, nhÆ°ng nh&igrave;n chung th&aacute;p Ch&agrave;m Ä‘á»u Ä‘Æ°á»£c x&acirc;y dá»±ng tr&ecirc;n má»™t máº·t">Each  historical period, architectural style, as well as each church towers  gods, the kings of different architectural lines create full mark, but  generally the Cham towers were built on one side </span><span title="báº±ng tá»© gi&aacute;c, chia l&agrave;m 3 pháº§n: &ETH;áº¿ th&aacute;p biá»ƒu hiá»‡n tháº¿ giá»›i tráº§n gian, vá»¯ng cháº¯c.">equal to quadrilateral, divided into 3 sections: Truths tower represents the world of earth, sturdy. </span><span title="Th&acirc;n th&aacute;p tÆ°á»£ng h&igrave;nh cá»§a tháº¿ giá»›i tháº§n linh, ká»³ b&iacute; m&ecirc; hoáº·c.">Tower itself symbolic of the spirit world, enchanting mystery. </span><span title="Pháº§n tr&ecirc;n c&ugrave;ng l&agrave; h&igrave;nh ngÆ°á»i d&acirc;ng hoa tr&aacute;i theo nghi lá»… hoáº·c h&igrave;nh c&acirc;y l&aacute;, chim mu&ocirc;ng, voi, sÆ° tá»­...">The top section is a form of ritual offering fruit or tree leaves, birds, elephants, lions ... </span><span title="Ä‘á»™ng váº­t gáº§n gÅ©i vá»›i t&ocirc;n gi&aacute;o v&agrave; cuá»™c sá»‘ng con ngÆ°á»i.">animals close to religion and human life.</span></span><br />\r\n&nbsp;</div>\r\n<div style="text-align: center;"><img width="500" height="375" alt="" src="/uploads/my son2(1).jpg" /></div>\r\n<div style="text-align: justify;">&nbsp;</div>', 1, 1333558800, 1, 2, 0, NULL),
(190, 7, 'Seasonal Promotion', 'Sunny Beach Hotel Danang - luxury and comfort on road travel, Son Tra - Dien Ngoc, Da Nang offers special promotions to attract customers in the East this fall.', '190.jpg', '', 'updating...', 1, 1333126800, 1, 5, 0, NULL),
(194, 6, 'Ba Na Mountain God', 'Ba Na - Nui Chua is a mountain range Hoa Vang district, Da Nang to 40 km to the southwest, high 1487 m above sea level. The average annual temperature between 17 and 20oC.', '194.jpg', '', '<div style="text-align: justify;"><span lang="en" id="result_box"><span class="hps">In</span> <span class="hps">Ba Na</span><span>, visitors</span> <span class="hps">will experience</span> <span class="hps">four</span> <span class="hps">distinct seasons</span> <span class="hps">in a day</span><span>: breakfast</span> <span class="hps">-</span> <span class="hps">Spring</span><span>, L</span> <span class="hps">-</span> <span class="hps">low</span><span>,</span> <span class="hps">way</span> <span class="hps">-</span> <span class="hps">revenue</span> <span class="hps">up</span> <span class="hps">-</span> <span class="hps">east</span> <span class="hps">and the other to</span> <span class="hps">Dalat is</span> <span class="hps">not</span> <span class="hps">wet</span> <span class="hps">because</span> <span class="hps">of</span> <span class="hps">rain</span><span>.</span> <span class="hps">Especially when</span> <span class="hps">rain</span> <span class="hps">occurs,</span> <span class="hps">we</span> <span class="hps">see</span> <span class="hps">rain falling</span> <span class="hps">around</span> <span class="hps">the</span> <span class="hps">summit</span> <span class="hps">ridge</span> <span class="hps">which</span> <span class="hps">is</span> <span class="hps">always dry</span><span>,</span> <span class="hps">still</span> <span class="hps">stops</span> <span class="hps">optical</span> <span class="hps">sky</span><span>,</span> <span class="hps">cool</span> <span class="hps">air</span> <span class="hps">airy</span><span>.</span> <span class="hps">Compared with</span> <span class="hps">Tam Dao</span><span>,</span> <span class="hps">Da</span> <span class="hps">Lat</span><span>,</span> <span class="hps">Ba Na</span> <span class="hps">is more advantageous</span> <span class="hps">for</span> <span class="hps">panoramic views</span><span>.</span> <span class="hps">From the top</span> <span class="hps">of the</span> <span class="hps">cliff</span><span>, visitors</span> <span class="hps">can cover</span> <span class="hps">a</span> <span class="hps">vast</span> <span class="hps">space</span><span>:</span> <span class="hps">sea,</span> <span class="hps">Danang</span><span>,</span> <span class="hps">green</span> <span class="hps">rice fields</span> <span class="hps">on the horizon</span> <span class="hps">...</span><br />\r\n<br />\r\n<span class="hps">While</span> <span class="hps">temperatures from</span> <span class="hps">May</span> <span class="hps">to</span> <span class="hps">August</span> <span class="hps">are</span> <span class="hps">the hottest months</span> <span class="hps">in</span> <span class="hps">the Central Coast</span> <span class="hps">is</span> <span class="hps">often</span> <span class="hps">up to</span> <span class="hps">32oC</span> <span class="hps">17oC</span> <span class="hps">here only</span> <span class="hps">to</span> <span class="hps">20 degrees Celsius</span><span>, the highest since</span> <span class="hps">22oC</span> <span class="hps">-</span> <span class="hps">25oC</span><span>.</span> <span class="hps">But</span> <span class="hps">at night</span> <span class="hps">down</span> <span class="hps">to</span> <span class="hps">15oC</span><span>, equivalent to</span> <span class="hps">the average temperature</span> <span class="hps">in winter</span> <span class="hps">in the North.</span> <span class="hps">The climate is mild</span> <span class="hps">murmuring</span> <span class="hps">streams</span><span>,</span> <span class="hps">rustling</span> <span class="hps">trees</span> <span class="hps">makes</span> <span class="hps">this place</span> <span class="hps">can compare with</span> <span class="hps">resort</span> <span class="hps">areas</span> <span class="hps">such as</span> <span class="hps">Tam Dao</span><span>,</span> <span class="hps">Da</span> <span class="hps">Lat</span> <span class="hps">...</span> <span class="hps">Bana</span> <span class="hps">is</span> <span class="hps">also valuable</span> <span class="hps">conservation</span> <span class="hps">areas</span> <span class="hps">with</span> <span class="hps">544 species of</span> <span class="hps">higher plants</span><span>, 256</span> <span class="hps">species</span><span>,</span> <span class="hps">of which 6</span> <span class="hps">species</span> <span class="hps">and 44</span> <span class="hps">rare</span> <span class="hps">animal species</span> <span class="hps">recorded in</span> <span class="hps">Vietnam Red Book</span> <span class="hps">by</span> <span class="hps">international standards</span> <span class="hps">.</span></span><br />\r\n&nbsp;</div>\r\n<div style="text-align: center;"><img width="500" height="375" alt="" src="/uploads/bana6.jpg" /></div>\r\n<div style="text-align: justify;"><br />\r\n<span lang="en" id="result_box"><span class="hps">Up</span> <span class="hps">Bana</span><span>, visitors</span> <span class="hps">will feel</span> <span class="hps">a sensation of</span> <span class="hps">getting lost in</span> <span class="hps">the clouds</span> <span class="hps">and smog.</span> <span class="hps">Feelings</span> <span class="hps">of each person</span> <span class="hps">as</span> <span class="hps">to</span> <span class="hps">where</span> <span class="hps">this may</span> <span class="hps">vary depending</span> <span class="hps">on many factors</span><span>,</span> <span class="hps">but</span> <span class="hps">the thought</span> <span class="hps">that</span><span>,</span> <span class="hps">between the</span> <span class="hps">tropical</span> <span class="hps">monsoon</span> <span class="hps">choose</span> <span class="hps">a place like</span> <span class="hps">this that</span> <span class="hps">make</span> <span class="hps">Ba Na</span> <span class="hps">resort</span> <span class="hps">where</span> <span class="hps">it is difficult</span> <span class="hps">by</span> <span class="hps">will always be a</span> <span class="hps">general</span> <span class="hps">idea</span> <span class="hps">...</span><br />\r\n<br />\r\n<span class="hps">With the advantage of</span> <span class="hps">this magnificent</span><span>,</span> <span class="hps">from the early</span> <span class="hps">twentieth century</span> <span class="hps">French</span> <span class="hps">Bana</span> <span class="hps">chose</span> <span class="hps">the holiday</span> <span class="hps">and building</span> <span class="hps">where</span> <span class="hps">hundreds of</span> <span class="hps">villas</span><span>, castles</span> <span class="hps">...</span> <span class="hps">Natural</span> <span class="hps">disasters, wars</span> <span class="hps">more than</span> <span class="hps">half a century</span> <span class="hps">has lost the</span> <span class="hps">traces</span> <span class="hps">of</span> <span class="hps">the castle,</span> <span class="hps">the old</span> <span class="hps">motels</span> <span class="hps">...</span> <span class="hps">but still it</span> <span class="hps">the bounty</span> <span class="hps">of nature with</span> <span class="hps">primeval</span> <span class="hps">forests</span> <span class="hps">and</span> <span class="hps">a</span> <span class="hps">temperate</span> <span class="hps">climate</span> <span class="hps">with thousands of</span> <span class="hps">cool</span> <span class="hps">sounds</span> <span class="hps">of</span> <span class="hps">rustling</span> <span class="hps">hill</span> <span class="hps">songs</span> <span class="hps">blend together</span> <span class="hps">murmuring</span> <span class="hps">of</span> <span class="hps">streams</span> <span class="hps">spill</span> <span class="hps">over</span> <span class="hps">into</span> <span class="hps">granite,</span> <span class="hps">quietly</span> <span class="hps">and</span> <span class="hps">behind the</span> <span class="hps">blue</span> <span class="hps">forests</span><span>.</span></span><br />\r\n&nbsp;</div>\r\n<div style="text-align: center;"><img width="500" height="332" alt="" src="/uploads/bn.JPG" /></div>\r\n<div style="text-align: justify;"><br />\r\n<span lang="en" id="result_box"><span class="hps">Currently,</span> <span class="hps">a number of</span> <span class="hps">tourist</span> <span class="hps">villas in</span> <span class="hps">Ba Na</span> <span class="hps">has been</span> <span class="hps">restored</span> <span class="hps">with full</span> <span class="hps">amenities</span> <span class="hps">and</span> <span class="hps">modern services</span> <span class="hps">are ready to serve</span> <span class="hps">tourists.</span> <span class="hps">Many</span> <span class="hps">of the</span> <span class="hps">villas</span> <span class="hps">as well as</span> <span class="hps">the</span> <span class="hps">State</span> <span class="hps">privatization</span> <span class="hps">has been</span> <span class="hps">built here</span><span>,</span> <span class="hps">enough to meet</span> <span class="hps">the needs of</span> <span class="hps">sightseeing,</span> <span class="hps">tourist</span> <span class="hps">resort</span> <span class="hps">of</span> <span class="hps">lkhach</span><span>.</span> <span class="hps">In particular,</span> <span class="hps">modern cable car</span> <span class="hps">system</span> <span class="hps">will</span> <span class="hps">drive you from</span> <span class="hps">Vong Nguyet hill</span><span>,</span> <span class="hps">hidden in</span> <span class="hps">the clouds</span> <span class="hps">and through</span> <span class="hps">forests</span> <span class="hps">below to get</span> <span class="hps">to the center</span> <span class="hps">of Ba Na</span> <span class="hps">resort</span><span>.</span><br />\r\n<br />\r\n<span class="hps">Ba Na -</span> <span class="hps">the convergence</span> <span class="hps">seems</span> <span class="hps">vague</span><span>,</span> <span class="hps">romantic</span> <span class="hps">creatures,</span> <span class="hps">some</span> <span class="hps">bricks</span> <span class="hps">left</span> <span class="hps">Hoai</span> <span class="hps">moss</span> <span class="hps">of time and</span> <span class="hps">conscious</span> <span class="hps">participation</span> <span class="hps">of people</span> <span class="hps">in</span> <span class="hps">beauty.</span> <span class="hps">From the top</span> <span class="hps">view of the</span> <span class="hps">Da</span> <span class="hps">Nang</span> <span class="hps">Bana</span><span>, people</span> <span class="hps">feel</span> <span class="hps">like</span> <span class="hps">there</span> <span class="hps">is</span> <span class="hps">another life</span><span>,</span> <span class="hps">enjoy the</span> <span class="hps">other</span> <span class="hps">happy</span> <span class="hps">...</span> <span class="hps">things</span> <span class="hps">hectic</span> <span class="hps">urban</span> <span class="hps">life</span> <span class="hps">never</span> <span class="hps">know</span><span>.</span><br />\r\n<br />\r\n<span class="hps">The foot of Mount</span> <span class="hps">Ba Na</span><span>,</span> <span class="hps">Mo Stream</span> <span class="hps">tourist</span> <span class="hps">is</span> <span class="hps">very crowded</span><span>, especially</span> <span class="hps">in summer.</span> <span class="hps">Here are</span> <span class="hps">the Toc Tien</span> <span class="hps">9 floors</span> <span class="hps">waterfall</span><span>,</span> <span class="hps">this</span> <span class="hps">waterfall</span> <span class="hps">called</span> <span class="hps">Toc Tien</span> <span class="hps">because</span> <span class="hps">operators</span> <span class="hps">stand</span> <span class="hps">from under</span> <span class="hps">foot waterfall</span> <span class="hps">like</span> <span class="hps">a</span> <span class="hps">waterfall</span> <span class="hps">looking up</span> <span class="hps">a fairy</span><span>s hair</span><span>.</span> <span class="hps">The landscape</span> <span class="hps">combines</span> <span class="hps">mountains</span><span>, with its</span> <span class="hps">white</span> <span class="hps">waters</span><span>, cool</span> <span class="hps">helps us</span> <span class="hps">to</span> <span class="hps">forget</span> <span class="hps">the fatigue</span> <span class="hps">of</span> <span class="hps">daily life</span> <span class="hps">to enjoy the</span> <span class="hps">magical</span> <span class="hps">moments of</span> <span class="hps">relaxation</span><span>.</span></span></div>', 1, 1333558800, 1, 5, 0, NULL);

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
(29, 'thu_vien_hinh', 'Room''s photos', 1, 1),
(36, 'thu_vien_hinh', 'Hall''s photos', 3, 1),
(34, 'gioi_thieu', 'Giá»›i thiá»‡u', 1, 1),
(35, 'thu_vien_hinh', 'Hotel''s photos', 2, 1),
(37, 'thu_vien_hinh', 'Da Nang Attractions', 4, 1),
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
('222.254.225.194', '1335535567', '', 'Mozilla/5.0 (Windows NT 5.1; rv:12.0) Gecko/20100101 Firefox/12.0', 0);

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
('25/04/2012', 3),
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
(57, 'copyright', 'Copyright', '<span style="color: rgb(246, 222, 145);"><span style="font-weight: bold;">Copyright &copy; 2012 Sunny Beach Hotel Da Nang</span><br />\r\nAddress: </span><span style="color: rgb(246, 222, 145);"> Lot 29-30, </span><span style="color: rgb(246, 222, 145);">Duong Dinh Nghe - Son Tra District -&nbsp; Da Nang city<br />\r\nTel: (0511) 3967666 - </span><span style="color: rgb(246, 222, 145);">(0511) 3967665</span><span style="color: rgb(246, 222, 145);"> - Fax: (0511) 3967664<br />\r\nEmail : info@sunnybeachhotel.com.vn</span>', 1335327000, 1, 14222),
(55, 'thong_tin_lien_he', 'ThÃ´ng tin liÃªn há»‡', '<div style="text-align: left;">Contac us:</div>', 1335326838, 1, 1035),
(65, 'dich_vu', 'dich vu ', '<div style="line-height: 20px; width: 279px" dir="ltr">\r\n<ul>\r\n    <li><a href="/he-thong-phong/5-Há»‡%20thá»‘ng%20ph&ograve;ng"><font size="2" color="#eed390">Rooms</font></a> </li>\r\n    <li><a href="/nha-hang/"><font size="2" color="#eed390">Restaurant</font></a> </li>\r\n    <li><a href="/bar-cafe/"><font size="2" color="#eed390">Bar - Cafe</font></a>&nbsp;</li>\r\n    <li><a href="/thue-xe/"><font size="2" color="#eed390">Car - Motocycle - Bicycle</font></a> </li>\r\n    <li><a href="/tour-bana/"><font size="2" color="#eed390">Ba Na tour</font></a></li>\r\n    <li><a href="/tour-tonghop/"><font size="2" color="#eed390">Non Nuoc - Hoi An - My Son tour</font></a></li>\r\n    <li><a href="/tour-sontra/"><font size="2" color="#eed390">Tour around Son Tra Peninsula</font></a></li>\r\n</ul>\r\n</div>', 1335325659, 1, 529),
(68, 'ho_tro', 'Há»— trá»£', '<table cellspacing="0" cellpadding="0" border="0" style="width: 309px; height: 62px; margin-bottom: -0.7em;">\r\n    <tbody>\r\n        <tr>\r\n            <td><a href="ymsgr:sendIM?sunnybeachhotel"><img align="absMiddle" vspace="4" border="0" style="width: 28px; height: 22px;" src="/uploads/image/yahoo.png" alt="" /></a><a href="ymsgr:sendIM?sunnybeachhotel">&nbsp;&nbsp;&nbsp; <br />\r\n            </a></td>\r\n            <td><strong><span lang="en" class="short_text" id="result_box"><span class="hps">Reception:</span></span></strong></td>\r\n            <td><span><span style=" float: left;">&nbsp; 0511.3967 666 - 0511.3967 665</span></span></td>\r\n        </tr>\r\n        <tr>\r\n            <td><a href="skype:sunnybeachhotel?call"><img align="absMiddle" vspace="4" border="0" src="/uploads/image/skyle.png" style="width: 32px; height: 18px;" alt="" />&nbsp;</a><a href="skype:sunnybeachhotel?call">&nbsp; </a></td>\r\n            <td><strong><span lang="en" class="short_text" id="result_box"><span class="hps">Manager:</span></span></strong></td>\r\n            <td><span style="float: left;">&nbsp; 0905 159 128 - 0905 205 840</span></td>\r\n        </tr>\r\n    </tbody>\r\n</table>', 1335326930, 1, 12065),
(70, 'gioi_thieu', 'About us', '<span style="font-size: medium;"><strong><span lang="en" id="result_box"><span class="hps">Sunny</span> <span class="hps">Beach</span> <span class="hps">Hotel</span></span></strong><span lang="en" id="result_box"> <span class="hps">Welcome</span> <span class="hps">welcome</span> <span class="hps">tourists to</span> <span class="hps">Da Nang</span> <span class="hps">city</span> <span class="hps">beautiful</span>.</span></span><span lang="en" id="result_box"><br />\r\n<br />\r\n<strong><span class="hps">SUNNY</span> <span class="hps">BEACH</span> <span class="hps">hotel</span> </strong><span class="hps">located</span> <span class="hps">between</span> <span class="hps">the</span> <span class="hps">poetic Han</span> <span class="hps">River</span> <span class="hps">bridge</span> <span class="hps">and</span> <span class="hps">turn</span> <span class="hps">characterized</span> <span class="hps">Khe beach</span> <span class="hps">clean, green</span><span>, beautiful</span> <span class="hps">Forbes</span> <span class="hps">has been</span> <span class="hps">named one</span> <span class="hps">of the six</span> <span class="hps">most beautiful</span> <span class="hps">beaches</span><span>.</span> <span class="hps">Hotel</span> <span class="hps">2 star</span> <span class="hps">standard</span> <span class="hps">includes 6</span> <span class="hps">floors,</span> <span class="hps">21 rooms</span> <span class="hps">and 01</span> <span class="hps">halls</span> <span class="hps">with a capacity of</span> <span class="hps">about 80</span> <span class="hps">guests</span><span>.</span> <span class="hps">Since</span> <span class="hps">space</span> <span class="hps">in</span> <span class="hps">the hall and</span> <span class="hps">6th floor</span> <span class="hps">terrace</span><span>,</span> <span class="hps">you</span> <span class="hps">can watch the</span> <span class="hps">blue sea</span> <span class="hps">in the east</span><span>,</span> <span class="hps">but you can also</span> <span class="hps">watch the</span> <span class="hps">colorful</span> <span class="hps">fireworks</span> <span class="hps">are shot</span> <span class="hps">up from the</span> <span class="hps">banks of the river</span><span>.</span><br />\r\n<br />\r\n<span class="hps">With</span> <span class="hps">warm</span> <span class="hps">wooden</span> <span class="hps">interior</span><span>,</span> <span class="hps">fully</span> <span class="hps">equipped</span><span>:</span> <span class="hps">the desk,</span> <span class="hps">tea table</span><span>,</span> <span class="hps">free wireless</span> <span class="hps">internet</span><span>, television</span> <span class="hps">with</span> <span class="hps">international</span> <span class="hps">cable channels</span> <span class="hps">...</span> <span class="hps">with</span> <span class="hps">extensive service</span><span>,</span> <span class="hps">quality</span> <span class="hps">and style of</span> <span class="hps">service</span> <span class="hps">dedicated caring</span> <span class="hps">staff</span> <span class="hps">of</span> <span class="hps">trained</span> <span class="hps">professionals,</span> <span class="hps">make sure</span> <span class="hps">Sunny</span> <span class="hps">Beach</span> <span class="hps">hotel</span> <span class="hps">in Da</span> <span class="hps">Nang</span> <span class="hps">will bring</span> <span class="hps">you</span> <span class="hps">comfort</span><span>, comfort</span> <span class="hps">when staying</span> <span class="hps">here.</span><br />\r\n<br />\r\n<span class="hps">Also,</span> <span class="hps">come to</span><strong> <span class="hps">Sunny</span> <span class="hps">Beach</span> <span class="hps">hotel</span> <span class="hps">Danang</span></strong> <span class="hps">tourists</span> <span class="hps">can enjoy the</span> <span class="hps">fresh air</span> <span class="hps">of the sea</span> <span class="hps">and</span> <span class="hps">enjoy the</span> <span class="hps">mountain</span> <span class="hps">scenery</span> <span class="hps">of</span> <span class="hps">the beautiful</span> <span class="hps">city of Da</span> <span class="hps">Nang</span><span>.</span><br />\r\n<br />\r\n<span class="hps">Da</span> <span class="hps">Nang</span> <span class="hps">Hotels</span> <span class="hps">Sunny</span> <span class="hps">Beach</span> <span class="hps">are pleased to</span> <span class="hps">serve you</span><span>.</span></span>', 1335324932, 1, 1),
(71, 'lien_he_dat_phong', 'LiÃªn há»‡ Ä‘áº·t phÃ²ng', 'Qu&yacute; kh&aacute;ch vui l&ograve;ng Ä‘iá»n v&agrave;o &ocirc; trá»‘ng dÆ°á»›i Ä‘&acirc;y Ä‘á»ƒ Ä‘áº·t ph&ograve;ng hoáº·c gá»i 05113.967.666 - 05113.967.665. C&aacute;m Æ¡n qu&yacute; kh&aacute;ch Ä‘&atilde; li&ecirc;n há»‡ vá»›i ch&uacute;ng t&ocirc;i.<br />', 1328241700, 1, 409),
(72, 'nd_dat_phong', 'Äáº·t phÃ²ng', '<strong><span lang="en" id="result_box"><span class="hps">Customers</span> <span class="hps">booking</span> <span class="hps">please</span> <span class="hps">call</span> <span class="hps">directly to</span><span>:</span></span></strong><span lang="en" id="result_box"><br />\r\n<span class="hps">Tel:</span> <span class="hps">0511.3967</span> <span class="hps">666</span> <span class="hps">to book</span> <span class="hps">or enter</span> <span class="hps">the</span> <span class="hps">online booking</span> <span class="hps">form</span> <span class="hps">below.<br />\r\n<br />\r\n</span></span>', 1335325457, 1, 1),
(73, 'nha_hang', 'ThÃ´ng tin nhÃ  hÃ ng', '<span lang="en" id="result_box"><span class="hps">Restaurant</span> <span class="hps">Sunny</span> <span class="hps">Beach</span> <span class="hps">hotel</span> <span class="hps">with</span> <span class="hps">airy</span> <span class="hps">spaces</span><span>,</span> <span class="hps">can watch the</span> <span class="hps">river</span> <span class="hps">mountain</span> <span class="hps">scenery</span><span>,</span> <span class="hps">towering</span> <span class="hps">buildings</span> <span class="hps">of the</span> <span class="hps">two</span> <span class="hps">shores of</span> <span class="hps">the romantic Han</span> <span class="hps">River</span><span>, admire</span> <span class="hps">the performances</span> <span class="hps">special</span> <span class="hps">fireworks</span> <span class="hps">and</span> <span class="hps">international</span> <span class="hps">modern</span> <span class="hps">.</span> <span class="hps">The restaurant</span> <span class="hps">is located</span> <span class="hps">at</span> <span class="hps">6th floor</span> <span class="hps">with an area</span> <span class="hps">of 160</span> <span class="hps">m2</span><span>, ready</span> <span class="hps">for</span> <span class="hps">the</span> <span class="hps">party</span><span>, parties</span><span>, conferences</span><span>.</span></span>', 1335325699, 1, 1),
(74, 'bar_cafe', 'ThÃ´ng tin cafe - bar', '<span lang="en" id="result_box"><span class="hps">Updating.....</span></span>', 1335325763, 1, 1),
(75, 'thue_xe', 'ThuÃª Ã´tÃ´ - xe mÃ¡y - xe Ä‘áº¡p', '<span lang="en" id="result_box"><span class="hps">The hotel</span> <span class="hps">is ready to meet</span> <span class="hps">all requirements of</span> <span class="hps">our honored guest</span> <span class="hps">on</span> <span class="hps">many</span> <span class="hps">vehicles</span> <span class="hps">with</span> <span class="hps">reasonable prices</span> <span class="hps">and flexibility.</span> <span class="hps">Transportation services</span> <span class="hps">and</span> <span class="hps">airport pickup</span><span>, car rental</span> <span class="hps">self</span> <span class="hps">drive</span><span>,</span> <span class="hps">the</span> <span class="hps">newer</span> <span class="hps">vehicles</span> <span class="hps">from</span> <span class="hps">4-30</span> <span class="hps">seats</span><span>.</span> <span class="hps">With</span> <span class="hps">prices</span> <span class="hps">only</span> <span class="hps">150.000dong</span> <span class="hps">/ 1</span> <span class="hps">day</span> <span class="hps">/</span> <span class="hps">1 motorcycle</span> <span class="hps">or bicycle</span> <span class="hps">you can</span> <span class="hps">enjoy the</span> <span class="hps">city of Da</span> <span class="hps">Nang</span><span>,</span> <span class="hps">Son Tra</span> <span class="hps">mountain</span> <span class="hps">to explore</span><span>,</span> <span class="hps">Hoi An ancient town</span> <span class="hps">and along the</span> <span class="hps">beautiful</span> <span class="hps">beaches</span> <span class="hps">of the city.</span></span>', 1335325771, 1, 1),
(76, 'tour_bana', 'BÃ  NÃ  NÃºi ChÃºa - ÄÆ°á»ng LÃªn TiÃªn Cáº£nh - SBH', '<div style="text-align: center;"><strong><span lang="en" id="result_box"><span class="hps">BA NA</span> <span class="hps">MOUNTAIN</span> <span class="hps">GOD</span> <span class="hps">-</span> <span class="hps">Road to</span> <span class="hps">the foreground</span></span></strong><span lang="en" id="result_box"><br />\r\n</span></div>\r\n<span lang="en" id="result_box"> <strong><span class="hps">DANANG -</span> <span class="hps">BA NA</span> <span class="hps">TOP</span></strong><br />\r\n<br />\r\n<span class="hps">8.00</span><span>:</span> <span class="hps">Car and</span> <span class="hps">guide lead</span> <span class="hps">you</span> <span class="hps">count</span> <span class="hps">resort</span> <span class="hps">Ba Na -</span> <span class="hps">Nui Chua</span><span>,</span> <span class="hps">known as</span> <span class="hps">Sa</span> <span class="hps">Pa</span> <span class="hps">or</span> <span class="hps">Da Lat</span> <span class="hps">in the Central</span> <span class="hps">with a</span> <span class="hps">wonderful climate</span> <span class="hps">is like</span> <span class="hps">spring</span> <span class="hps">in France.</span><br />\r\n<br />\r\n<strong><span class="hps">09h30</span><span>:</span></strong> <span class="hps">Sitting</span> <span class="hps">cable car</span> <span class="hps">to reach</span> <span class="hps">two</span> <span class="hps">world records</span><br />\r\n<br />\r\n<strong><span class="hps">10h00</span><span>:</span></strong><span> Visit the</span> <span class="hps">Jardin</span><span>, Villa</span> <span class="hps">ancient</span> <span class="hps">Catacombs</span> <span class="hps">(cost</span> <span class="hps">excluded)</span><span>,</span> <span class="hps">visit</span> <span class="hps atn">the self-</span><span>Linh</span><span>, Sarnath</span> <span class="hps">Buddha</span> <span class="hps">Shakyamuni</span> <span class="hps">and</span> <span class="hps">27 m</span> <span class="hps">high</span><span>.</span><br />\r\n<br />\r\n<strong><span class="hps">11h00</span><span>:</span></strong><span> conquering the</span> <span class="hps">1487</span> <span class="hps">m</span> <span class="hps">high</span> <span class="hps">mountain</span> <span class="hps">god</span><span>,</span> <span class="hps">to</span> <span class="hps">Suspension Bridge</span><span>,</span> <span class="hps">opera house</span> <span class="hps">ruins</span><br />\r\n<br />\r\n<strong><span class="hps">11h45</span><span>:</span></strong><span> Have</span> <span class="hps">lunch at</span> <span class="hps">the restaurant.</span><br />\r\n<br />\r\n<strong><span class="hps">13h30</span><span>:</span></strong><span> Pick up</span> <span class="hps">the cable car</span> <span class="hps">down</span> <span class="hps">Mo</span> <span class="hps">Ga</span> <span class="hps">Stream</span><br />\r\n<strong><br />\r\n<span class="hps">14.30</span><span>: </span></strong><span>Up</span> <span class="hps">Truck</span> <span class="hps">of</span> <span class="hps">the</span> <span class="hps">Da Nang city</span><br />\r\n<br />\r\n<strong><span class="hps">15h00</span><span>: </span></strong><span>Pay</span> <span class="hps">at the point of</span> <span class="hps">pick up</span></span>', 1335325806, 1, 1),
(77, 'tour_tonghop', 'Tour Non nÆ°á»›c - Há»™i An - Má»¹ SÆ¡n', '<div style="text-align: center;"><strong><span lang="en" id="result_box"><span class="hps">Ngu Hanh Son </span><span class="hps">- Hoi An</span> <span class="hps">- Heritage and</span> <span class="hps">Nature</span></span></strong><span lang="en" id="result_box"><br />\r\n</span></div>\r\n<div style="text-align: center;"><strong><span lang="en" id="result_box"><br />\r\n<span class="hps">Da Nang</span> <span class="hps">-</span> <span class="hps">Ngu Hanh Son</span> <span class="hps">- HOI AN</span></span></strong><span lang="en" id="result_box"><br />\r\n</span></div>\r\n<span lang="en" id="result_box"><br />\r\n<strong><span class="hps">8.00</span><span>:</span> </strong><span class="hps">Car and</span> <span class="hps">welcome guests</span> <span class="hps">in Da</span> <span class="hps">Nang</span><br />\r\n<br />\r\n<strong><span class="hps">8h15</span><span>: </span></strong><span>Visit</span> <span class="hps">the village of</span> <span class="hps">Non Nuoc</span> <span class="hps">stone</span> <span class="hps">carving</span><br />\r\n<br />\r\n<strong><span class="hps">8:45</span><span>:</span></strong><span> conquering the</span> <span class="hps">elements,</span> <span class="hps">to discover the beauty</span><span>, caves,</span> <span class="hps">inspired</span> <span class="hps">self</span><span>,</span> <span class="hps">tam</span> <span class="hps">thai</span><br />\r\n<br />\r\n<strong><span class="hps">10h00</span><span>:</span></strong><span> Departure to</span> <span class="hps">Ancient</span><br />\r\n<strong><br />\r\n<span class="hps">11h30:</span></strong> <span class="hps">Lunch</span> <span class="hps">at restaurant</span> <span class="hps">Hoi An</span><br />\r\n<br />\r\n<strong><span class="hps">13h30</span><span>:</span></strong> <span class="hps">Bach</span> <span class="hps">to visit</span> <span class="hps">the</span> <span class="hps">ancient city</span> <span class="hps">shopping</span><br />\r\n<br />\r\n<strong><span class="hps">14h30</span><span>: </span></strong><span>Up</span> <span class="hps">Truck</span> <span class="hps">of</span> <span class="hps">the</span> <span class="hps">Da Nang city</span><br />\r\n<strong><br />\r\n<span class="hps">15h00</span><span>:</span></strong><span> Pay</span> <span class="hps">at the point of</span> <span class="hps">pick up</span></span>', 1335325895, 1, 1),
(78, 'tour_sontra', 'Tour vÃ²ng quanh bÃ¡n Ä‘áº£o SÆ¡n TrÃ ', '<div style="text-align: center;"><strong><span lang="en" id="result_box"><span class="hps">ROUND</span> <span class="hps">AROUND</span> <span class="hps">Son Tra Peninsula</span></span></strong><span lang="en" id="result_box"><br />\r\n</span></div>\r\n<strong><span lang="en" id="result_box"><br />\r\n<span class="hps">07h30</span><span>:</span></span></strong><span lang="en" id="result_box"><span> Pick</span> <span class="hps">your</span> <span class="hps">destination</span> <span class="hps">at</span> <span class="hps">the</span> <span class="hps">Da Nang</span><span>, depart</span> <span class="hps">to</span> <span class="hps">Son Tra</span> <span class="hps">Peninsula</span> <span class="hps atn">(</span><span>Monkey</span> <span class="hps">Mountain)</span><span>, stopping</span> <span class="hps">at the</span> <span class="hps">station</span> <span class="hps">broadcasting</span> <span class="hps">to the city to</span> <span class="hps">enjoy panoramic</span> <span class="hps">coastal city</span> <span class="hps">of Da</span> <span class="hps">Nang</span> <span class="hps">on high.</span> <span class="hps">Section</span> <span class="hps">click</span> <span class="hps">former</span> <span class="hps">Radar</span> <span class="hps">Station</span> <span class="hps">60 years of the</span> <span class="hps">United States,</span> <span class="hps">is known as the</span> <span class="hps atn">&quot;</span><span>Eyes</span> <span class="hps">of Indochina</span><span>&quot;</span><span>.</span> <span class="hps">Helicopter</span> <span class="hps">to the airport</span><span>,</span> <span class="hps">Trekking</span> <span class="hps">through the forest</span> <span class="hps">to explore</span> <span class="hps">Son Tra</span> <span class="hps">natural</span> <span class="hps">jungle</span> <span class="hps">with</span> <span class="hps">tropical</span> <span class="hps">flora and fauna</span> <span class="hps">rich,</span> <span class="hps">you</span> <span class="hps">see</span> <span class="hps">firsthand the</span> <span class="hps">herd</span> <span class="hps">langur</span> <span class="hps atn">(</span><span>precious species</span> <span class="hps">to be conserved</span> <span class="hps">under</span> <span class="hps">the Red Book</span> <span class="hps">of the world</span><span>)</span> <span class="hps">,</span> <span class="hps">or</span> <span class="hps">picking</span> <span class="hps">the</span> <span class="hps">ripe</span> <span class="hps">berry</span> <span class="hps">fruit</span> <span class="hps">sim</span><span>,</span> <span class="hps">Mulberry</span> <span class="hps">trees</span> <span class="hps">laden</span> <span class="hps">forest</span><span>.</span><br />\r\n<br />\r\n<span class="hps">Take your car</span> <span class="hps">along the</span> <span class="hps">southeast</span> <span class="hps">slopes</span> <span class="hps">to admire the</span> <span class="hps">beauty</span> <span class="hps">of the sea</span> <span class="hps">beautiful</span> <span class="hps">Da Nang to</span> <span class="hps">production areas</span> <span class="hps">-</span> <span class="hps">Chiang Mai</span> <span class="hps">Nature Reserve</span><span>.</span><br />\r\n<strong><br />\r\n<span class="hps">12h00</span><span>:</span></strong><span> Lunch</span> <span class="hps">specialties</span> <span class="hps">Hai</span> <span class="hps">Lam</span><span>.</span> <span class="hps">You rest</span><span>.</span><br />\r\n<strong><br />\r\n<span class="hps">13h30</span><span>:</span> </strong><span class="hps">Men</span> <span class="hps">in</span> <span class="hps">Yellow</span> <span class="hps">Springs</span> <span class="hps">conquer</span> <span class="hps">Nai</span> <span class="hps">watershed</span> <span class="hps">to enjoy the</span> <span class="hps atn">&quot;</span><span>Centennial</span> <span class="hps">ancient</span><span>&quot;</span> <span class="hps">tree has a</span> <span class="hps">thousand</span> <span class="hps">year old</span> <span class="hps">deer</span> <span class="hps">with</span> <span class="hps">huge</span> <span class="hps">images</span><span>.</span><br />\r\n<br />\r\n<strong><span class="hps">15h00</span><span>: </span></strong><span>Goodbye</span><span>, Son Tra</span> <span class="hps">mountain</span><span>,</span> <span class="hps">take your car to</span> <span class="hps">visit</span> <span class="hps">Linh Ung</span> <span class="hps">Self</span> <span class="hps">-</span> <span class="hps">where the</span> <span class="hps">67m</span> <span class="hps">high</span> <span class="hps">statue</span> <span class="hps">she</span><span>,</span> <span class="hps">her</span> <span class="hps">highest</span> <span class="hps">Buddha</span> <span class="hps">Vietnam</span> <span class="hps">completed in</span> <span class="hps">November 2009</span><span>.</span><br />\r\n<strong><br />\r\n<span class="hps">16h00</span><span>: </span></strong><span>Enjoy</span> <span class="hps">the beauty and</span> <span class="hps">My Khe</span> <span class="hps">beach</span> <span class="hps atn">(</span><span>Forbes</span> <span class="hps">Magazine</span> <span class="hps">as</span> <span class="hps">one</span> <span class="hps">of</span> <span class="hps">the most charming</span> <span class="hps">beaches of</span> <span class="hps">the planet</span><span>)</span><span>.</span><br />\r\n<strong><br />\r\n<span class="hps">17h00</span><span>:</span> </strong><span class="hps">HDV</span> <span class="hps">take you</span> <span class="hps">to</span> <span class="hps">pick the initial point</span><span>.</span> <span class="hps">End of program</span><span>.</span></span>', 1335325839, 1, 1);

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
