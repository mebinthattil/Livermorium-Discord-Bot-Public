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



CREATE TABLE IF NOT EXISTS week1 (
    DAY VARCHAR(3),
    BREAKFAST VARCHAR(255),
    LUNCH VARCHAR(255),
    SNACKS VARCHAR(255),
    DINNER VARCHAR(255)
);

INSERT INTO week1 (DAY, BREAKFAST, LUNCH, SNACKS, DINNER) VALUES
('SUN', 'Masala Dosa, Sambar, Chutney, Tea/Coffee', 'Green Peas Pulao, Chappathi, Noodles, Tea/Coffee', 'Tea/Coffee', 'Mini Feast'),
('MON', 'Idly-Vada, Sambar, Chutney, Tea/Coffee', 'Dal, Aloo Mutter, Rice, Dal, Green Sambar, Butter Milk, Pickle', '**Samosa** and Tea/Coffee', 'Dum Rice, Sambhar, Mix-Veg, Chappathi, Dal, Sabji, Curd, Pickle'),
('TUE', 'Puri, Sagu, Rice Bath, Milk/Tea/Coffee', 'Pallaya, Fulka, _Chana Masala_, Rice, Rasam, Curd Rice, Papad, Pickle', '_Pav Bhaji_', 'Egg Fried Rice, Veg Manchurian'),
('WED', 'Aloo Paratha, Curd, Pickle, Milk/Tea/Coffee', 'Veg Pulao, Chapati, Dal Makhani, Soyabeen Masala, Dal, Sambar, Raita, Pickle', 'Bread Pakoda', '**Chicken Curry**, _Paneer_, Dal, Rice'),
('THU', 'Set Dosa, Lemon Rice, Chutney, Milk/Tea/Coffee', 'Aloo Mutter Capsicum, Veg Pulao, Rice, Dal, Rasam, Butter Milk, Pickle','Susla/Poha, Tea/Coffee','Manchurian, **Egg Curry**, Rice, Dal'),
('FRI', 'Rava Idly, Sagu, Chutney, Milk/Tea/Coffee', 'Padina Green Peas Pulao, Masala Pulao, Palya, Rice, Green Sambar, Pickle', 'Pasta', '**Chicken Curry**,Paneer Butter Masala, Tomato Rice, Dal Tadka'),
('SAT', 'Onion Dosa, Sagu, Chutney, Tea/Coffee, Milk', 'Puri, Veg Sagu, Rice, Sambhar, Lemon Rice, Dal, Butter Milk, Pickle', 'Masala Vada', 'Fulka, Fruit Salad, Aloo Matar, Rice, Dal, Rasam, Pickle');




CREATE TABLE IF NOT EXISTS week2 (
    DAY VARCHAR(3),
    BREAKFAST VARCHAR(255),
    LUNCH VARCHAR(255),
    SNACKS VARCHAR(255),
    DINNER VARCHAR(255)
);

INSERT INTO week2 (DAY, BREAKFAST, LUNCH, SNACKS, DINNER) VALUES
('SUN', 'Idly-Vada, Sambar, Chutney, Tea/Coffee', 'Chana Masala, Rice, Pulao, Roti, Dal, Pickle', 'Kachori', '**Hyderabadi Chicken Biryani also veg**, Raita, Panner'),
('MON', 'Puri, Sagu, Rice Bath, Milk/Tea/Coffee', ' **Mushroom Matar** _chi chi_, Palak Rice, Fulka, Pickle, Rice, Dal', 'Kachori', 'Aloo Bhindi ,Dal , Rice, Pickle'),
('TUE', 'Set Dosa, Lemon Rice, Chutney, Milk/Tea/Coffee', 'Corn Sabaji _fine fine_, Dal, Sambar, chapati', 'Veg Puff', 'Manchurian, **Egg Curry**, Dal, Rice, Chapathi, Pickle'),
('WED', '**Idli Sambhar chutney chutney**,Tomato Rice, Sambar, Tea/Coffee', 'Aloo Gobi Mutter, Tomato Rice, Palak Dal, Veg Biryani, Raita, Pickle', 'Mirchi Bajji', '**Chicken Curry**, **Manchurian**,Dal, Rice, Roti, Pickle'),
('THU', 'Pav Bhaji, Rajma, Lemon Rice, Milk/Tea/Coffee', 'Rajma, Dal Tadka, Rice, Sambhar, Butter Milk, Pickle', 'Noodles', 'Chappathi, Chana Masala, Rice, Dal, Pickle'),
('FRI', 'Aloo Paratha, Curd, Pickle, Tea/Coffee', 'Aloo Palak, Dal, Rice, Sambhar, Pickle', 'Pani Purii, Tea/Coffee', '**Chicken Curry**, Panner, Rice, Dal, Sambhar, Pickle'),
('SAT', 'Masala Dosa, Rice, Sambar, Chutney, Rasam, Pickle', 'Black Chana, Chappathi, Dal, Rice, Rasam, Pickle', 'Biscuits', 'Egg Bhurji, Manchurian, Tomato Rice, Dal, Roti, Pickle');




CREATE TABLE IF NOT EXISTS week3 (
    DAY VARCHAR(3),
    BREAKFAST VARCHAR(255),
    LUNCH VARCHAR(255),
    SNACKS VARCHAR(255),
    DINNER VARCHAR(255)
);

INSERT INTO week3 (DAY, BREAKFAST, LUNCH, SNACKS, DINNER) VALUES
('SUN', 'Chole Bhature, Sevige Bath, Chutney, Milk/Tea/Coffee', 'Aloo Palya, Dal Rice, Sambhar, Veg Pulao, Pickle', 'Bhel Puri', 'Mini Feast'),
('MON', 'Idly-Vada, Sambhar, Chutney, Tea/Coffee', 'Mushroom Green Peas, Palak Dal, Coconut Rice, Rice, Sambhar, Butter Milk, Pickle', 'Pasta', 'Paneer, Chappathi, Dal, Egg Curry, Rice, Pickle'),
('TUE', 'Methi Dal Paratha, kesari bath _sweet sweet_, Sagu, Chutney, Milk/Tea/Coffee', 'Bonda', 'Egg Currey, Kofta Currey, Rice, Curd, Pickle'),
('WED', 'Masala Dosa, Chutney, Sambhar, Milk/Tea/Coffee', 'Black Chana, Pickle, Veg Curry, Raita, Pickle', 'Noodles, Tea/Coffee', 'Butter Chicken, Panner, Dal, Rice, Pickle'),
('THU', 'Idli Sambhar, Kitchadi Bath, Tea/Coffee, Milk', 'Potato Gobi masala Subji, Tomato Rice, Dal Palak, Sagu, Pickle', 'Vada Pav', 'Egg Curry, Chana Masala, Dal, Rice, Pickle'),
('FRI', 'Veg Roll, Rice Bath, Chutney, Milk/Tea/Coffee', 'Soyabeen Matter **Chi Chi**, Palya, Dal, Sambhar, Rasam, Curd, Pickle', 'Samosa', 'Chicken Curry, Panner, Pickle'),
('SAT', 'Puri Sabji, Chutney, Milk/Tea/Coffee', 'Rajma Masala, Lemon Rice, Veg Curry, Pickle', 'Veg Puff','Manchurian , Rice, Dal, Sambhar, Pickle');




CREATE TABLE IF NOT EXISTS week4 (
    DAY VARCHAR(3),
    BREAKFAST VARCHAR(255),
    LUNCH VARCHAR(255),
    SNACKS VARCHAR(255),
    DINNER VARCHAR(255)
);

INSERT INTO week4 (DAY, BREAKFAST, LUNCH, SNACKS, DINNER) VALUES
('SUN', 'Onion Dosa, Sagu, Chutney, Sambhar, Tea/Coffee', 'Palak Black Chana, Dal, Rice, Sambhar, Pickle', 'Banana Bajji', 'Hyderabadi Chicken Biryani and Veg Biryani, Roti, Dal, Rice, Pickle'),
('MON', 'Idly-Vada, Sambhar, Chutney, Milk/Tea/Coffee', 'Mutter Mushroom, Dal Makhani, Rice, Butter Milk, Pickle', 'Noodles', 'Chappathi, Chana Masala, Dal, Veg Curry, Rice, Pickle'),
('TUE', 'Aloo Paratha, Curd, Lemon Rice, Pickle, Tea/Coffee', 'Rajma Rice, Dal, Sambhar, Dum Aloo, Pickle', 'Poha/Susla, chai', 'Egg Curry, Aloo Bhindi, Dal Palak, Sweet Corn Curry, Rice, Pickle'),
('WED', 'Plain Dosa, Chutney, Kesari Bath, Sambhar, Milk/Tea/Coffee', 'Aloo Methi Masala, Veg Pulao, Rice, Dal, Sambhar, Pickle', 'Pani Puri', 'Chicken Curry, Panner, Veg Fried Rice, Dal Makhani, Pickle'),
('THU', 'Puri, sabaji Tea/Coffee, Milk', 'Veg Kohlapuri, Dal Tadka Rice, Butter Milk, Pickle', 'Mirchi Bajji', 'Egg Bhurji, Aloo Bujia(unfried french fries),Dal, Rice'),
('FRI', 'Braed Omlet, and jam bread, Tea/Coffee, Milk', 'Soyebean sabaji _chi chi_, rice, Sambhar, Dal Palak, Pickle', 'Maggi', 'Chicken Curry, Panner Curry, Rice, Dal, Pickle'),
('SAT', 'Idly, Sambhar, Chutney, Tomato Rice, Milk/Tea/Coffee', 'Palak Puri, Dal, Rice, Sambhar, Pickle', 'Bread Jam, Tea/Coffee', 'Baigan sabaji, Kadi Pakoda, Tomato Rice, Bhindi Fry, Pickle');



CREATE TABLE IF NOT EXISTS tracker(
    start_date TEXT,
    end_date TEXT,
    week TEXT
);

INSERT INTO tracker(start_date, end_date, week) VALUES
('2025-03-23','2025-03-29','week2');



CREATE TABLE IF NOT EXISTS not_taken(
    given_d TEXT,
    taken_d TEXT,
    userID BIGINT,
    username TEXT
);