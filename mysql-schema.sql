CREATE database davidwang456;
use davidwang456;

DROP TABLE IF EXISTS  student;
CREATE TABLE `student` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(100) DEFAULT NULL,
  `last_name` varchar(100) DEFAULT NULL,
  `age` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO `student` (`id`, `first_name`, `last_name`, `age`) VALUES (1, 'wang1', 'david1', 21);
INSERT INTO `student` (`id`, `first_name`, `last_name`, `age`) VALUES (2, 'wang2', 'david2', 22);
INSERT INTO `student` (`id`, `first_name`, `last_name`, `age`) VALUES (3, 'wang3', 'david3', 23);
INSERT INTO `student` (`id`, `first_name`, `last_name`, `age`) VALUES (4, 'wang4', 'david4', 24);
INSERT INTO `student` (`id`, `first_name`, `last_name`, `age`) VALUES (5, 'wang5', 'david5', 25);
INSERT INTO `student` (`id`, `first_name`, `last_name`, `age`) VALUES (6, 'wang6', 'david6', 26);
INSERT INTO `student` (`id`, `first_name`, `last_name`, `age`) VALUES (7, 'wang7', 'david7', 27);
INSERT INTO `student` (`id`, `first_name`, `last_name`, `age`) VALUES (8, 'wang8', 'david8', 28);