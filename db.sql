-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               5.1.67-community-log - MySQL Community Server (GPL)
-- Server OS:                    Win32
-- HeidiSQL version:             7.0.0.4053
-- Date/time:                    2013-11-12 19:30:26
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET FOREIGN_KEY_CHECKS=0 */;

-- Dumping database structure for minerals
CREATE DATABASE IF NOT EXISTS `minerals` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `minerals`;


-- Dumping structure for table minerals.data
CREATE TABLE IF NOT EXISTS `data` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `item_id` int(11) NOT NULL,
  `field_id` int(11) NOT NULL,
  `value` float NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_data_items` (`item_id`),
  KEY `FK_data_ice_fields` (`field_id`),
  CONSTRAINT `FK_data_ice_fields` FOREIGN KEY (`field_id`) REFERENCES `fields` (`id`),
  CONSTRAINT `FK_data_items` FOREIGN KEY (`item_id`) REFERENCES `items` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=937 DEFAULT CHARSET=utf8;

-- Dumping data for table minerals.data: ~826 rows (approximately)
/*!40000 ALTER TABLE `data` DISABLE KEYS */;
INSERT INTO `data` (`id`, `item_id`, `field_id`, `value`) VALUES
	(1, 193, 55, 285),
	(2, 194, 55, 0),
	(3, 195, 55, 1),
	(4, 196, 55, 0),
	(5, 197, 55, 0),
	(6, 198, 55, 0),
	(7, 199, 55, 0),
	(8, 200, 55, 0),
	(9, 201, 55, 0),
	(10, 202, 55, 0),
	(11, 203, 55, 0),
	(12, 204, 55, 0),
	(13, 205, 55, 0),
	(14, 206, 55, 0),
	(15, 207, 55, 0),
	(16, 208, 55, 0),
	(17, 209, 55, 0),
	(18, 210, 55, 0),
	(19, 211, 55, 0),
	(20, 212, 55, 0),
	(21, 213, 55, 0),
	(22, 214, 55, 0),
	(23, 215, 55, 0),
	(24, 216, 55, 0),
	(25, 217, 55, 0),
	(26, 218, 55, 0),
	(27, 219, 55, 0),
	(28, 220, 55, 0),
	(29, 221, 55, 0),
	(30, 222, 55, 0),
	(31, 223, 55, 0),
	(32, 224, 55, 0),
	(33, 225, 55, 0),
	(34, 226, 55, 0),
	(35, 227, 55, 0),
	(36, 228, 55, 0),
	(37, 229, 55, 0),
	(38, 230, 55, 0),
	(39, 231, 55, 0),
	(40, 232, 55, 0),
	(41, 233, 55, 0),
	(42, 234, 55, 0),
	(43, 235, 55, 0),
	(44, 236, 55, 0),
	(45, 237, 55, 0),
	(46, 238, 55, 0),
	(47, 239, 55, 0),
	(48, 240, 55, 0),
	(49, 241, 55, 0),
	(50, 242, 55, 0),
	(51, 243, 55, 0),
	(52, 244, 55, 0),
	(53, 245, 55, 0),
	(54, 246, 55, 0),
	(55, 247, 55, 0),
	(56, 248, 55, 0),
	(57, 249, 55, 0),
	(58, 250, 55, 0),
	(59, 251, 55, 0),
	(60, 252, 55, 0),
	(61, 253, 55, 0),
	(62, 254, 55, 0),
	(63, 255, 55, 0),
	(64, 256, 55, 0),
	(65, 257, 55, 0),
	(66, 258, 55, 0),
	(67, 259, 55, 0),
	(68, 260, 55, 0),
	(69, 261, 55, 0),
	(70, 262, 55, 0),
	(71, 263, 55, 0),
	(72, 264, 55, 0),
	(73, 265, 55, 0),
	(74, 266, 55, 0),
	(75, 267, 55, 0),
	(76, 268, 55, 0),
	(77, 269, 55, 0),
	(78, 270, 55, 0),
	(79, 271, 55, 0),
	(80, 272, 55, 0),
	(81, 273, 55, 0),
	(82, 274, 55, 0),
	(83, 275, 55, 0),
	(84, 276, 55, 0),
	(85, 277, 55, 0),
	(86, 278, 55, 0),
	(87, 279, 55, 0),
	(88, 280, 55, 0),
	(89, 281, 55, 0),
	(90, 282, 55, 0),
	(91, 283, 55, 0),
	(92, 284, 55, 0),
	(93, 285, 55, 0),
	(94, 286, 55, 0),
	(95, 287, 55, 0),
	(96, 288, 55, 0),
	(97, 193, 56, 316),
	(98, 194, 56, 972),
	(99, 195, 56, 1),
	(100, 196, 56, 0),
	(101, 197, 56, 0),
	(102, 198, 56, 0),
	(103, 199, 56, 0),
	(104, 200, 56, 0),
	(105, 201, 56, 0),
	(106, 202, 56, 0),
	(107, 203, 56, 0),
	(108, 204, 56, 0),
	(109, 205, 56, 0),
	(110, 206, 56, 0),
	(111, 207, 56, 0),
	(112, 208, 56, 0),
	(113, 209, 56, 0),
	(114, 210, 56, 0),
	(115, 211, 56, 0),
	(116, 212, 56, 0),
	(117, 213, 56, 0),
	(118, 214, 56, 0),
	(119, 215, 56, 0),
	(120, 216, 56, 0),
	(121, 217, 56, 0),
	(122, 218, 56, 0),
	(123, 219, 56, 0),
	(124, 220, 56, 0),
	(125, 221, 56, 0),
	(126, 222, 56, 0),
	(127, 223, 56, 0),
	(128, 224, 56, 0),
	(129, 225, 56, 0),
	(130, 226, 56, 0),
	(131, 227, 56, 0),
	(132, 228, 56, 0),
	(133, 229, 56, 0),
	(134, 230, 56, 0),
	(135, 231, 56, 0),
	(136, 232, 56, 0),
	(137, 233, 56, 0),
	(138, 234, 56, 0),
	(139, 235, 56, 0),
	(140, 236, 56, 0),
	(141, 237, 56, 0),
	(142, 238, 56, 0),
	(143, 239, 56, 0),
	(144, 240, 56, 0),
	(145, 241, 56, 0),
	(146, 242, 56, 0),
	(147, 243, 56, 0),
	(148, 244, 56, 0),
	(149, 245, 56, 0),
	(150, 246, 56, 0),
	(151, 247, 56, 0),
	(152, 248, 56, 0),
	(153, 249, 56, 0),
	(154, 250, 56, 0),
	(155, 251, 56, 0),
	(156, 252, 56, 0),
	(157, 253, 56, 0),
	(158, 254, 56, 0),
	(159, 255, 56, 0),
	(160, 256, 56, 0),
	(161, 257, 56, 0),
	(162, 258, 56, 0),
	(163, 259, 56, 0),
	(164, 260, 56, 0),
	(165, 261, 56, 0),
	(166, 262, 56, 0),
	(167, 263, 56, 0),
	(168, 264, 56, 0),
	(169, 265, 56, 0),
	(170, 266, 56, 0),
	(171, 267, 56, 0),
	(172, 268, 56, 0),
	(173, 269, 56, 0),
	(174, 270, 56, 0),
	(175, 271, 56, 0),
	(176, 272, 56, 0),
	(177, 273, 56, 0),
	(178, 274, 56, 0),
	(179, 275, 56, 0),
	(180, 276, 56, 0),
	(181, 277, 56, 0),
	(182, 278, 56, 0),
	(183, 279, 56, 0),
	(184, 280, 56, 0),
	(185, 281, 56, 0),
	(186, 282, 56, 0),
	(187, 283, 56, 0),
	(188, 284, 56, 0),
	(189, 285, 56, 0),
	(190, 286, 56, 0),
	(191, 287, 56, 0),
	(192, 288, 56, 0),
	(193, 193, 57, 158),
	(194, 194, 57, 0),
	(195, 195, 57, 1),
	(196, 196, 57, 0),
	(197, 197, 57, 0),
	(198, 198, 57, 0),
	(199, 199, 57, 0),
	(200, 200, 57, 0),
	(201, 201, 57, 0),
	(202, 202, 57, 0),
	(203, 203, 57, 0),
	(204, 204, 57, 0),
	(205, 205, 57, 0),
	(206, 206, 57, 0),
	(207, 207, 57, 0),
	(208, 208, 57, 0),
	(209, 209, 57, 0),
	(210, 210, 57, 0),
	(211, 211, 57, 0),
	(212, 212, 57, 0),
	(213, 213, 57, 0),
	(214, 214, 57, 0),
	(215, 215, 57, 0),
	(216, 216, 57, 0),
	(217, 217, 57, 0),
	(218, 218, 57, 0),
	(219, 219, 57, 0),
	(220, 220, 57, 0),
	(221, 221, 57, 0),
	(222, 222, 57, 0),
	(223, 223, 57, 0),
	(224, 224, 57, 0),
	(225, 225, 57, 0),
	(226, 226, 57, 0),
	(227, 227, 57, 0),
	(228, 228, 57, 0),
	(229, 229, 57, 0),
	(230, 230, 57, 0),
	(231, 231, 57, 0),
	(232, 232, 57, 0),
	(233, 233, 57, 0),
	(234, 234, 57, 0),
	(235, 235, 57, 0),
	(236, 236, 57, 0),
	(237, 237, 57, 0),
	(238, 238, 57, 0),
	(239, 239, 57, 0),
	(240, 240, 57, 0),
	(241, 241, 57, 0),
	(242, 242, 57, 0),
	(243, 243, 57, 0),
	(244, 244, 57, 0),
	(245, 245, 57, 0),
	(246, 246, 57, 0),
	(247, 247, 57, 0),
	(248, 248, 57, 0),
	(249, 249, 57, 0),
	(250, 250, 57, 0),
	(251, 251, 57, 0),
	(252, 252, 57, 0),
	(253, 253, 57, 0),
	(254, 254, 57, 0),
	(255, 255, 57, 0),
	(256, 256, 57, 0),
	(257, 257, 57, 0),
	(258, 258, 57, 0),
	(259, 259, 57, 0),
	(260, 260, 57, 0),
	(261, 261, 57, 0),
	(262, 262, 57, 0),
	(263, 263, 57, 0),
	(264, 264, 57, 0),
	(265, 265, 57, 0),
	(266, 266, 57, 0),
	(267, 267, 57, 0),
	(268, 268, 57, 0),
	(269, 269, 57, 0),
	(270, 270, 57, 0),
	(271, 271, 57, 0),
	(272, 272, 57, 0),
	(273, 273, 57, 0),
	(274, 274, 57, 0),
	(275, 275, 57, 0),
	(276, 276, 57, 0),
	(277, 277, 57, 0),
	(278, 278, 57, 0),
	(279, 279, 57, 0),
	(280, 280, 57, 0),
	(281, 281, 57, 0),
	(282, 282, 57, 0),
	(283, 283, 57, 0),
	(284, 284, 57, 0),
	(285, 285, 57, 0),
	(286, 286, 57, 0),
	(287, 287, 57, 0),
	(288, 288, 57, 0),
	(289, 193, 58, 0),
	(290, 194, 58, 0),
	(291, 195, 58, 1),
	(292, 196, 58, 0),
	(293, 197, 58, 0),
	(294, 198, 58, 0),
	(295, 199, 58, 0),
	(296, 200, 58, 0),
	(297, 201, 58, 0),
	(298, 202, 58, 0),
	(299, 203, 58, 0),
	(300, 204, 58, 0),
	(301, 205, 58, 0),
	(302, 206, 58, 0),
	(303, 207, 58, 0),
	(304, 208, 58, 0),
	(305, 209, 58, 0),
	(306, 210, 58, 0),
	(307, 211, 58, 0),
	(308, 212, 58, 0),
	(309, 213, 58, 0),
	(310, 214, 58, 0),
	(311, 215, 58, 0),
	(312, 216, 58, 0),
	(313, 217, 58, 0),
	(314, 218, 58, 0),
	(315, 219, 58, 0),
	(316, 220, 58, 0),
	(317, 221, 58, 0),
	(318, 222, 58, 0),
	(319, 223, 58, 0),
	(320, 224, 58, 0),
	(321, 225, 58, 0),
	(322, 226, 58, 0),
	(323, 227, 58, 0),
	(324, 228, 58, 0),
	(325, 229, 58, 0),
	(326, 230, 58, 0),
	(327, 231, 58, 0),
	(328, 232, 58, 0),
	(329, 233, 58, 0),
	(330, 234, 58, 0),
	(331, 235, 58, 0),
	(332, 236, 58, 0),
	(333, 237, 58, 0),
	(334, 238, 58, 0),
	(335, 239, 58, 0),
	(336, 240, 58, 0),
	(337, 241, 58, 0),
	(338, 242, 58, 0),
	(339, 243, 58, 0),
	(340, 244, 58, 0),
	(341, 245, 58, 0),
	(342, 246, 58, 0),
	(343, 247, 58, 0),
	(344, 248, 58, 0),
	(345, 249, 58, 0),
	(346, 250, 58, 0),
	(347, 251, 58, 0),
	(348, 252, 58, 0),
	(349, 253, 58, 0),
	(350, 254, 58, 0),
	(351, 255, 58, 0),
	(352, 256, 58, 0),
	(353, 257, 58, 0),
	(354, 258, 58, 0),
	(355, 259, 58, 0),
	(356, 260, 58, 0),
	(357, 261, 58, 0),
	(358, 262, 58, 0),
	(359, 263, 58, 0),
	(360, 264, 58, 0),
	(361, 265, 58, 0),
	(362, 266, 58, 0),
	(363, 267, 58, 0),
	(364, 268, 58, 0),
	(365, 269, 58, 0),
	(366, 270, 58, 0),
	(367, 271, 58, 0),
	(368, 272, 58, 0),
	(369, 273, 58, 0),
	(370, 274, 58, 0),
	(371, 275, 58, 0),
	(372, 276, 58, 0),
	(373, 277, 58, 0),
	(374, 278, 58, 0),
	(375, 279, 58, 0),
	(376, 280, 58, 0),
	(377, 281, 58, 0),
	(378, 282, 58, 0),
	(379, 283, 58, 0),
	(380, 284, 58, 0),
	(381, 285, 58, 0),
	(382, 286, 58, 0),
	(383, 287, 58, 0),
	(384, 288, 58, 0),
	(385, 193, 59, 0),
	(386, 194, 59, 0),
	(387, 195, 59, 1),
	(388, 196, 59, 0),
	(389, 197, 59, 0),
	(390, 198, 59, 0),
	(391, 199, 59, 0),
	(392, 200, 59, 0),
	(393, 201, 59, 0),
	(394, 202, 59, 0),
	(395, 203, 59, 0),
	(396, 204, 59, 0),
	(397, 205, 59, 0),
	(398, 206, 59, 0),
	(399, 207, 59, 0),
	(400, 208, 59, 0),
	(401, 209, 59, 0),
	(402, 210, 59, 0),
	(403, 211, 59, 0),
	(404, 212, 59, 0),
	(405, 213, 59, 0),
	(406, 214, 59, 0),
	(407, 215, 59, 0),
	(408, 216, 59, 0),
	(409, 217, 59, 0),
	(410, 218, 59, 0),
	(411, 219, 59, 0),
	(412, 220, 59, 0),
	(413, 221, 59, 0),
	(414, 222, 59, 0),
	(415, 223, 59, 0),
	(416, 224, 59, 0),
	(417, 225, 59, 0),
	(418, 226, 59, 0),
	(419, 227, 59, 0),
	(420, 228, 59, 0),
	(421, 229, 59, 0),
	(422, 230, 59, 0),
	(423, 231, 59, 0),
	(424, 232, 59, 0),
	(425, 233, 59, 0),
	(426, 234, 59, 0),
	(427, 235, 59, 0),
	(428, 236, 59, 0),
	(429, 237, 59, 0),
	(430, 238, 59, 0),
	(431, 239, 59, 0),
	(432, 240, 59, 0),
	(433, 241, 59, 0),
	(434, 242, 59, 0),
	(435, 243, 59, 0),
	(436, 244, 59, 0),
	(437, 245, 59, 0),
	(438, 246, 59, 0),
	(439, 247, 59, 0),
	(440, 248, 59, 0),
	(441, 249, 59, 0),
	(442, 250, 59, 0),
	(443, 251, 59, 0),
	(444, 252, 59, 0),
	(445, 253, 59, 0),
	(446, 254, 59, 0),
	(447, 255, 59, 0),
	(448, 256, 59, 0),
	(449, 257, 59, 0),
	(450, 258, 59, 0),
	(451, 259, 59, 0),
	(452, 260, 59, 0),
	(453, 261, 59, 0),
	(454, 262, 59, 0),
	(455, 263, 59, 0),
	(456, 264, 59, 0),
	(457, 265, 59, 0),
	(458, 266, 59, 0),
	(459, 267, 59, 0),
	(460, 268, 59, 0),
	(461, 269, 59, 0),
	(462, 270, 59, 0),
	(463, 271, 59, 0),
	(464, 272, 59, 0),
	(465, 273, 59, 0),
	(466, 274, 59, 0),
	(467, 275, 59, 0),
	(468, 276, 59, 0),
	(469, 277, 59, 0),
	(470, 278, 59, 0),
	(471, 279, 59, 0),
	(472, 280, 59, 0),
	(473, 281, 59, 0),
	(474, 282, 59, 0),
	(475, 283, 59, 0),
	(476, 284, 59, 0),
	(477, 285, 59, 0),
	(478, 286, 59, 0),
	(479, 287, 59, 0),
	(480, 288, 59, 0),
	(481, 193, 60, 0),
	(482, 194, 60, 0),
	(483, 195, 60, 1),
	(484, 196, 60, 0),
	(485, 197, 60, 0),
	(486, 198, 60, 0),
	(487, 199, 60, 0),
	(488, 200, 60, 0),
	(489, 201, 60, 0),
	(490, 202, 60, 0),
	(491, 203, 60, 0),
	(492, 204, 60, 0),
	(493, 205, 60, 0),
	(494, 206, 60, 0),
	(495, 207, 60, 0),
	(496, 208, 60, 0),
	(497, 209, 60, 0),
	(498, 210, 60, 0),
	(499, 211, 60, 0),
	(500, 212, 60, 0),
	(501, 213, 60, 0),
	(502, 214, 60, 0),
	(503, 215, 60, 0),
	(504, 216, 60, 0),
	(505, 217, 60, 0),
	(506, 218, 60, 0),
	(507, 219, 60, 0),
	(508, 220, 60, 0),
	(509, 221, 60, 0),
	(510, 222, 60, 0),
	(511, 223, 60, 0),
	(512, 224, 60, 0),
	(513, 225, 60, 0),
	(514, 226, 60, 0),
	(515, 227, 60, 0),
	(516, 228, 60, 0),
	(517, 229, 60, 0),
	(518, 230, 60, 0),
	(519, 231, 60, 0),
	(520, 232, 60, 0),
	(521, 233, 60, 0),
	(522, 234, 60, 0),
	(523, 235, 60, 0),
	(524, 236, 60, 0),
	(525, 237, 60, 0),
	(526, 238, 60, 0),
	(527, 239, 60, 0),
	(528, 240, 60, 0),
	(529, 241, 60, 0),
	(530, 242, 60, 0),
	(531, 243, 60, 0),
	(532, 244, 60, 0),
	(533, 245, 60, 0),
	(534, 246, 60, 0),
	(535, 247, 60, 0),
	(536, 248, 60, 0),
	(537, 249, 60, 0),
	(538, 250, 60, 0),
	(539, 251, 60, 0),
	(540, 252, 60, 0),
	(541, 253, 60, 0),
	(542, 254, 60, 0),
	(543, 255, 60, 0),
	(544, 256, 60, 0),
	(545, 257, 60, 0),
	(546, 258, 60, 0),
	(547, 259, 60, 0),
	(548, 260, 60, 0),
	(549, 261, 60, 0),
	(550, 262, 60, 0),
	(551, 263, 60, 0),
	(552, 264, 60, 0),
	(553, 265, 60, 0),
	(554, 266, 60, 0),
	(555, 267, 60, 0),
	(556, 268, 60, 0),
	(557, 269, 60, 0),
	(558, 270, 60, 0),
	(559, 271, 60, 0),
	(560, 272, 60, 0),
	(561, 273, 60, 0),
	(562, 274, 60, 0),
	(563, 275, 60, 0),
	(564, 276, 60, 0),
	(565, 277, 60, 0),
	(566, 278, 60, 0),
	(567, 279, 60, 0),
	(568, 280, 60, 0),
	(569, 281, 60, 0),
	(570, 282, 60, 0),
	(571, 283, 60, 0),
	(572, 284, 60, 0),
	(573, 285, 60, 0),
	(574, 286, 60, 0),
	(575, 287, 60, 0),
	(576, 288, 60, 0),
	(577, 193, 61, 0),
	(578, 194, 61, 0),
	(579, 195, 61, 1),
	(580, 196, 61, 0),
	(581, 197, 61, 0),
	(582, 198, 61, 0),
	(583, 199, 61, 0),
	(584, 200, 61, 0),
	(585, 201, 61, 0),
	(586, 202, 61, 0),
	(587, 203, 61, 0),
	(588, 204, 61, 0),
	(589, 205, 61, 0),
	(590, 206, 61, 0),
	(591, 207, 61, 0),
	(592, 208, 61, 0),
	(593, 209, 61, 0),
	(594, 210, 61, 0),
	(595, 211, 61, 0),
	(596, 212, 61, 0),
	(597, 213, 61, 0),
	(598, 214, 61, 0),
	(599, 215, 61, 0),
	(600, 216, 61, 0),
	(601, 217, 61, 0),
	(602, 218, 61, 0),
	(603, 219, 61, 0),
	(604, 220, 61, 0),
	(605, 221, 61, 0),
	(606, 222, 61, 0),
	(607, 223, 61, 0),
	(608, 224, 61, 0),
	(609, 225, 61, 0),
	(610, 226, 61, 0),
	(611, 227, 61, 0),
	(612, 228, 61, 0),
	(613, 229, 61, 0),
	(614, 230, 61, 0),
	(615, 231, 61, 0),
	(616, 232, 61, 0),
	(617, 233, 61, 0),
	(618, 234, 61, 0),
	(619, 235, 61, 0),
	(620, 236, 61, 0),
	(621, 237, 61, 0),
	(622, 238, 61, 0),
	(623, 239, 61, 0),
	(624, 240, 61, 0),
	(625, 241, 61, 0),
	(626, 242, 61, 0),
	(627, 243, 61, 0),
	(628, 244, 61, 0),
	(629, 245, 61, 0),
	(630, 246, 61, 0),
	(631, 247, 61, 0),
	(632, 248, 61, 0),
	(633, 249, 61, 0),
	(634, 250, 61, 0),
	(635, 251, 61, 0),
	(636, 252, 61, 0),
	(637, 253, 61, 0),
	(638, 254, 61, 0),
	(639, 255, 61, 0),
	(640, 256, 61, 0),
	(641, 257, 61, 0),
	(642, 258, 61, 0),
	(643, 259, 61, 0),
	(644, 260, 61, 0),
	(645, 261, 61, 0),
	(646, 262, 61, 0),
	(647, 263, 61, 0),
	(648, 264, 61, 0),
	(649, 265, 61, 0),
	(650, 266, 61, 0),
	(651, 267, 61, 0),
	(652, 268, 61, 0),
	(653, 269, 61, 0),
	(654, 270, 61, 0),
	(655, 271, 61, 0),
	(656, 272, 61, 0),
	(657, 273, 61, 0),
	(658, 274, 61, 0),
	(659, 275, 61, 0),
	(660, 276, 61, 0),
	(661, 277, 61, 0),
	(662, 278, 61, 0),
	(663, 279, 61, 0),
	(664, 280, 61, 0),
	(665, 281, 61, 0),
	(666, 282, 61, 0),
	(667, 283, 61, 0),
	(668, 284, 61, 0),
	(669, 285, 61, 0),
	(670, 286, 61, 0),
	(671, 287, 61, 0),
	(672, 288, 61, 0),
	(673, 193, 62, 0),
	(674, 194, 62, 0),
	(675, 195, 62, 1),
	(676, 196, 62, 0),
	(677, 197, 62, 0),
	(678, 198, 62, 0),
	(679, 199, 62, 0),
	(680, 200, 62, 0),
	(681, 201, 62, 0),
	(682, 202, 62, 0),
	(683, 203, 62, 0),
	(684, 204, 62, 0),
	(685, 205, 62, 0),
	(686, 206, 62, 0),
	(687, 207, 62, 0),
	(688, 208, 62, 0),
	(689, 209, 62, 0),
	(690, 210, 62, 0),
	(691, 211, 62, 0),
	(692, 212, 62, 0),
	(693, 213, 62, 0),
	(694, 214, 62, 0),
	(695, 215, 62, 0),
	(696, 216, 62, 0),
	(697, 217, 62, 0),
	(698, 218, 62, 0),
	(699, 219, 62, 0),
	(700, 220, 62, 0),
	(701, 221, 62, 0),
	(702, 222, 62, 0),
	(703, 223, 62, 0),
	(704, 224, 62, 0),
	(705, 225, 62, 0),
	(706, 226, 62, 0),
	(707, 227, 62, 0),
	(708, 228, 62, 0),
	(709, 229, 62, 0),
	(710, 230, 62, 0),
	(711, 231, 62, 0),
	(712, 232, 62, 0),
	(713, 233, 62, 0),
	(714, 234, 62, 0),
	(715, 235, 62, 0),
	(716, 236, 62, 0),
	(717, 237, 62, 0),
	(718, 238, 62, 0),
	(719, 239, 62, 0),
	(720, 240, 62, 0),
	(721, 241, 62, 0),
	(722, 242, 62, 0),
	(723, 243, 62, 0),
	(724, 244, 62, 0),
	(725, 245, 62, 0),
	(726, 246, 62, 0),
	(727, 247, 62, 0),
	(728, 248, 62, 0),
	(729, 249, 62, 0),
	(730, 250, 62, 0),
	(731, 251, 62, 0),
	(732, 252, 62, 0),
	(733, 253, 62, 0),
	(734, 254, 62, 0),
	(735, 255, 62, 0),
	(736, 256, 62, 0),
	(737, 257, 62, 0),
	(738, 258, 62, 0),
	(739, 259, 62, 0),
	(740, 260, 62, 0),
	(741, 261, 62, 0),
	(742, 262, 62, 0),
	(743, 263, 62, 0),
	(744, 264, 62, 0),
	(745, 265, 62, 0),
	(746, 266, 62, 0),
	(747, 267, 62, 0),
	(748, 268, 62, 0),
	(749, 269, 62, 0),
	(750, 270, 62, 0),
	(751, 271, 62, 0),
	(752, 272, 62, 0),
	(753, 273, 62, 0),
	(754, 274, 62, 0),
	(755, 275, 62, 0),
	(756, 276, 62, 0),
	(757, 277, 62, 0),
	(758, 278, 62, 0),
	(759, 279, 62, 0),
	(760, 280, 62, 0),
	(761, 281, 62, 0),
	(762, 282, 62, 0),
	(763, 283, 62, 0),
	(764, 284, 62, 0),
	(765, 285, 62, 0),
	(766, 286, 62, 0),
	(767, 287, 62, 0),
	(768, 288, 62, 0),
	(769, 289, 63, 1),
	(770, 290, 63, 0),
	(771, 291, 63, 0),
	(772, 292, 63, 0),
	(773, 293, 63, 0),
	(774, 294, 63, 0),
	(775, 295, 63, 0),
	(776, 296, 63, 0),
	(777, 297, 63, 0),
	(778, 298, 63, 0),
	(779, 299, 63, 0),
	(780, 300, 63, 0),
	(781, 301, 63, 0),
	(782, 302, 63, 0),
	(783, 303, 63, 0),
	(784, 304, 63, 0),
	(785, 305, 63, 0),
	(786, 306, 63, 0),
	(787, 307, 63, 0),
	(788, 308, 63, 0),
	(789, 309, 63, 0),
	(790, 310, 63, 0),
	(791, 311, 63, 0),
	(792, 312, 63, 0),
	(793, 289, 64, 2),
	(794, 290, 64, 0),
	(795, 291, 64, 0),
	(796, 292, 64, 0),
	(797, 293, 64, 0),
	(798, 294, 64, 0),
	(799, 295, 64, 0),
	(800, 296, 64, 0),
	(801, 297, 64, 0),
	(802, 298, 64, 0),
	(803, 299, 64, 0),
	(804, 300, 64, 0),
	(805, 301, 64, 0),
	(806, 302, 64, 0),
	(807, 303, 64, 0),
	(808, 304, 64, 0),
	(809, 305, 64, 0),
	(810, 306, 64, 0),
	(811, 307, 64, 0),
	(812, 308, 64, 0),
	(813, 309, 64, 0),
	(814, 310, 64, 0),
	(815, 311, 64, 0),
	(816, 312, 64, 0),
	(817, 289, 65, 3),
	(818, 290, 65, 0),
	(819, 291, 65, 0),
	(820, 292, 65, 0),
	(821, 293, 65, 0),
	(822, 294, 65, 0),
	(823, 295, 65, 0),
	(824, 296, 65, 0),
	(825, 297, 65, 0),
	(826, 298, 65, 0),
	(827, 299, 65, 0),
	(828, 300, 65, 0),
	(829, 301, 65, 0),
	(830, 302, 65, 0),
	(831, 303, 65, 0),
	(832, 304, 65, 0),
	(833, 305, 65, 0),
	(834, 306, 65, 0),
	(835, 307, 65, 0),
	(836, 308, 65, 0),
	(837, 309, 65, 0),
	(838, 310, 65, 0),
	(839, 311, 65, 0),
	(840, 312, 65, 0),
	(841, 289, 66, 4),
	(842, 290, 66, 0),
	(843, 291, 66, 0),
	(844, 292, 66, 0),
	(845, 293, 66, 0),
	(846, 294, 66, 0),
	(847, 295, 66, 0),
	(848, 296, 66, 0),
	(849, 297, 66, 0),
	(850, 298, 66, 0),
	(851, 299, 66, 0),
	(852, 300, 66, 0),
	(853, 301, 66, 0),
	(854, 302, 66, 0),
	(855, 303, 66, 0),
	(856, 304, 66, 0),
	(857, 305, 66, 0),
	(858, 306, 66, 0),
	(859, 307, 66, 0),
	(860, 308, 66, 0),
	(861, 309, 66, 0),
	(862, 310, 66, 0),
	(863, 311, 66, 0),
	(864, 312, 66, 0),
	(865, 289, 67, 5),
	(866, 290, 67, 0),
	(867, 291, 67, 0),
	(868, 292, 67, 0),
	(869, 293, 67, 0),
	(870, 294, 67, 0),
	(871, 295, 67, 0),
	(872, 296, 67, 0),
	(873, 297, 67, 0),
	(874, 298, 67, 0),
	(875, 299, 67, 0),
	(876, 300, 67, 0),
	(877, 301, 67, 0),
	(878, 302, 67, 0),
	(879, 303, 67, 0),
	(880, 304, 67, 0),
	(881, 305, 67, 0),
	(882, 306, 67, 0),
	(883, 307, 67, 0),
	(884, 308, 67, 0),
	(885, 309, 67, 0),
	(886, 310, 67, 0),
	(887, 311, 67, 0),
	(888, 312, 67, 0),
	(889, 289, 68, 6),
	(890, 290, 68, 0),
	(891, 291, 68, 0),
	(892, 292, 68, 0),
	(893, 293, 68, 0),
	(894, 294, 68, 0),
	(895, 295, 68, 0),
	(896, 296, 68, 0),
	(897, 297, 68, 0),
	(898, 298, 68, 0),
	(899, 299, 68, 0),
	(900, 300, 68, 0),
	(901, 301, 68, 0),
	(902, 302, 68, 0),
	(903, 303, 68, 0),
	(904, 304, 68, 0),
	(905, 305, 68, 0),
	(906, 306, 68, 0),
	(907, 307, 68, 0),
	(908, 308, 68, 0),
	(909, 309, 68, 0),
	(910, 310, 68, 0),
	(911, 311, 68, 0),
	(912, 312, 68, 0),
	(913, 289, 69, 7),
	(914, 290, 69, 0),
	(915, 291, 69, 0),
	(916, 292, 69, 0),
	(917, 293, 69, 0),
	(918, 294, 69, 0),
	(919, 295, 69, 0),
	(920, 296, 69, 0),
	(921, 297, 69, 0),
	(922, 298, 69, 0),
	(923, 299, 69, 0),
	(924, 300, 69, 0),
	(925, 301, 69, 0),
	(926, 302, 69, 0),
	(927, 303, 69, 0),
	(928, 304, 69, 0),
	(929, 305, 69, 0),
	(930, 306, 69, 0),
	(931, 307, 69, 0),
	(932, 308, 69, 0),
	(933, 309, 69, 0),
	(934, 310, 69, 0),
	(935, 311, 69, 0),
	(936, 312, 69, 0);
/*!40000 ALTER TABLE `data` ENABLE KEYS */;


-- Dumping structure for table minerals.dates
CREATE TABLE IF NOT EXISTS `dates` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `type_id` int(10) NOT NULL,
  `dt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- Dumping data for table minerals.dates: ~2 rows (approximately)
/*!40000 ALTER TABLE `dates` DISABLE KEYS */;
INSERT INTO `dates` (`id`, `type_id`, `dt`) VALUES
	(1, 1, '2013-11-12 07:00:07'),
	(2, 2, '2013-11-12 07:00:08');
/*!40000 ALTER TABLE `dates` ENABLE KEYS */;


-- Dumping structure for table minerals.fields
CREATE TABLE IF NOT EXISTS `fields` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `price` float NOT NULL,
  `type_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_ice_fields_types` (`type_id`),
  CONSTRAINT `FK_ice_fields_types` FOREIGN KEY (`type_id`) REFERENCES `types` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=70 DEFAULT CHARSET=utf8;

-- Dumping data for table minerals.fields: ~15 rows (approximately)
/*!40000 ALTER TABLE `fields` DISABLE KEYS */;
INSERT INTO `fields` (`id`, `name`, `price`, `type_id`) VALUES
	(55, 'Tritanium', 4.76, 1),
	(56, 'Megacyte', 1622.74, 1),
	(57, 'Zydrine', 611.78, 1),
	(58, 'Pyerite', 11.46, 1),
	(59, 'Nocxium', 667.36, 1),
	(60, 'Isogen', 125.18, 1),
	(61, 'Mexallon', 42.98, 1),
	(62, 'Morphite', 7076.51, 1),
	(63, 'Heavy Water', 148.21, 2),
	(64, 'Liquid Ozone', 578.15, 2),
	(65, 'Helium Isotopes', 558.09, 2),
	(66, 'Strontium Clathrates', 270.35, 2),
	(67, 'Hydrogen Isotopes', 508.1, 2),
	(68, 'Oxygen Isotopes', 572.09, 2),
	(69, 'Nitrogen Isotopes', 775.1, 2);
/*!40000 ALTER TABLE `fields` ENABLE KEYS */;


-- Dumping structure for table minerals.history
CREATE TABLE IF NOT EXISTS `history` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `user` varchar(50) NOT NULL,
  `param` varchar(255) NOT NULL,
  `value` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table minerals.history: ~0 rows (approximately)
/*!40000 ALTER TABLE `history` DISABLE KEYS */;
/*!40000 ALTER TABLE `history` ENABLE KEYS */;


-- Dumping structure for table minerals.items
CREATE TABLE IF NOT EXISTS `items` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(500) NOT NULL,
  `batch` int(10) DEFAULT '0',
  `weight` float DEFAULT '0',
  `type_id` int(10) NOT NULL DEFAULT '0',
  `box` enum('Y','N') NOT NULL DEFAULT 'N',
  PRIMARY KEY (`id`),
  KEY `FK__types` (`type_id`),
  CONSTRAINT `FK__types` FOREIGN KEY (`type_id`) REFERENCES `types` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=313 DEFAULT CHARSET=utf8;

-- Dumping data for table minerals.items: ~120 rows (approximately)
/*!40000 ALTER TABLE `items` DISABLE KEYS */;
INSERT INTO `items` (`id`, `name`, `batch`, `weight`, `type_id`, `box`) VALUES
	(193, 'Arkonor', 200, 16, 1, 'N'),
	(194, 'Crimson Arkonor', 5, 0.1, 1, 'N'),
	(195, 'Prime Arkonor', 1, 0.1, 1, 'N'),
	(196, 'Compressed Arkonor', 1, 0, 1, 'Y'),
	(197, 'Compressed Crimson Arkonor', 1, 0, 1, 'Y'),
	(198, 'Compressed Prime Arkonor', 1, 0, 1, 'Y'),
	(199, 'Bistot', NULL, 0, 1, 'N'),
	(200, 'Triclinic Bistot', NULL, 0, 1, 'N'),
	(201, 'Monoclinic Bistot', NULL, 0, 1, 'N'),
	(202, 'Compressed Bistot', 1, 0, 1, 'Y'),
	(203, 'Compressed Monoclinic Bistot', 1, 0, 1, 'Y'),
	(204, 'Compressed Triclinic Bistot', 1, 0, 1, 'Y'),
	(205, 'Crokite', NULL, 0, 1, 'N'),
	(206, 'Sharp Crokite', NULL, 0, 1, 'N'),
	(207, 'Crystalline Crokite', NULL, 0, 1, 'N'),
	(208, 'Compressed Crokite', 1, 0, 1, 'Y'),
	(209, 'Compressed Crystalline Crokite', 1, 0, 1, 'Y'),
	(210, 'Compressed Sharp Crokite', 1, 0, 1, 'Y'),
	(211, 'Dark Ochre', NULL, 0, 1, 'N'),
	(212, 'Onyx Ochre', NULL, 0, 1, 'N'),
	(213, 'Obsidian Ochre', NULL, 0, 1, 'N'),
	(214, 'Compressed Dark Ochre', 1, 0, 1, 'Y'),
	(215, 'Compressed Obsidian Ochre', 1, 0, 1, 'Y'),
	(216, 'Compressed Onyx Ochre', 1, 0, 1, 'Y'),
	(217, 'Hedbergite', NULL, 0, 1, 'N'),
	(218, 'Vitric Hedbergite', NULL, 0, 1, 'N'),
	(219, 'Glazed Hedbergite', NULL, 0, 1, 'N'),
	(220, 'Compressed Glazed Hedbergite', 1, 0, 1, 'Y'),
	(221, 'Compressed Hedbergite', 1, 0, 1, 'Y'),
	(222, 'Compressed Vitric Hedbergite', 1, 0, 1, 'Y'),
	(223, 'Hemorphite', NULL, 0, 1, 'N'),
	(224, 'Vivid Hemorphite', NULL, 0, 1, 'N'),
	(225, 'Radiant Hemorphite', NULL, 0, 1, 'N'),
	(226, 'Compressed Hemorphite', 1, 0, 1, 'Y'),
	(227, 'Compressed Radiant Hemorphite', 1, 0, 1, 'Y'),
	(228, 'Compressed Vivid Hemorphite', 1, 0, 1, 'Y'),
	(229, 'Jaspet', NULL, 0, 1, 'N'),
	(230, 'Pure Jaspet', NULL, 0, 1, 'N'),
	(231, 'Pristine Jaspet', NULL, 0, 1, 'N'),
	(232, 'Compressed Jaspet', 1, 0, 1, 'Y'),
	(233, 'Compressed Pristine Jaspet', 1, 0, 1, 'Y'),
	(234, 'Compressed Pure Jaspet', 1, 0, 1, 'Y'),
	(235, 'Kernite', NULL, 0, 1, 'N'),
	(236, 'Luminous Kernite', NULL, 0, 1, 'N'),
	(237, 'Fiery Kernite', NULL, 0, 1, 'N'),
	(238, 'Compressed Fiery Kernite', 1, 0, 1, 'Y'),
	(239, 'Compressed Kernite', 1, 0, 1, 'Y'),
	(240, 'Compressed Luminous Kernite', 1, 0, 1, 'Y'),
	(241, 'Plagioclase', NULL, 0, 1, 'N'),
	(242, 'Azure Plagioclase', NULL, 0, 1, 'N'),
	(243, 'Rich Plagioclase', NULL, 0, 1, 'N'),
	(244, 'Compressed Azure Plagioclase', 1, 0, 1, 'Y'),
	(245, 'Compressed Plagioclase', 1, 0, 1, 'Y'),
	(246, 'Compressed Rich Plagioclase', 1, 0, 1, 'Y'),
	(247, 'Pyroxeres', NULL, 0, 1, 'N'),
	(248, 'Solid Pyroxeres', NULL, 0, 1, 'N'),
	(249, 'Viscous Pyroxeres', NULL, 0, 1, 'N'),
	(250, 'Compressed Pyroxeres', 1, 0, 1, 'Y'),
	(251, 'Compressed Solid Pyroxeres', 1, 0, 1, 'Y'),
	(252, 'Compressed Viscous Pyroxeres', 1, 0, 1, 'Y'),
	(253, 'Scordite', NULL, 0, 1, 'N'),
	(254, 'Condensed Scordite', NULL, 0, 1, 'N'),
	(255, 'Massive Scordite', NULL, 0, 1, 'N'),
	(256, 'Compressed Condensed Scordite', 1, 0, 1, 'Y'),
	(257, 'Compressed Massive Scordite', 1, 0, 1, 'Y'),
	(258, 'Compressed Scordite', 1, 0, 1, 'Y'),
	(259, 'Spodumain', NULL, 0, 1, 'N'),
	(260, 'Bright Spodumain', NULL, 0, 1, 'N'),
	(261, 'Gleaming Spodumain', NULL, 0, 1, 'N'),
	(262, 'Compressed Bright Spodumain', 1, 0, 1, 'Y'),
	(263, 'Compressed Gleaming Spodumain', 1, 0, 1, 'Y'),
	(264, 'Compressed Spodumain', 1, 0, 1, 'Y'),
	(265, 'Veldspar', NULL, 0, 1, 'N'),
	(266, 'Concentrated Veldspar', NULL, 0, 1, 'N'),
	(267, 'Dense Veldspar', NULL, 0, 1, 'N'),
	(268, 'Compressed Concentrated Veldspar', 1, 0, 1, 'Y'),
	(269, 'Compressed Dense Veldspar', 1, 0, 1, 'Y'),
	(270, 'Compressed Veldspar', 1, 0, 1, 'Y'),
	(271, 'Gneiss', NULL, 0, 1, 'N'),
	(272, 'Iridescent Gneiss', NULL, 0, 1, 'N'),
	(273, 'Prismatic Gneiss', NULL, 0, 1, 'N'),
	(274, 'Compressed Gneiss', 1, 0, 1, 'Y'),
	(275, 'Compressed Iridescent Gneiss', 1, 0, 1, 'Y'),
	(276, 'Compressed Prismatic Gneiss', 1, 0, 1, 'Y'),
	(277, 'Mercoxit', NULL, 0, 1, 'N'),
	(278, 'Magma Mercoxit', NULL, 0, 1, 'N'),
	(279, 'Vitreous Mercoxit', NULL, 0, 1, 'N'),
	(280, 'Compressed Magma Mercoxit', 1, 0, 1, 'Y'),
	(281, 'Compressed Mercoxit', 1, 0, 1, 'Y'),
	(282, 'Compressed Vitreous Mercoxit', 1, 0, 1, 'Y'),
	(283, 'Omber', NULL, 0, 1, 'N'),
	(284, 'Silvery Omber', NULL, 0, 1, 'N'),
	(285, 'Golden Omber', NULL, 0, 1, 'N'),
	(286, 'Compressed Golden Omber', 1, 0, 1, 'Y'),
	(287, 'Compressed Omber', 1, 0, 1, 'Y'),
	(288, 'Compressed Silvery Omber', 1, 0, 1, 'Y'),
	(289, 'Clear Icicle', 10, 1, 2, 'N'),
	(290, 'Glacial Mass', NULL, 0, 2, 'N'),
	(291, 'Blue Ice', NULL, 0, 2, 'N'),
	(292, 'White Glaze', NULL, 0, 2, 'N'),
	(293, 'Glare Crust', NULL, 0, 2, 'N'),
	(294, 'Dark Glitter', NULL, 0, 2, 'N'),
	(295, 'Gelidus', NULL, 0, 2, 'N'),
	(296, 'Krystallos', NULL, 0, 2, 'N'),
	(297, 'Thick Blue Ice', NULL, 0, 2, 'N'),
	(298, 'Pristine White Glaze', NULL, 0, 2, 'N'),
	(299, 'Smooth Glacial Mass', NULL, 0, 2, 'N'),
	(300, 'Enriched Clear Icicle', NULL, 0, 2, 'N'),
	(301, 'Compressed Blue Ice', 1, 0, 2, 'Y'),
	(302, 'Compressed Clear Icicle', 1, 0, 2, 'Y'),
	(303, 'Compressed Dark Glitter', 1, 0, 2, 'Y'),
	(304, 'Compressed Enriched Clear Icicle', 1, 0, 2, 'Y'),
	(305, 'Compressed Gelidus', 1, 0, 2, 'Y'),
	(306, 'Compressed Glacial Mass', 1, 0, 2, 'Y'),
	(307, 'Compressed Glare Crust', 1, 0, 2, 'Y'),
	(308, 'Compressed Krystallos', 1, 0, 2, 'Y'),
	(309, 'Compressed Pristine White Glaze', 1, 0, 2, 'Y'),
	(310, 'Compressed Smooth Glacial Mass', 1, 0, 2, 'Y'),
	(311, 'Compressed Thick Blue Ice', 1, 0, 2, 'Y'),
	(312, 'Compressed White Glaze', 1, 0, 2, 'Y');
/*!40000 ALTER TABLE `items` ENABLE KEYS */;


-- Dumping structure for table minerals.types
CREATE TABLE IF NOT EXISTS `types` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- Dumping data for table minerals.types: ~2 rows (approximately)
/*!40000 ALTER TABLE `types` DISABLE KEYS */;
INSERT INTO `types` (`id`, `name`) VALUES
	(1, 'Ore'),
	(2, 'Ice');
/*!40000 ALTER TABLE `types` ENABLE KEYS */;
/*!40014 SET FOREIGN_KEY_CHECKS=1 */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
