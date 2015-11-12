SET FOREIGN_KEY_CHECKS=0;

DROP TABLE IF EXISTS device_option;

CREATE TABLE `device_option` (
  `device_id` int(10) unsigned NOT NULL,
  `protocol_id` int(10) unsigned DEFAULT NULL,
  `option_id` int(10) unsigned NOT NULL DEFAULT '0',
  `bydefault` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `groupe` tinyint(3) unsigned NOT NULL DEFAULT '0',
  UNIQUE KEY `device_id` (`device_id`,`protocol_id`,`option_id`),
  KEY `option_id` (`option_id`),
  KEY `protocol_id` (`protocol_id`),
  CONSTRAINT `device_option_ibfk_2` FOREIGN KEY (`option_id`) REFERENCES `optiondef` (`option_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `device_option_ibfk_3` FOREIGN KEY (`protocol_id`) REFERENCES `device_protocol` (`protocol_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `device_option_ibfk_4` FOREIGN KEY (`device_id`) REFERENCES `device` (`device_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `device_option` (`device_id`, `protocol_id`, `option_id`, `bydefault`, `groupe`)
VALUES
	(2, NULL, 1, 0, 0),
	(2, NULL, 2, 0, 0),
	(2, NULL, 3, 0, 0),
	(2, NULL, 4, 0, 1),
	(2, NULL, 5, 0, 1),
	(2, NULL, 7, 1, 1),
	(2, NULL, 9, 1, 2),
	(2, NULL, 11, 0, 2),
	(2, NULL, 56, 0, 0),
	(2, NULL, 97, 0, 0),
	(2, NULL, 355, 0, 0),
	(2, NULL, 356, 0, 0),
	(2, NULL, 357, 0, 0),
	(2, NULL, 358, 0, 0),
	(2, NULL, 359, 0, 0),
	(2, NULL, 360, 0, 0),
	(2, NULL, 361, 0, 0),
	(3, NULL, 12, 1, 4),
	(3, NULL, 13, 0, 0),
	(3, NULL, 16, 0, 2),
	(3, NULL, 26, 1, 1),
	(3, NULL, 36, 0, 5),
	(3, 1, 44, 1, 3),
	(3, NULL, 50, 0, 2),
	(3, NULL, 52, 0, 1),
	(3, NULL, 59, 0, 1),
	(3, NULL, 66, 0, 2),
	(3, NULL, 81, 0, 2),
	(3, NULL, 129, 1, 2),
	(3, NULL, 130, 0, 2),
	(3, NULL, 387, 1, 5),
	(4, NULL, 12, 1, 4),
	(4, NULL, 13, 0, 0),
	(4, NULL, 16, 1, 2),
	(4, NULL, 22, 0, 2),
	(4, NULL, 24, 0, 2),
	(4, NULL, 26, 1, 1),
	(4, NULL, 36, 0, 5),
	(4, NULL, 38, 0, 5),
	(4, 1, 44, 1, 3),
	(4, NULL, 47, 0, 2),
	(4, NULL, 50, 0, 2),
	(4, NULL, 66, 0, 2),
	(4, NULL, 81, 0, 2),
	(4, NULL, 82, 0, 2),
	(4, NULL, 83, 0, 2),
	(4, NULL, 84, 0, 2),
	(4, NULL, 387, 1, 5),
	(5, NULL, 6, 0, 0),
	(5, NULL, 72, 0, 0),
	(5, NULL, 73, 0, 0),
	(5, NULL, 79, 0, 0),
	(5, NULL, 173, 0, 0),
	(6, NULL, 12, 1, 4),
	(6, NULL, 22, 1, 2),
	(6, NULL, 26, 1, 1),
	(6, 1, 44, 1, 3),
	(7, 1, 12, 1, 4),
	(7, 1, 22, 0, 2),
	(7, 1, 24, 1, 2),
	(7, 1, 26, 1, 3),
	(7, 1, 44, 1, 1),
	(7, 1, 372, 0, 4),
	(8, 1, 12, 1, 3),
	(8, 1, 22, 1, 2),
	(8, 1, 24, 0, 2),
	(8, 1, 26, 1, 1),
	(8, 1, 44, 1, 4),
	(8, 1, 372, 0, 3),
	(9, 1, 12, 1, 2),
	(9, NULL, 13, 0, 0),
	(9, 1, 22, 0, 4),
	(9, 1, 24, 1, 4),
	(9, 1, 26, 0, 3),
	(9, 1, 44, 1, 1),
	(9, 1, 52, 0, 3),
	(9, 1, 70, 0, 4),
	(9, 1, 91, 1, 2),
	(10, NULL, 22, 0, 2),
	(10, NULL, 26, 1, 1),
	(10, NULL, 36, 0, 5),
	(10, NULL, 38, 0, 5),
	(10, NULL, 44, 1, 4),
	(10, NULL, 50, 1, 2),
	(10, NULL, 52, 0, 1),
	(10, NULL, 53, 0, 1),
	(10, NULL, 54, 1, 3),
	(10, NULL, 365, 0, 0),
	(10, NULL, 384, 0, 2),
	(10, NULL, 387, 1, 5),
	(11, 1, 12, 1, 4),
	(11, 1, 26, 1, 3),
	(11, 1, 44, 1, 1),
	(11, 1, 50, 1, 2),
	(11, NULL, 365, 0, 0),
	(12, NULL, 12, 0, 0),
	(12, 1, 93, 0, 0),
	(12, NULL, 388, 0, 0),
	(12, NULL, 400, 0, 0),
	(12, NULL, 401, 0, 0),
	(12, NULL, 402, 0, 0),
	(12, NULL, 403, 0, 0),
	(12, NULL, 404, 0, 0),
	(12, NULL, 405, 0, 0),
	(12, NULL, 406, 0, 0),
	(13, NULL, 12, 0, 0),
	(13, NULL, 388, 0, 0),
	(13, NULL, 400, 0, 0),
	(13, NULL, 401, 0, 0),
	(13, NULL, 402, 0, 0),
	(13, NULL, 403, 0, 0),
	(13, NULL, 404, 0, 0),
	(13, NULL, 405, 0, 0),
	(13, NULL, 406, 0, 0),
	(18, 1, 12, 1, 4),
	(18, 1, 22, 1, 2),
	(18, 1, 26, 1, 3),
	(18, 1, 44, 1, 1),
	(19, 1, 12, 1, 4),
	(19, 1, 22, 1, 2),
	(19, 1, 24, 0, 2),
	(19, 1, 26, 1, 3),
	(19, 1, 44, 1, 1),
	(20, 1, 12, 1, 4),
	(20, 1, 22, 1, 2),
	(20, 1, 24, 0, 2),
	(20, 1, 26, 1, 3),
	(20, 1, 44, 1, 1),
	(21, 1, 12, 1, 4),
	(21, 1, 22, 1, 2),
	(21, 1, 24, 0, 2),
	(21, 1, 26, 1, 3),
	(21, 1, 44, 1, 1),
	(22, 1, 12, 1, 4),
	(22, 1, 22, 1, 2),
	(22, 1, 24, 0, 2),
	(22, 1, 26, 1, 3),
	(22, 1, 44, 1, 1),
	(23, 1, 12, 1, 4),
	(23, 1, 22, 0, 2),
	(23, 1, 24, 1, 2),
	(23, 1, 26, 1, 3),
	(23, 1, 44, 1, 1),
	(24, 1, 12, 1, 4),
	(24, 1, 22, 1, 2),
	(24, 1, 24, 0, 2),
	(24, 1, 26, 1, 3),
	(24, 1, 44, 1, 1),
	(25, 1, 12, 1, 4),
	(25, 1, 26, 1, 3),
	(25, 1, 44, 1, 1),
	(25, 1, 66, 1, 2),
	(25, NULL, 400, 0, 0),
	(25, NULL, 401, 0, 0),
	(25, NULL, 402, 0, 0),
	(25, NULL, 403, 0, 0),
	(25, NULL, 404, 0, 0),
	(25, NULL, 405, 0, 0),
	(25, NULL, 406, 0, 0),
	(26, 1, 12, 1, 4),
	(26, 1, 22, 1, 2),
	(26, 1, 24, 0, 2),
	(26, 1, 26, 1, 3),
	(26, 1, 44, 1, 1),
	(26, NULL, 400, 0, 0),
	(26, NULL, 401, 0, 0),
	(26, NULL, 402, 0, 0),
	(26, NULL, 403, 0, 0),
	(26, NULL, 404, 0, 0),
	(26, NULL, 405, 0, 0),
	(26, NULL, 406, 0, 0),
	(27, 1, 12, 1, 4),
	(27, 1, 22, 1, 2),
	(27, 1, 24, 0, 2),
	(27, 1, 26, 1, 3),
	(27, 1, 44, 1, 1),
	(28, 1, 12, 1, 4),
	(28, 1, 22, 0, 2),
	(28, 1, 24, 1, 2),
	(28, 1, 26, 1, 3),
	(28, 1, 44, 1, 1),
	(29, NULL, 1, 1, 0),
	(29, NULL, 2, 0, 0),
	(29, NULL, 3, 0, 0),
	(29, NULL, 4, 0, 1),
	(29, NULL, 5, 0, 1),
	(29, NULL, 7, 1, 1),
	(29, NULL, 9, 0, 0),
	(29, NULL, 11, 0, 0),
	(29, NULL, 97, 0, 0),
	(29, NULL, 355, 0, 0),
	(29, NULL, 356, 0, 0),
	(29, NULL, 357, 0, 0),
	(29, NULL, 358, 0, 0),
	(29, NULL, 359, 0, 0),
	(29, NULL, 360, 0, 0),
	(29, NULL, 361, 0, 0),
	(30, 1, 44, 1, 1),
	(30, NULL, 92, 0, 0),
	(30, NULL, 371, 0, 0),
	(31, 1, 22, 1, 2),
	(31, 1, 26, 1, 3),
	(31, 1, 44, 1, 1),
	(31, 1, 96, 1, 4),
	(32, 1, 12, 1, 4),
	(32, 1, 26, 1, 3),
	(32, 1, 44, 1, 1),
	(32, 1, 66, 1, 2),
	(33, 1, 12, 1, 4),
	(33, 1, 24, 1, 2),
	(33, 1, 26, 1, 3),
	(33, 1, 44, 1, 1),
	(34, NULL, 12, 0, 0),
	(34, NULL, 18, 1, 1),
	(34, 1, 93, 0, 0),
	(34, NULL, 388, 0, 0),
	(34, NULL, 400, 0, 0),
	(34, NULL, 401, 0, 0),
	(34, NULL, 402, 0, 0),
	(34, NULL, 403, 0, 0),
	(34, NULL, 404, 0, 0),
	(34, NULL, 405, 0, 0),
	(34, NULL, 406, 0, 0),
	(36, 1, 12, 1, 0),
	(36, 1, 13, 0, 0),
	(36, 1, 14, 0, 1),
	(36, 1, 15, 0, 1),
	(36, 1, 16, 0, 2),
	(36, 1, 18, 1, 1),
	(36, 1, 19, 0, 1),
	(36, 1, 20, 0, 1),
	(36, 1, 21, 0, 1),
	(36, 1, 22, 0, 2),
	(36, 1, 24, 1, 2),
	(36, 1, 26, 1, 3),
	(36, 1, 41, 0, 1),
	(36, 1, 47, 0, 2),
	(36, 1, 49, 0, 1),
	(36, 1, 50, 0, 2),
	(36, 1, 52, 0, 3),
	(36, 1, 54, 0, 0),
	(36, 1, 57, 0, 0),
	(36, 1, 58, 0, 0),
	(36, 1, 59, 0, 3),
	(36, 1, 60, 0, 2),
	(36, 1, 64, 0, 2),
	(36, 1, 66, 0, 2),
	(36, 1, 68, 0, 1),
	(36, 1, 70, 0, 2),
	(36, 1, 71, 0, 2),
	(36, 1, 74, 0, 0),
	(36, 1, 81, 0, 2),
	(36, 1, 82, 0, 2),
	(36, 1, 84, 0, 2),
	(36, 1, 91, 0, 0),
	(36, 1, 126, 0, 2),
	(36, 1, 129, 0, 0),
	(36, 1, 130, 0, 0),
	(36, 1, 131, 0, 3),
	(36, 1, 132, 0, 3),
	(36, 1, 133, 0, 3),
	(36, 1, 134, 0, 1),
	(36, 1, 135, 0, 1),
	(36, 1, 136, 0, 0),
	(36, 1, 153, 0, 0),
	(36, 1, 154, 0, 0),
	(36, 1, 168, 0, 1),
	(36, 1, 186, 0, 1),
	(36, 1, 187, 0, 2),
	(36, NULL, 372, 0, 0),
	(38, NULL, 12, 1, 0),
	(38, NULL, 13, 0, 0),
	(38, 1, 32, 0, 1),
	(38, 1, 33, 0, 1),
	(38, 1, 34, 0, 1),
	(38, 1, 35, 0, 1),
	(38, NULL, 36, 1, 2),
	(38, 1, 37, 0, 4),
	(38, NULL, 38, 0, 2),
	(38, NULL, 39, 0, 2),
	(38, NULL, 48, 0, 2),
	(38, NULL, 54, 0, 0),
	(38, NULL, 62, 1, 1),
	(38, 1, 63, 0, 1),
	(38, NULL, 69, 0, 2),
	(38, NULL, 76, 0, 3),
	(38, 1, 85, 0, 3),
	(38, NULL, 86, 0, 3),
	(38, NULL, 89, 0, 2),
	(38, NULL, 90, 1, 3),
	(38, 1, 98, 0, 3),
	(38, 1, 99, 0, 4),
	(38, NULL, 100, 1, 4),
	(38, 1, 101, 0, 4),
	(38, 1, 102, 0, 1),
	(38, 1, 103, 0, 3),
	(38, 1, 104, 0, 1),
	(38, 1, 105, 0, 1),
	(38, 1, 106, 0, 1),
	(38, NULL, 107, 0, 0),
	(38, 1, 115, 0, 3),
	(38, 1, 117, 0, 3),
	(38, 1, 118, 0, 3),
	(38, 1, 119, 0, 3),
	(38, 1, 120, 0, 3),
	(38, 1, 121, 0, 3),
	(38, 1, 122, 0, 1),
	(38, 1, 123, 0, 1),
	(38, 1, 124, 0, 1),
	(38, 1, 125, 0, 1),
	(38, 1, 137, 0, 3),
	(38, 1, 138, 0, 1),
	(38, 1, 139, 0, 1),
	(38, 1, 140, 0, 1),
	(38, 1, 141, 0, 1),
	(38, 1, 142, 0, 1),
	(38, 1, 143, 0, 1),
	(38, 1, 144, 0, 1),
	(38, 1, 145, 0, 1),
	(38, 1, 147, 0, 1),
	(38, 1, 150, 0, 1),
	(38, 1, 151, 0, 1),
	(38, 1, 152, 0, 1),
	(38, 1, 155, 0, 3),
	(38, 1, 156, 0, 3),
	(38, 1, 157, 0, 3),
	(38, 1, 158, 0, 3),
	(38, 1, 159, 0, 3),
	(38, 1, 160, 0, 3),
	(38, 1, 161, 0, 3),
	(38, 1, 163, 0, 3),
	(38, 1, 164, 0, 3),
	(38, 1, 165, 0, 3),
	(38, 1, 169, 0, 1),
	(38, 1, 170, 0, 1),
	(38, 1, 171, 0, 0),
	(38, 1, 395, 0, 1),
	(38, 1, 396, 0, 1),
	(38, 1, 397, 0, 1),
	(38, 3, 398, 0, 0),
	(40, 1, 28, 1, 1),
	(40, 1, 29, 0, 1),
	(40, 1, 30, 0, 1),
	(40, 1, 94, 0, 2),
	(40, 1, 95, 0, 3),
	(40, 1, 176, 0, 4),
	(43, NULL, 14, 0, 0),
	(43, NULL, 18, 0, 0),
	(43, 1, 32, 0, 1),
	(43, 1, 33, 0, 1),
	(43, 1, 34, 0, 1),
	(43, 1, 35, 0, 1),
	(43, NULL, 62, 1, 1),
	(43, 1, 63, 0, 1),
	(43, NULL, 97, 1, 2),
	(43, 1, 102, 0, 1),
	(43, NULL, 108, 0, 3),
	(43, NULL, 109, 0, 3),
	(43, NULL, 110, 1, 3),
	(43, NULL, 112, 0, 0),
	(43, NULL, 113, 0, 0),
	(43, 1, 114, 0, 0),
	(47, NULL, 14, 0, 2),
	(47, NULL, 18, 1, 2),
	(47, NULL, 51, 1, 3),
	(47, NULL, 65, 0, 1),
	(47, NULL, 68, 0, 2),
	(47, NULL, 183, 1, 4),
	(47, NULL, 184, 0, 4),
	(47, NULL, 185, 0, 3),
	(47, NULL, 370, 0, 0),
	(47, NULL, 399, 0, 0),
	(47, NULL, 407, 0, 0),
	(48, NULL, 56, 0, 0),
	(49, NULL, 6, 0, 4),
	(49, 1, 12, 1, 4),
	(49, NULL, 36, 0, 1),
	(49, NULL, 38, 0, 1),
	(49, NULL, 39, 0, 1),
	(49, 1, 62, 1, 3),
	(49, NULL, 69, 0, 1),
	(49, NULL, 72, 1, 2),
	(49, NULL, 73, 0, 3),
	(49, 1, 80, 0, 0),
	(49, NULL, 88, 1, 1),
	(49, 1, 90, 1, 5),
	(49, 1, 91, 0, 4),
	(49, 1, 102, 0, 3),
	(49, 1, 146, 0, 3),
	(49, 1, 147, 0, 3),
	(49, 1, 148, 0, 0),
	(49, 1, 155, 0, 5),
	(49, 1, 156, 0, 5),
	(49, 1, 157, 0, 5),
	(49, 1, 158, 0, 5),
	(49, 1, 159, 0, 5),
	(49, 1, 160, 0, 5),
	(49, 1, 161, 0, 5),
	(49, 1, 162, 0, 5),
	(49, 1, 163, 0, 5),
	(49, 1, 164, 0, 5),
	(49, 1, 165, 0, 5),
	(49, 1, 169, 0, 3),
	(49, 1, 170, 0, 3),
	(49, NULL, 172, 0, 0),
	(50, NULL, 75, 0, 0),
	(50, NULL, 363, 0, 0),
	(50, NULL, 364, 0, 0),
	(50, NULL, 365, 0, 0),
	(50, NULL, 366, 0, 0),
	(50, NULL, 367, 0, 0),
	(50, NULL, 368, 0, 0),
	(50, NULL, 383, 0, 0),
	(51, NULL, 14, 1, 1),
	(51, NULL, 15, 0, 1),
	(51, NULL, 20, 0, 1),
	(51, NULL, 21, 0, 1),
	(51, 1, 26, 0, 3),
	(51, NULL, 49, 0, 1),
	(51, 1, 52, 0, 3),
	(51, NULL, 57, 0, 0),
	(51, 1, 77, 0, 2),
	(51, NULL, 78, 1, 2),
	(51, 1, 166, 1, 3),
	(51, 1, 167, 0, 3),
	(52, 1, 22, 0, 1),
	(52, 1, 24, 0, 1),
	(52, 1, 26, 1, 2),
	(52, 1, 44, 1, 4),
	(52, 1, 50, 1, 1),
	(52, 1, 96, 1, 3),
	(54, 1, 22, 0, 1),
	(54, 1, 24, 0, 1),
	(54, 1, 26, 1, 2),
	(54, 1, 44, 1, 3),
	(54, 1, 50, 1, 1),
	(54, 1, 52, 0, 2),
	(54, 1, 53, 0, 2),
	(54, 1, 66, 0, 1),
	(54, 1, 96, 1, 4),
	(55, NULL, 12, 1, 4),
	(55, NULL, 13, 0, 0),
	(55, NULL, 24, 1, 2),
	(55, 1, 44, 1, 1),
	(55, NULL, 131, 1, 3),
	(56, NULL, 12, 1, 3),
	(56, NULL, 13, 1, 4),
	(56, 1, 24, 1, 5),
	(56, 1, 44, 1, 1),
	(56, 1, 132, 1, 2),
	(57, NULL, 12, 1, 3),
	(57, NULL, 13, 1, 4),
	(57, 1, 24, 1, 2),
	(57, 1, 44, 1, 5),
	(57, 1, 133, 1, 1),
	(58, 1, 12, 1, 1),
	(58, 1, 44, 1, 2),
	(58, 1, 91, 0, 1),
	(59, 1, 12, 1, 3),
	(59, NULL, 13, 0, 0),
	(59, 1, 22, 0, 2),
	(59, 1, 24, 1, 2),
	(59, 1, 26, 1, 1),
	(59, 1, 44, 1, 4),
	(59, 1, 52, 0, 1),
	(59, 1, 70, 0, 2),
	(59, 1, 71, 0, 2),
	(59, 1, 91, 0, 3),
	(60, 1, 62, 1, 1),
	(60, NULL, 79, 0, 0),
	(60, NULL, 97, 0, 0),
	(60, 1, 102, 0, 1),
	(60, NULL, 108, 0, 1),
	(60, NULL, 109, 0, 1),
	(60, NULL, 110, 1, 1),
	(61, 1, 72, 0, 1),
	(61, 1, 79, 0, 2),
	(61, 1, 173, 0, 3),
	(61, 1, 174, 0, 4),
	(61, 1, 175, 0, 5),
	(62, NULL, 12, 0, 0),
	(62, NULL, 177, 1, 1),
	(62, NULL, 178, 0, 1),
	(62, NULL, 179, 1, 2),
	(62, NULL, 180, 0, 2),
	(62, NULL, 188, 1, 3),
	(62, NULL, 190, 0, 3),
	(62, NULL, 192, 1, 4),
	(62, NULL, 193, 0, 4),
	(62, NULL, 194, 1, 5),
	(62, NULL, 205, 1, 6),
	(62, NULL, 207, 1, 7),
	(62, NULL, 208, 1, 8),
	(62, NULL, 209, 1, 9),
	(62, NULL, 210, 0, 5),
	(62, NULL, 211, 0, 4),
	(62, NULL, 212, 0, 6),
	(62, NULL, 213, 0, 7),
	(62, NULL, 214, 0, 8),
	(62, NULL, 215, 0, 9),
	(62, NULL, 216, 0, 9),
	(62, NULL, 217, 0, 9),
	(62, NULL, 388, 0, 0),
	(62, NULL, 400, 0, 0),
	(62, NULL, 401, 0, 0),
	(62, NULL, 402, 0, 0),
	(62, NULL, 403, 0, 0),
	(62, NULL, 404, 0, 0),
	(62, NULL, 405, 0, 0),
	(62, NULL, 406, 0, 0),
	(63, NULL, 12, 0, 0),
	(63, NULL, 179, 1, 1),
	(63, NULL, 188, 1, 2),
	(63, NULL, 192, 1, 3),
	(63, NULL, 194, 1, 4),
	(63, NULL, 204, 1, 5),
	(63, NULL, 205, 1, 6),
	(63, NULL, 206, 1, 7),
	(63, NULL, 207, 1, 8),
	(63, NULL, 208, 1, 9),
	(63, NULL, 209, 1, 10),
	(63, NULL, 218, 0, 1),
	(63, NULL, 219, 0, 1),
	(63, NULL, 220, 0, 1),
	(63, NULL, 221, 0, 1),
	(63, NULL, 222, 0, 2),
	(63, NULL, 223, 0, 2),
	(63, NULL, 224, 0, 3),
	(63, NULL, 225, 0, 3),
	(63, NULL, 226, 0, 4),
	(63, NULL, 227, 0, 4),
	(63, NULL, 228, 0, 4),
	(63, NULL, 229, 0, 4),
	(63, NULL, 230, 0, 4),
	(63, NULL, 231, 0, 3),
	(63, NULL, 232, 0, 3),
	(63, NULL, 233, 0, 3),
	(63, NULL, 234, 0, 3),
	(63, NULL, 235, 0, 5),
	(63, NULL, 236, 0, 5),
	(63, NULL, 237, 0, 6),
	(63, NULL, 238, 0, 6),
	(63, NULL, 239, 0, 7),
	(63, NULL, 240, 0, 8),
	(63, NULL, 241, 0, 8),
	(63, NULL, 242, 0, 8),
	(63, NULL, 243, 0, 8),
	(63, NULL, 244, 0, 9),
	(63, NULL, 245, 0, 9),
	(63, NULL, 246, 0, 9),
	(63, NULL, 247, 0, 9),
	(63, NULL, 248, 0, 9),
	(63, NULL, 249, 0, 10),
	(63, NULL, 250, 0, 10),
	(63, NULL, 251, 0, 10),
	(63, NULL, 252, 0, 10),
	(63, NULL, 253, 0, 10),
	(63, NULL, 254, 0, 10),
	(63, NULL, 388, 0, 0),
	(63, NULL, 400, 0, 0),
	(63, NULL, 401, 0, 0),
	(63, NULL, 402, 0, 0),
	(63, NULL, 403, 0, 0),
	(63, NULL, 404, 0, 0),
	(63, NULL, 405, 0, 0),
	(63, NULL, 406, 0, 0),
	(64, NULL, 12, 0, 0),
	(64, NULL, 388, 0, 0),
	(64, NULL, 400, 0, 0),
	(64, NULL, 401, 0, 0),
	(64, NULL, 402, 0, 0),
	(64, NULL, 403, 0, 0),
	(64, NULL, 404, 0, 0),
	(64, NULL, 405, 0, 0),
	(64, NULL, 406, 0, 0),
	(65, NULL, 12, 0, 0),
	(65, NULL, 388, 0, 0),
	(65, NULL, 400, 0, 0),
	(65, NULL, 401, 0, 0),
	(65, NULL, 402, 0, 0),
	(65, NULL, 403, 0, 0),
	(65, NULL, 404, 0, 0),
	(65, NULL, 405, 0, 0),
	(65, NULL, 406, 0, 0),
	(66, NULL, 12, 0, 0),
	(66, NULL, 256, 0, 0),
	(66, NULL, 388, 0, 0),
	(66, NULL, 400, 0, 0),
	(66, NULL, 401, 0, 0),
	(66, NULL, 402, 0, 0),
	(66, NULL, 403, 0, 0),
	(66, NULL, 404, 0, 0),
	(66, NULL, 405, 0, 0),
	(66, NULL, 406, 0, 0),
	(67, NULL, 12, 0, 0),
	(67, NULL, 388, 0, 0),
	(67, NULL, 400, 0, 0),
	(67, NULL, 401, 0, 0),
	(67, NULL, 402, 0, 0),
	(67, NULL, 403, 0, 0),
	(67, NULL, 404, 0, 0),
	(67, NULL, 405, 0, 0),
	(67, NULL, 406, 0, 0),
	(68, NULL, 12, 0, 0),
	(68, NULL, 388, 0, 0),
	(68, NULL, 400, 0, 0),
	(68, NULL, 401, 0, 0),
	(68, NULL, 402, 0, 0),
	(68, NULL, 403, 0, 0),
	(68, NULL, 404, 0, 0),
	(68, NULL, 405, 0, 0),
	(68, NULL, 406, 0, 0),
	(69, NULL, 12, 0, 0),
	(69, NULL, 388, 0, 0),
	(69, NULL, 400, 0, 0),
	(69, NULL, 401, 0, 0),
	(69, NULL, 402, 0, 0),
	(69, NULL, 403, 0, 0),
	(69, NULL, 404, 0, 0),
	(69, NULL, 405, 0, 0),
	(69, NULL, 406, 0, 0),
	(70, NULL, 12, 0, 0),
	(70, NULL, 388, 0, 0),
	(70, NULL, 400, 0, 0),
	(70, NULL, 401, 0, 0),
	(70, NULL, 402, 0, 0),
	(70, NULL, 403, 0, 0),
	(70, NULL, 404, 0, 0),
	(70, NULL, 405, 0, 0),
	(70, NULL, 406, 0, 0),
	(71, NULL, 12, 0, 0),
	(71, NULL, 255, 0, 0),
	(71, NULL, 256, 1, 1),
	(71, NULL, 257, 0, 1),
	(71, NULL, 258, 0, 1),
	(71, NULL, 259, 0, 1),
	(71, NULL, 388, 0, 0),
	(71, NULL, 400, 0, 0),
	(71, NULL, 401, 0, 0),
	(71, NULL, 402, 0, 0),
	(71, NULL, 403, 0, 0),
	(71, NULL, 404, 0, 0),
	(71, NULL, 405, 0, 0),
	(71, NULL, 406, 0, 0),
	(72, NULL, 12, 0, 0),
	(72, NULL, 388, 0, 0),
	(72, NULL, 400, 0, 0),
	(72, NULL, 401, 0, 0),
	(72, NULL, 402, 0, 0),
	(72, NULL, 403, 0, 0),
	(72, NULL, 404, 0, 0),
	(72, NULL, 405, 0, 0),
	(72, NULL, 406, 0, 0),
	(73, NULL, 12, 0, 0),
	(73, NULL, 388, 0, 0),
	(73, NULL, 400, 0, 0),
	(73, NULL, 401, 0, 0),
	(73, NULL, 402, 0, 0),
	(73, NULL, 403, 0, 0),
	(73, NULL, 404, 0, 0),
	(73, NULL, 405, 0, 0),
	(73, NULL, 406, 0, 0),
	(74, NULL, 12, 0, 0),
	(74, NULL, 388, 0, 0),
	(74, NULL, 400, 0, 0),
	(74, NULL, 401, 0, 0),
	(74, NULL, 402, 0, 0),
	(74, NULL, 403, 0, 0),
	(74, NULL, 404, 0, 0),
	(74, NULL, 405, 0, 0),
	(74, NULL, 406, 0, 0),
	(75, NULL, 260, 1, 1),
	(75, NULL, 261, 0, 1),
	(75, NULL, 262, 0, 1),
	(75, NULL, 263, 0, 1),
	(75, NULL, 264, 0, 1),
	(75, NULL, 265, 0, 1),
	(75, NULL, 267, 0, 1),
	(75, NULL, 268, 0, 1),
	(75, NULL, 269, 0, 1),
	(75, NULL, 270, 0, 1),
	(75, NULL, 271, 0, 1),
	(75, NULL, 272, 0, 1),
	(75, NULL, 273, 0, 1),
	(75, NULL, 274, 0, 1),
	(75, NULL, 275, 0, 1),
	(75, NULL, 276, 0, 1),
	(75, NULL, 277, 0, 2),
	(75, NULL, 278, 0, 2),
	(75, NULL, 279, 0, 2),
	(75, NULL, 280, 0, 2),
	(75, NULL, 281, 0, 2),
	(75, NULL, 282, 0, 2),
	(75, NULL, 283, 0, 2),
	(75, NULL, 284, 0, 2),
	(75, NULL, 285, 0, 2),
	(75, NULL, 286, 0, 2),
	(75, NULL, 287, 0, 2),
	(75, NULL, 288, 0, 2),
	(75, NULL, 289, 0, 2),
	(75, NULL, 291, 0, 2),
	(75, NULL, 292, 0, 2),
	(75, NULL, 293, 0, 2),
	(75, NULL, 294, 0, 2),
	(75, NULL, 295, 0, 2),
	(75, NULL, 298, 0, 3),
	(75, NULL, 299, 0, 3),
	(75, NULL, 300, 0, 3),
	(75, NULL, 301, 0, 3),
	(75, NULL, 302, 0, 3),
	(75, NULL, 303, 0, 3),
	(75, NULL, 304, 0, 3),
	(75, NULL, 305, 0, 3),
	(75, NULL, 306, 0, 3),
	(75, NULL, 307, 0, 3),
	(75, NULL, 308, 0, 3),
	(75, NULL, 309, 0, 3),
	(75, NULL, 310, 0, 3),
	(75, NULL, 311, 0, 3),
	(75, NULL, 312, 0, 3),
	(75, NULL, 313, 0, 3),
	(75, NULL, 314, 0, 3),
	(75, NULL, 315, 1, 4),
	(75, NULL, 316, 0, 4),
	(75, NULL, 317, 0, 4),
	(75, NULL, 318, 0, 4),
	(75, NULL, 319, 0, 4),
	(75, NULL, 320, 0, 4),
	(75, NULL, 321, 0, 4),
	(75, NULL, 322, 0, 4),
	(75, NULL, 323, 0, 4),
	(75, NULL, 324, 0, 4),
	(75, NULL, 325, 0, 4),
	(75, NULL, 326, 0, 4),
	(75, NULL, 327, 0, 4),
	(75, NULL, 328, 1, 5),
	(75, NULL, 329, 0, 5),
	(75, NULL, 330, 0, 5),
	(75, NULL, 331, 0, 5),
	(75, NULL, 332, 1, 6),
	(75, NULL, 333, 0, 6),
	(75, NULL, 334, 0, 6),
	(75, NULL, 335, 0, 6),
	(75, NULL, 336, 0, 6),
	(75, NULL, 337, 0, 6),
	(75, NULL, 338, 1, 7),
	(75, NULL, 339, 0, 7),
	(75, NULL, 340, 1, 8),
	(75, NULL, 341, 0, 8),
	(75, NULL, 342, 0, 8),
	(75, NULL, 343, 0, 8),
	(75, NULL, 344, 0, 8),
	(75, NULL, 345, 1, 9),
	(75, NULL, 346, 0, 9),
	(75, NULL, 347, 0, 9),
	(75, NULL, 348, 0, 9),
	(75, NULL, 349, 0, 9),
	(75, NULL, 350, 1, 2),
	(75, NULL, 351, 1, 3),
	(75, NULL, 352, 0, 1),
	(75, NULL, 353, 0, 7),
	(75, NULL, 354, 0, 5),
	(75, NULL, 400, 0, 0),
	(75, NULL, 401, 0, 0),
	(75, NULL, 402, 0, 0),
	(75, NULL, 403, 0, 0),
	(75, NULL, 404, 0, 0),
	(75, NULL, 405, 0, 0),
	(75, NULL, 406, 0, 0),
	(76, NULL, 12, 0, 0),
	(76, NULL, 256, 1, 1),
	(76, NULL, 257, 0, 1),
	(76, NULL, 258, 0, 1),
	(76, NULL, 259, 0, 1),
	(76, NULL, 388, 0, 0),
	(76, NULL, 400, 0, 0),
	(76, NULL, 401, 0, 0),
	(76, NULL, 402, 0, 0),
	(76, NULL, 403, 0, 0),
	(76, NULL, 404, 0, 0),
	(76, NULL, 405, 0, 0),
	(76, NULL, 406, 0, 0),
	(77, NULL, 12, 0, 0),
	(77, NULL, 388, 0, 0),
	(77, NULL, 400, 0, 0),
	(77, NULL, 401, 0, 0),
	(77, NULL, 402, 0, 0),
	(77, NULL, 403, 0, 0),
	(77, NULL, 404, 0, 0),
	(77, NULL, 405, 0, 0),
	(77, NULL, 406, 0, 0),
	(78, NULL, 12, 0, 0),
	(78, NULL, 13, 0, 0),
	(78, NULL, 15, 1, 1),
	(78, NULL, 52, 0, 2),
	(78, NULL, 59, 1, 2),
	(78, NULL, 68, 0, 1),
	(78, NULL, 362, 1, 3),
	(78, NULL, 389, 1, 4),
	(78, NULL, 390, 0, 4),
	(78, NULL, 391, 0, 3),
	(78, NULL, 392, 0, 0),
	(78, NULL, 393, 0, 0),
	(78, NULL, 394, 0, 0),
	(80, NULL, 363, 0, 0),
	(80, NULL, 364, 0, 0),
	(80, NULL, 365, 0, 0),
	(80, NULL, 366, 0, 0),
	(80, NULL, 367, 0, 0),
	(80, NULL, 368, 0, 0),
	(80, NULL, 376, 1, 1),
	(80, NULL, 377, 0, 1),
	(80, NULL, 378, 0, 0),
	(80, NULL, 380, 0, 0),
	(80, NULL, 381, 0, 0),
	(80, NULL, 382, 0, 1),
	(82, NULL, 12, 1, 3),
	(82, NULL, 22, 0, 2),
	(82, NULL, 24, 1, 2),
	(82, NULL, 26, 1, 1),
	(82, 1, 44, 1, 0),
	(82, NULL, 66, 0, 2),
	(83, NULL, 12, 1, 3),
	(83, NULL, 22, 0, 2),
	(83, NULL, 24, 1, 2),
	(83, NULL, 26, 1, 1),
	(83, 1, 44, 1, 0),
	(83, NULL, 66, 0, 2),
	(84, NULL, 12, 1, 3),
	(84, NULL, 22, 0, 2),
	(84, NULL, 24, 1, 2),
	(84, NULL, 26, 1, 1),
	(84, 1, 44, 1, 0),
	(84, NULL, 66, 0, 2);

SET FOREIGN_KEY_CHECKS=1;
