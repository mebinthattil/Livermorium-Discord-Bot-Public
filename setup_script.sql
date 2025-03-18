CREATE DATABASE IF NOT EXISTS `livermorium-discord-bot`;
USE `livermorium-discord-bot`;
CREATE TABLE attendance_tracker(
	userID BIGINT UNSIGNED PRIMARY KEY,
    attendance_time LONGTEXT,
    attendance_counter INT DEFAULT 0
);
CREATE TABLE user_data(
	userID BIGINT UNSIGNED PRIMARY KEY,
    username varchar(45) NOT NULL
);


INSERT INTO attendance_tracker	
VALUES
(862890206054580244, "2025-01-12 18:40:11.217140", 1),
(1247531982846689401, "2025-01-11 18:55:03.169992,2025-01-12 18:40:52.041273", 2);

INSERT INTO user_data	
VALUES
(862890206054580244,"samurai_scholar"),
(1247531982846689401,"meb_t");

 


