SET FOREIGN_KEY_CHECKS=0;

DROP TABLE IF EXISTS dpt;

CREATE TABLE `dpt` (
  `dpt_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `type` varchar(16) NOT NULL DEFAULT '',
  `unit` varchar(8) DEFAULT NULL,
  PRIMARY KEY (`dpt_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `dpt` (`dpt_id`, `type`, `unit`)
VALUES
	(1, '0', ''),
	(2, '1.001', ''),
	(3, '1.002', ''),
	(4, '1.003', ''),
	(5, '1.004', ''),
	(6, '1.005', ''),
	(7, '1.006', ''),
	(8, '1.007', ''),
	(9, '1.008', ''),
	(10, '1.009', ''),
	(11, '1.010', ''),
	(12, '1.011', ''),
	(13, '1.012', ''),
	(14, '1.013', ''),
	(15, '1.014', ''),
	(16, '1.015', ''),
	(17, '1.016', ''),
	(18, '1.017', ''),
	(19, '1.018', ''),
	(20, '1.019', ''),
	(21, '1.021', ''),
	(22, '1.022', ''),
	(23, '1.023', ''),
	(24, '1.100', ''),
	(25, '2.001', ''),
	(26, '2.002', ''),
	(27, '2.003', ''),
	(28, '2.004', ''),
	(29, '2.005', ''),
	(30, '2.006', ''),
	(31, '2.007', ''),
	(32, '2.008', ''),
	(33, '2.009', ''),
	(34, '2.010', ''),
	(35, '2.011', ''),
	(36, '2.012', ''),
	(37, '3.007', ''),
	(38, '3.007', ''),
	(39, '3.008', ''),
	(40, '3.008', ''),
	(41, '4.001', ''),
	(42, '4.002', ''),
	(43, '5.001', '%'),
	(44, '5.003', '°'),
	(45, '5.004', '%'),
	(46, '5.005', ''),
	(47, '5.006', '€'),
	(48, '5.010', 'pls'),
	(49, '6.001', '%'),
	(50, '6.010', 'pls'),
	(51, '6.020', ''),
	(52, '6.020', ''),
	(53, '7.001', 'pls'),
	(54, '7.002', 'ms'),
	(55, '7.003', 'ms'),
	(56, '7.004', 'ms'),
	(57, '7.005', 's'),
	(58, '7.006', 'min'),
	(59, '7.007', 'h'),
	(60, '7.010', ''),
	(61, '7.011', 'mm'),
	(62, '7.012', 'mA'),
	(63, '7.013', 'lux'),
	(64, '8.001', 'pls'),
	(65, '8.002', 'ms'),
	(66, '8.003', 'ms'),
	(67, '8.004', 'ms'),
	(68, '8.005', 's'),
	(69, '8.006', 'min'),
	(70, '8.007', 'h'),
	(71, '8.010', '%'),
	(72, '8.011', '°'),
	(73, '9.001', '°C'),
	(74, '9.002', 'K'),
	(75, '9.003', 'K/h'),
	(76, '9.004', 'Lux'),
	(77, '9.005', 'm/s'),
	(78, '9.006', 'Pa'),
	(79, '9.007', '%'),
	(80, '9.008', 'ppm'),
	(81, '9.010', 's'),
	(82, '9.011', 'ms'),
	(83, '9.020', 'mV'),
	(84, '9.021', 'mA'),
	(85, '9.022', 'W/m2'),
	(86, '9.023', 'K/%'),
	(87, '9.024', 'kW'),
	(88, '9.025', 'l/h'),
	(89, '9.026', 'l/m2'),
	(90, '9.027', '°F'),
	(91, '9.028', 'km/h'),
	(92, '9.65001', '€'),
	(93, '9.65002', 'kgCO2'),
	(94, '10.001', 'DATE'),
	(95, '10.001', 'DATE'),
	(96, '10.001', 'DATE'),
	(97, '10.001', 'DATE'),
	(98, '11.001', 'DATE'),
	(99, '11.001', 'DATE'),
	(100, '11.001', 'DATE'),
	(101, '12.001', 'pls'),
	(102, '13.001', 'pls'),
	(103, '13.010', 'Wh'),
	(104, '13.011', 'Vah'),
	(105, '13.012', 'VARh'),
	(106, '13.013', 'kWh'),
	(107, '13.014', 'kVAh'),
	(108, '13.015', 'kVARh'),
	(109, '13.100', 's'),
	(110, '14.000', 'm/s2'),
	(111, '14.001', 'rad/s2'),
	(112, '14.002', 'J/mol'),
	(113, '14.003', 's-1'),
	(114, '14.004', 'mol'),
	(115, '14.005', ''),
	(116, '14.006', 'rad'),
	(117, '14.007', '°'),
	(118, '14.008', 'Js'),
	(119, '14.009', 'rad/s'),
	(120, '14.010', 'm2'),
	(121, '14.011', 'F'),
	(122, '14.012', 'C/m2'),
	(123, '14.013', 'C/m3'),
	(124, '14.014', 'm2/N'),
	(125, '14.015', 'S'),
	(126, '14.016', 'S/m'),
	(127, '14.017', 'kg/m3'),
	(128, '14.018', 'C'),
	(129, '14.019', 'A'),
	(130, '14.020', 'A/m2'),
	(131, '14.021', 'Cm'),
	(132, '14.022', 'C/m2'),
	(133, '14.023', 'V/m'),
	(134, '14.024', 'c'),
	(135, '14.025', 'C/m2'),
	(136, '14.026', 'C/m2'),
	(137, '14.027', 'V'),
	(138, '14.028', 'V'),
	(139, '14.029', 'A.m2'),
	(140, '14.030', 'V'),
	(141, '14.031', 'J'),
	(142, '14.032', 'N'),
	(143, '14.033', 'Hz'),
	(144, '14.034', 'rad/s'),
	(145, '14.035', 'J/K'),
	(146, '14.036', 'W'),
	(147, '14.037', 'J'),
	(148, '14.038', 'ohm'),
	(149, '14.039', 'm'),
	(150, '14.040', 'lm.s'),
	(151, '14.041', 'cd/m2'),
	(152, '14.042', 'lm'),
	(153, '14.043', 'cd'),
	(154, '14.044', 'A/m'),
	(155, '14.045', 'Wb'),
	(156, '14.046', 'T'),
	(157, '14.047', 'A.m2'),
	(158, '14.048', 'T'),
	(159, '14.049', 'A/m'),
	(160, '14.050', 'A'),
	(161, '14.051', 'kg'),
	(162, '14.052', 'kg/s'),
	(163, '14.053', 'N/s'),
	(164, '14.054', 'rad'),
	(165, '14.055', '°'),
	(166, '14.056', 'W'),
	(167, '14.057', 'cosphi'),
	(168, '14.058', 'Pa'),
	(169, '14.059', 'ohm'),
	(170, '14.060', 'ohm'),
	(171, '14.061', 'ohm.m'),
	(172, '14.062', 'H'),
	(173, '14.063', 'sr'),
	(174, '14.064', 'W/m2'),
	(175, '14.065', 'm/s'),
	(176, '14.066', 'Pa'),
	(177, '14.067', 'N/m'),
	(178, '14.068', '°C'),
	(179, '14.069', 'K'),
	(180, '14.070', 'K'),
	(181, '14.071', 'J/K'),
	(182, '14.072', 'W/mK'),
	(183, '14.073', 'V/K'),
	(184, '14.074', 's'),
	(185, '14.075', 'N.m'),
	(186, '14.076', 'm3'),
	(187, '14.077', 'm3/s'),
	(188, '14.078', 'N'),
	(189, '14.079', 'J'),
	(190, '15.000', ''),
	(191, '15.000', ''),
	(192, '15.000', ''),
	(193, '15.000', ''),
	(194, '15.000', ''),
	(195, '15.000', ''),
	(196, '15.000', ''),
	(197, '15.000', ''),
	(198, '16.000', ''),
	(199, '16.001', ''),
	(200, '17.001', ''),
	(201, '17.001', ''),
	(202, '18.001', ''),
	(203, '18.001', ''),
	(204, '18.001', ''),
	(205, '19.001', 'DATE'),
	(206, '19.001', 'DATE'),
	(207, '19.001', 'DATE'),
	(208, '19.001', 'DATE'),
	(209, '19.001', 'DATE'),
	(210, '19.001', 'DATE'),
	(211, '19.001', 'DATE'),
	(212, '19.001', 'DATE'),
	(213, '20.001', ''),
	(214, '20.002', ''),
	(215, '20.003', ''),
	(216, '20.004', ''),
	(217, '20.005', ''),
	(218, '20.006', ''),
	(219, '20.007', ''),
	(220, '20.008', ''),
	(221, '20.011', ''),
	(222, '20.012', ''),
	(223, '20.013', ''),
	(224, '20.014', ''),
	(225, '20.017', ''),
	(226, '20.100', ''),
	(227, '20.101', ''),
	(228, '20.102', ''),
	(229, '20.103', ''),
	(230, '20.104', ''),
	(231, '20.105', ''),
	(232, '20.106', ''),
	(233, '20.107', ''),
	(234, '20.108', ''),
	(235, '20.109', ''),
	(236, '20.110', ''),
	(237, '20.111', ''),
	(238, '20.112', ''),
	(239, '20.113', ''),
	(240, '20.600', ''),
	(241, '20.601', ''),
	(242, '20.1000', ''),
	(243, '20.1001', ''),
	(244, '20.1002', ''),
	(245, '20.1003', ''),
	(246, '21.001', ''),
	(247, '21.002', ''),
	(248, '21.100', ''),
	(249, '21.101', ''),
	(250, '21.102', ''),
	(251, '21.103', ''),
	(252, '21.104', ''),
	(253, '21.105', ''),
	(254, '21.106', ''),
	(255, '21.1000', ''),
	(256, '21.1001', ''),
	(257, '21.1010', ''),
	(258, '22.100', ''),
	(259, '22.101', ''),
	(260, '22.1000', ''),
	(261, '22.1010', ''),
	(262, '23.001', ''),
	(263, '23.002', ''),
	(264, '23.003', ''),
	(265, '23.102', ''),
	(266, '24.001', ''),
	(267, '25.100', ''),
	(268, '25.100', ''),
	(269, '26.001', ''),
	(270, '26.001', ''),
	(271, '26.001', ''),
	(272, '27.001', ''),
	(273, '28.001', ''),
	(274, '29.010', 'Wh'),
	(275, '29.011', 'VAh'),
	(276, '29.012', 'VARh'),
	(277, '30.1010', ''),
	(278, '31.101', ''),
	(279, '200.100', ''),
	(280, '200.100', ''),
	(281, '200.101', ''),
	(282, '200.101', ''),
	(283, '201.100', ''),
	(284, '201.100', ''),
	(285, '201.102', ''),
	(286, '201.102', ''),
	(287, '201.104', ''),
	(288, '201.104', ''),
	(289, '201.105', ''),
	(290, '201.105', ''),
	(291, '201.107', ''),
	(292, '201.107', ''),
	(293, '201.108', ''),
	(294, '201.108', ''),
	(295, '201.109', ''),
	(296, '201.109', ''),
	(297, '202.001', '%'),
	(298, '202.001', '%'),
	(299, '202.002', ''),
	(300, '202.002', ''),
	(301, '203.002', 'ms'),
	(302, '203.002', 'ms'),
	(303, '203.003', 'ms'),
	(304, '203.003', 'ms'),
	(305, '203.004', 'ms'),
	(306, '203.004', 'ms'),
	(307, '203.005', 's'),
	(308, '203.005', 's'),
	(309, '203.006', 'min'),
	(310, '203.006', 'min'),
	(311, '203.007', 'h'),
	(312, '203.007', 'h'),
	(313, '203.011', 'l/h'),
	(314, '203.011', 'l/h'),
	(315, '203.012', ''),
	(316, '203.012', ''),
	(317, '203.013', 'uA'),
	(318, '203.013', 'uA'),
	(319, '203.014', ''),
	(320, '203.014', ''),
	(321, '203.015', 'mbar'),
	(322, '203.015', 'mbar'),
	(323, '203.017', '%'),
	(324, '203.017', '%'),
	(325, '203.100', ''),
	(326, '203.100', ''),
	(327, '203.101', ''),
	(328, '203.101', ''),
	(329, '203.102', ''),
	(330, '203.102', ''),
	(331, '203.104', ''),
	(332, '203.104', ''),
	(333, '204.001', '%'),
	(334, '204.001', '%'),
	(335, '205.002', 'ms'),
	(336, '205.002', 'ms'),
	(337, '205.003', 'ms'),
	(338, '205.003', 'ms'),
	(339, '205.004', 'ms'),
	(340, '205.004', 'ms'),
	(341, '205.005', 's'),
	(342, '205.005', 's'),
	(343, '205.006', 'min'),
	(344, '205.006', 'min'),
	(345, '205.007', 'h'),
	(346, '205.007', 'h'),
	(347, '205.100', ''),
	(348, '205.100', ''),
	(349, '205.101', ''),
	(350, '205.101', ''),
	(351, '205.102', ''),
	(352, '205.102', ''),
	(353, '206.100', ''),
	(354, '206.100', ''),
	(355, '206.102', ''),
	(356, '206.102', ''),
	(357, '206.104', ''),
	(358, '206.104', ''),
	(359, '206.105', ''),
	(360, '206.105', ''),
	(361, '207.100', ''),
	(362, '207.100', ''),
	(363, '207.101', ''),
	(364, '207.101', ''),
	(365, '207.102', ''),
	(366, '207.102', ''),
	(367, '207.104', ''),
	(368, '207.104', ''),
	(369, '207.105', ''),
	(370, '207.105', ''),
	(371, '209.100', ''),
	(372, '209.100', ''),
	(373, '209.101', ''),
	(374, '209.101', ''),
	(375, '209.102', ''),
	(376, '209.102', ''),
	(377, '209.103', ''),
	(378, '209.103', ''),
	(379, '210.100', ''),
	(380, '210.100', ''),
	(381, '211.100', ''),
	(382, '211.100', ''),
	(383, '212.100', ''),
	(384, '212.100', ''),
	(385, '212.100', ''),
	(386, '212.101', ''),
	(387, '212.101', ''),
	(388, '212.101', ''),
	(389, '213.100', ''),
	(390, '213.100', ''),
	(391, '213.100', ''),
	(392, '213.100', ''),
	(393, '213.101', ''),
	(394, '213.101', ''),
	(395, '213.101', ''),
	(396, '213.101', ''),
	(397, '213.102', ''),
	(398, '213.102', ''),
	(399, '213.102', ''),
	(400, '213.102', ''),
	(401, '214.100', ''),
	(402, '214.100', ''),
	(403, '214.100', ''),
	(404, '214.101', ''),
	(405, '214.101', ''),
	(406, '214.101', ''),
	(407, '215.100', ''),
	(408, '215.100', ''),
	(410, '215.101', ''),
	(411, '215.101', ''),
	(412, '215.101', ''),
	(413, '216.100', ''),
	(414, '216.100', ''),
	(415, '216.100', ''),
	(416, '216.100', ''),
	(417, '217.001', ''),
	(418, '217.001', ''),
	(419, '217.001', ''),
	(420, '218.001', 'l'),
	(421, '218.001', 'l'),
	(422, '219.001', ''),
	(423, '219.001', ''),
	(424, '219.001', ''),
	(425, '219.001', ''),
	(426, '219.001', ''),
	(427, '219.001', ''),
	(428, '220.100', ''),
	(429, '220.100', ''),
	(430, '221.001', ''),
	(431, '221.001', ''),
	(432, '222.100', ''),
	(433, '222.100', ''),
	(434, '222.100', ''),
	(435, '222.101', ''),
	(436, '222.101', ''),
	(437, '222.101', ''),
	(438, '223.100', ''),
	(439, '223.100', ''),
	(440, '223.100', ''),
	(441, '224.100', ''),
	(442, '224.100', ''),
	(443, '224.100', ''),
	(444, '224.100', ''),
	(445, '225.001', '%/s'),
	(446, '225.001', '%/s'),
	(447, '225.002', 'ms'),
	(448, '225.002', 'ms'),
	(449, '229.001', ''),
	(450, '229.001', ''),
	(451, '229.001', ''),
	(452, '230.1000', ''),
	(453, '230.1000', ''),
	(454, '230.1000', ''),
	(455, '230.1000', ''),
	(456, '231.001', ''),
	(457, '231.001', ''),
	(458, '231.001', ''),
	(459, '231.001', ''),
	(460, '232.600', ''),
	(461, '232.600', ''),
	(462, '232.600', ''),
	(463, '234.001', ''),
	(464, '234.001', ''),
	(465, '234.002', ''),
	(466, '234.002', ''),
	(467, '', 'HTTP'),
	(468, '', 'UPNP'),
	(469, '', 'IR'),
	(470, '', '°C'),
	(471, '', 'ON/OFF 1'),
	(472, '', 'ON/OFF 2');

SET FOREIGN_KEY_CHECKS=1;
