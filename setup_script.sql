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

-- Create the 'week1' table
CREATE TABLE IF NOT EXISTS week1 (
    DAY VARCHAR(3),
    BREAKFAST VARCHAR(255),
    LUNCH VARCHAR(255),
    SNACKS VARCHAR(255),
    DINNER VARCHAR(255)
);

-- -- Insert data into the 'week1' table
INSERT INTO week1 (DAY, BREAKFAST, LUNCH, SNACKS, DINNER) VALUES
('SUN', 'Masala Dosa, Sambar, Chutney, Tea/Coffee', 'Green Peas Pulao, Chappathi, Noodles, Tea/Coffee', 'Tea/Coffee', 'Mini Feast'),
('MON', 'Idly-Vada, Sambar, Chutney, Tea/Coffee', 'Palak Dal, Aloo Mutter, Rice, Dal, Green Sambar, Butter Milk, Pickle', 'Tea/Coffee', 'Rice, Sambhar, Chappathi, Dal, Sabji, Curd, Pickle'),
('TUE', 'Poha, Upma, Bath, Milk/Tea/Coffee', 'Rajma Chawal, Rice, Rasam, Curd, Papad, Pickle', 'Veg Puff', 'Egg Fried Rice, Veg Manchurian'),
('WED', 'Aloo Paratha, Curd, Pickle, Milk/Tea/Coffee', 'Veg Biryani, Chappathi, Dal, Rice, Raita, Pickle', 'Bread Pakoda', 'Chicken Curry, Dal, Rice'),
('THU', 'Set Dosa, Lemon Rice, Chutney, Milk/Tea/Coffee', 'Aloo Mutter Capsicum, Veg Pulao, Rice, Dal, Rasam, Butter Milk, Pickle', 'Sooka Poha', 'Vegetable Fried Rice, Dal Makhani'),
('FRI', 'Rava Idly, Sagu, Chutney, Milk/Tea/Coffee', 'Padina Green Peas Pulao, Masala Pulao, Palya, Rice, Green Sambar, Pickle', 'Pasta', 'Paneer Butter Masala, Tomato Rice, Dal Tadka'),
('SAT', 'Onion Dosa, Sagu, Chutney, Tea/Coffee, Milk', 'Palak Veg, Rice, Sambhar, Lemon Rice, Dal, Butter Milk, Pickle', 'Masala Vada', 'Fish Fry, Aloo Palak, Rice, Dal, Rasam, Pickle');

-- Create the 'week2' table
CREATE TABLE IF NOT EXISTS week2 (
    DAY VARCHAR(3),
    BREAKFAST VARCHAR(255),
    LUNCH VARCHAR(255),
    SNACKS VARCHAR(255),
    DINNER VARCHAR(255)
);

-- Insert data into the 'week2' table
INSERT INTO week2 (DAY, BREAKFAST, LUNCH, SNACKS, DINNER) VALUES
('SUN', 'Idly-Vada, Sambar, Chutney, Tea/Coffee', 'Chana Masala, Rice, Pulao, Roti, Dal, Pickle', 'Lemon Rice', 'Hyderabadi Veg Biryani, Raita, Mirchi Ka Salan'),
('MON', 'Upma, Sambar, Tea/Coffee, Milk', 'Rajma Chawal, Rice, Dal, Palak Paneer, Pickle', 'Kachori', 'Mushroom Mutter Masala, Dal Makhani, Rice, Pickle'),
('TUE', 'Sagu, Rice Bath, Chutney, Milk/Tea/Coffee', 'Makki Di Roti, Sarson Ka Saag, Choley, Dal, Sambar', 'Veg Puff', 'Sweet Corn Curry, Dal, Rice, Chapathi, Pickle'),
('WED', 'Tomato Rice, Sambar, Chutney, Tea/Coffee', 'Aloo Mutter, Tomato Rice, Palak Dal, Veg Biryani, Raita, Pickle', 'Mathi Rajma', 'Aloo Gobi Curry, Dal, Rice, Roti, Pickle'),
('THU', 'Poha, Rajma, Lemon Rice, Milk/Tea/Coffee', 'Dal Tadka, Palak Paneer, Rice, Sambhar, Butter Milk, Pickle', 'Noodles', 'Chappathi, Chana Masala, Rice, Dal, Pickle'),
('FRI', 'Aloo Paratha, Curd, Pickle, Tea/Coffee', 'Dal Palak, Carrot Rice, Rice, Sambhar, Pickle', 'Tea/Coffee', 'Chicken Curry, Rice, Dal, Sambhar, Pickle'),
('SAT', 'Dosa, Rice, Sambar, Chutney, Rasam, Pickle', 'Aloo Gobi, Chappathi, Dal, Rice, Rasam, Pickle', 'Cornflakes', 'Tomato Rice, Dal, Roti, Bhindi Fry, Pickle');

-- Create the 'week3' table
CREATE TABLE IF NOT EXISTS week3 (
    DAY VARCHAR(3),
    BREAKFAST VARCHAR(255),
    LUNCH VARCHAR(255),
    SNACKS VARCHAR(255),
    DINNER VARCHAR(255)
);

-- Insert data into the 'week3' table
INSERT INTO week3 (DAY, BREAKFAST, LUNCH, SNACKS, DINNER) VALUES
('SUN', 'Chole Bhature, Sevige Bath, Chutney, Milk/Tea/Coffee', 'Dal Rice, Sambhar, Veg Pulao, Aloo Palya, Pickle', 'Jhal Muri', 'Mini Feast'),
('MON', 'Idly-Vada, Sambhar, Chutney, Tea/Coffee', 'Palak Dal, Coconut Rice, Rice, Sambhar, Butter Milk, Pickle', 'Pasta', 'Chappathi, Dal, Egg Curry, Rice, Pickle'),
('TUE', 'Methi Dal Paratha, Sagu, Chutney, Milk/Tea/Coffee', 'Bread Pakoda, Rice, Sambhar, Butter Milk, Pickle', 'Chowmein', 'Dal Egg Fry, Rice, Curd, Pickle'),
('WED', 'Masala Dosa, Chutney, Sambhar, Milk/Tea/Coffee', 'Dal Rice, Rajma, Pickle, Veg Curry, Raita, Pickle', 'Tea/Coffee', 'Chappathi, Sagu, Dal, Rice, Pickle'),
('THU', 'Idli Sambhar, Kitchadi Bath, Tea/Coffee, Milk', 'Tomato Rice, Dal Palak, Sagu, Maggi Masala, Pickle', 'Vada Pav', 'Chicken Curry, Dal, Rice, Pickle'),
('FRI', 'Veg Roll, Rice Bath, Chutney, Milk/Tea/Coffee', 'Rajma Chawal, Palya, Dal, Sambhar, Rasam, Curd, Pickle', 'Sev Puri', 'Veg Biryani, Raita, Pickle'),
('SAT', 'Poha, Sagu Pongal, Chutney, Milk/Tea/Coffee', 'Dal, Sambhar, Lemon Rice, Veg Curry, Pickle', 'Tea/Coffee', 'Tomato Rice, Dal, Sambhar, Pickle');

-- Create the 'week4' table
CREATE TABLE IF NOT EXISTS week4 (
    DAY VARCHAR(3),
    BREAKFAST VARCHAR(255),
    LUNCH VARCHAR(255),
    SNACKS VARCHAR(255),
    DINNER VARCHAR(255)
);

-- Insert data into the 'week4' table
INSERT INTO week4 (DAY, BREAKFAST, LUNCH, SNACKS, DINNER) VALUES
('SUN', 'Dosa, Sagu, Chutney, Sambhar, Tea/Coffee', 'Palak Black Chana, Dal, Rice, Sambhar, Pickle', 'Banana Bajji', 'Roti, Dal, Baingan Bharta, Rice, Pickle'),
('MON', 'Idly-Vada, Sambhar, Chutney, Milk/Tea/Coffee', 'Mutter Mushroom, Dal Makhani, Rice, Butter Milk, Pickle', 'Noodles', 'Chappathi, Dal, Veg Curry, Rice, Pickle'),
('TUE', 'Aloo Paratha, Curd, Lemon Rice, Pickle, Tea/Coffee', 'Rajma Rice, Dal, Sambhar, Dum Aloo, Pickle', 'Fruit Chat', 'Dal Palak, Sweet Corn Curry, Rice, Pickle'),
('WED', 'Poha, Chutney, Sambhar, Milk/Tea/Coffee', 'Kadhi, Veg Pulao, Rice, Dal, Sambhar, Pickle', 'Pani Puri', 'Veg Fried Rice, Dal Makhani, Pickle'),
('THU', 'Upma, Kesaribath, Roti, Tea/Coffee, Milk', 'Dal Tadka, Palak Paneer, Rice, Butter Milk, Pickle', 'Maggi', 'Chappathi, Dal, Gobi Manchurian, Rice'),
('FRI', 'Idly, Sambhar, Chutney, Tomato Rice, Milk/Tea/Coffee', 'Veg Roll, Rice, Sambhar, Dal Palak, Pickle', 'Sago', 'Chicken Curry, Rice, Dal, Pickle'),
('SAT', 'Sambhar, Tomato Rice, Chutney, Milk/Tea/Coffee', 'Veg Pulao, Chappathi, Dal, Rice, Sambhar, Pickle', 'Tea/Coffee', 'Dal, Tomato Rice, Bhindi Fry, Pickle');

CREATE TABLE tracker(
    start_date TEXT,
    end_date TEXT,
    week TEXT
);

INSERT INTO tracker(start_date, end_date, week) VALUES
('2025-03-23','2025-03-29','week2');

CREATE TABLE IF NOT EXISTS not_taken(
    given_d TEXT,
    take_d TEXT,
    userID BIGINT
);

INSERT INTO not_taken (given_d,take_d,userID) VALUES
('2025-05-03','2025-05-04',862890206054580244);