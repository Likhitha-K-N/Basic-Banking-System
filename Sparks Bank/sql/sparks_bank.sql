
SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";




CREATE TABLE `transaction` (
  `sno` int(3) NOT NULL,
  `sender` text NOT NULL,
  `receiver` text NOT NULL,
  `balance` int(8) NOT NULL,
  `datetime` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


CREATE TABLE `users` (
  `id` int(3) NOT NULL,
  `name` text NOT NULL,
  `email` varchar(30) NOT NULL,
  `balance` int(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;



INSERT INTO `users` (`id`, `name`, `email`, `balance`) VALUES
(1, 'Nisarga', 'nishu@gmail.com', 50000),
(2, 'Kavya', 'kavya@gmail.com', 30000),
(3, 'Brunda', 'bru@gmail.com', 40000),
(4, 'Chandana', 'chandu@gmail.com', 50000),
(5, 'Nandini', 'nandu@gmail.com', 40000),
(6, 'Deekshitha', 'deekshi@gmail.com', 30000),
(7, 'Deepika', 'reddy@gmail.com', 50000),
(8, 'Tejas', 'tej@gmail.com', 80000),
(9, 'Anil', 'anil@gmail.com', 30000),
(10, 'Asha', 'asha@gmail.com', 50000);


ALTER TABLE `transaction`
  ADD PRIMARY KEY (`sno`);


ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);


ALTER TABLE `transaction`
  MODIFY `sno` int(3) NOT NULL AUTO_INCREMENT;


ALTER TABLE `users`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT;
COMMIT;
