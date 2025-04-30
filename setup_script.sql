CREATE DATABASE IF NOT EXISTS `livermorium-discord-bot`;
USE `livermorium-discord-bot`;
-- CREATE TABLE attendance_tracker(
-- 	userID BIGINT UNSIGNED PRIMARY KEY,
--     attendance_time LONGTEXT,
--     attendance_counter INT DEFAULT 0
-- );
-- CREATE TABLE user_data(
-- 	userID BIGINT UNSIGNED PRIMARY KEY,
--     username varchar(45) NOT NULL
-- );

-- INSERT INTO attendance_tracker	
-- VALUES
-- (862890206054580244, "2025-01-12 18:40:11.217140", 1),
-- (1247531982846689401, "2025-01-11 18:55:03.169992,2025-01-12 18:40:52.041273", 2);

-- INSERT INTO user_data	
-- VALUES
-- (862890206054580244,"samurai_scholar"),
-- (1247531982846689401,"meb_t");

-- Create the 'week1' table
-- CREATE TABLE week1 (
--     DAY VARCHAR(3),
--     BREAKFAST VARCHAR(255),
--     LUNCH VARCHAR(255),
--     SNACKS VARCHAR(255),
--     DINNER VARCHAR(255)
-- );

-- -- Insert data into the 'week1' table
-- INSERT INTO week1 (DAY, BREAKFAST, LUNCH, SNACKS, DINNER) VALUES
-- ('SUN', 'Masala Dosa, Sambar, Chutney, Tea/Coffee', 'Green Peas Pulao, Chappathi, Noodles, Tea/Coffee', 'Tea/Coffee', 'Mini Feast'),
-- ('MON', 'Idly-Vada, Sambar, Chutney, Tea/Coffee', 'Palak Dal, Aloo Mutter, Rice, Dal, Green Sambar, Butter Milk, Pickle', 'Tea/Coffee', 'Rice, Sambhar, Chappathi, Dal, Sabji, Curd, Pickle'),
-- ('TUE', 'Poha, Upma, Bath, Milk/Tea/Coffee', 'Rajma Chawal, Rice, Rasam, Curd, Papad, Pickle', 'Veg Puff', 'Egg Fried Rice, Veg Manchurian'),
-- ('WED', 'Aloo Paratha, Curd, Pickle, Milk/Tea/Coffee', 'Veg Biryani, Chappathi, Dal, Rice, Raita, Pickle', 'Bread Pakoda', 'Chicken Curry, Dal, Rice'),
-- ('THU', 'Set Dosa, Lemon Rice, Chutney, Milk/Tea/Coffee', 'Aloo Mutter Capsicum, Veg Pulao, Rice, Dal, Rasam, Butter Milk, Pickle', 'Sooka Poha', 'Vegetable Fried Rice, Dal Makhani'),
-- ('FRI', 'Rava Idly, Sagu, Chutney, Milk/Tea/Coffee', 'Padina Green Peas Pulao, Masala Pulao, Palya, Rice, Green Sambar, Pickle', 'Pasta', 'Paneer Butter Masala, Tomato Rice, Dal Tadka'),
-- ('SAT', 'Onion Dosa, Sagu, Chutney, Tea/Coffee, Milk', 'Palak Veg, Rice, Sambhar, Lemon Rice, Dal, Butter Milk, Pickle', 'Masala Vada', 'Fish Fry, Aloo Palak, Rice, Dal, Rasam, Pickle');

-- Create the 'week2' table
-- CREATE TABLE IF NOT EXISTS week2 (
--     DAY VARCHAR(3),
--     BREAKFAST VARCHAR(255),
--     LUNCH VARCHAR(255),
--     SNACKS VARCHAR(255),
--     DINNER VARCHAR(255)
-- );

-- -- Insert data into the 'week2' table
-- INSERT INTO week2 (DAY, BREAKFAST, LUNCH, SNACKS, DINNER) VALUES
-- ('SUN', 'Idly-Vada, Sambar, Chutney, Tea/Coffee', 'Chana Masala, Rice, Pulao, Roti, Dal, Pickle', 'Lemon Rice', 'Hyderabadi Veg Biryani, Raita, Mirchi Ka Salan'),
-- ('MON', 'Upma, Sambar, Tea/Coffee, Milk', 'Rajma Chawal, Rice, Dal, Palak Paneer, Pickle', 'Kachori', 'Mushroom Mutter Masala, Dal Makhani, Rice, Pickle'),
-- ('TUE', 'Sagu, Rice Bath, Chutney, Milk/Tea/Coffee', 'Makki Di Roti, Sarson Ka Saag, Choley, Dal, Sambar', 'Veg Puff', 'Sweet Corn Curry, Dal, Rice, Chapathi, Pickle'),
-- ('WED', 'Tomato Rice, Sambar, Chutney, Tea/Coffee', 'Aloo Mutter, Tomato Rice, Palak Dal, Veg Biryani, Raita, Pickle', 'Mathi Rajma', 'Aloo Gobi Curry, Dal, Rice, Roti, Pickle'),
-- ('THU', 'Poha, Rajma, Lemon Rice, Milk/Tea/Coffee', 'Dal Tadka, Palak Paneer, Rice, Sambhar, Butter Milk, Pickle', 'Noodles', 'Chappathi, Chana Masala, Rice, Dal, Pickle'),
-- ('FRI', 'Aloo Paratha, Curd, Pickle, Tea/Coffee', 'Dal Palak, Carrot Rice, Rice, Sambhar, Pickle', 'Tea/Coffee', 'Chicken Curry, Rice, Dal, Sambhar, Pickle'),
-- ('SAT', 'Dosa, Rice, Sambar, Chutney, Rasam, Pickle', 'Aloo Gobi, Chappathi, Dal, Rice, Rasam, Pickle', 'Cornflakes', 'Tomato Rice, Dal, Roti, Bhindi Fry, Pickle');

-- Create the 'week3' table
CREATE TABLE week3 (
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

-- -- Create the 'week4' table
-- CREATE TABLE week4 (
--     DAY VARCHAR(3),
--     BREAKFAST VARCHAR(255),
--     LUNCH VARCHAR(255),
--     SNACKS VARCHAR(255),
--     DINNER VARCHAR(255)
-- );

-- -- Insert data into the 'week4' table
-- INSERT INTO week4 (DAY, BREAKFAST, LUNCH, SNACKS, DINNER) VALUES
-- ('SUN', 'Dosa, Sagu, Chutney, Sambhar, Tea/Coffee', 'Palak Black Chana, Dal, Rice, Sambhar, Pickle', 'Banana Bajji', 'Roti, Dal, Baingan Bharta, Rice, Pickle'),
-- ('MON', 'Idly-Vada, Sambhar, Chutney, Milk/Tea/Coffee', 'Mutter Mushroom, Dal Makhani, Rice, Butter Milk, Pickle', 'Noodles', 'Chappathi, Dal, Veg Curry, Rice, Pickle'),
-- ('TUE', 'Aloo Paratha, Curd, Lemon Rice, Pickle, Tea/Coffee', 'Rajma Rice, Dal, Sambhar, Dum Aloo, Pickle', 'Fruit Chat', 'Dal Palak, Sweet Corn Curry, Rice, Pickle'),
-- ('WED', 'Poha, Chutney, Sambhar, Milk/Tea/Coffee', 'Kadhi, Veg Pulao, Rice, Dal, Sambhar, Pickle', 'Pani Puri', 'Veg Fried Rice, Dal Makhani, Pickle'),
-- ('THU', 'Upma, Kesaribath, Roti, Tea/Coffee, Milk', 'Dal Tadka, Palak Paneer, Rice, Butter Milk, Pickle', 'Maggi', 'Chappathi, Dal, Gobi Manchurian, Rice'),
-- ('FRI', 'Idly, Sambhar, Chutney, Tomato Rice, Milk/Tea/Coffee', 'Veg Roll, Rice, Sambhar, Dal Palak, Pickle', 'Sago', 'Chicken Curry, Rice, Dal, Pickle'),
-- ('SAT', 'Sambhar, Tomato Rice, Chutney, Milk/Tea/Coffee', 'Veg Pulao, Chappathi, Dal, Rice, Sambhar, Pickle', 'Tea/Coffee', 'Dal, Tomato Rice, Bhindi Fry, Pickle');

-- CREATE TABLE tracker(
--     start_date TEXT,
--     end_date TEXT,
--     week TEXT
-- );

-- DROP TABLE week1,week2,week3,week4;

-- DELETE FROM tracker;

-- CREATE TABLE week1 (
--     day TEXT,
--     breakfast TEXT,
--     lunch TEXT,
--     snacks TEXT,
--     dinner TEXT
-- );
-- 
-- INSERT INTO week1 VALUES 
-- ('SUN', 'Masala Dosa, Sambar, Chutney, Kesari Bath, Tea / Coffee / Milk', 'Green Peas Pulao, Chapati, Black Chana, Cabbage Palya, Rice, Rasam, Pickle', 'Noodles, Tea/Coffee', 'MINI FEAST'),
-- ('MON', 'Idly-Vada, Sambar, Chutney, Tea, Coffee, Milk', 'Puliyogare, Fulka, Aloo Matar, Dal, Green Sambar, Butter Milk, Pickle', 'Samosa, Tea/Coffee', 'Dum Rice, Mix-Veg, Chapati, Palya, Dal, Rice, Rasam, Salad, Pickle'),
-- ('TUE', 'Puri, Sagu, Rice Bath, Milk/Tea/Coffee', 'Chapati, Dal, Fulka, Chana Masala, Rice, Rasam, Curd Rice, Papad, Pickle', 'Pav Bhaji, Tea/Coffee', 'Fulka, Egg Fried Rice, Veg Fried Rice, Dal, Aloo Bindi, Rasam, Rice, Curd, Pickle'),
-- ('WED', 'Aloo Paratha, Curd, Tomato Bath, Pickle, Tea, Coffee, Milk', 'Veg Pulao, Dal Makhani, Soyabean Masala, Dal, Sambar, Raita, Pickle', 'Bread Pakoda, Tea/Coffee', 'Bread Chicken Curry, Jeera Rice, Dal, Pickle, Rice, Rasam, Curd'),
-- ('THU', 'Set Dosa, Lemon Rice, Chutney, Milk/Tea/Coffee', 'Aloo Matar Capsicum, Vangi Bath, Rice, Dal, Rasam, Butter Milk, Pickle', 'Susha/Poha, Tea/Coffee', 'Egg Curry, Veg Manchurian, Jeera Rice, Dal, Rice, Rasam, Pickle'),
-- ('FRI', 'Rava Idly, Sagu, Chutney, Rice Bath, Tea, Coffee, Milk', 'Pudina Green Peas Pulao, Rajma Masala, Fulka, Palya, Rice, Green Sambar, Pickle', 'Pasta, Tea/Coffee', 'Chicken Curry, Palak Paneer, Paratha, Tomato Rice, Rice, Rasam, Aloo, Curd, Pickle'),
-- ('SAT', 'Onion Dosa, Sagu, Chutney, Tea, Coffee, Milk', 'Puri, Veg Sagu, Rice Sambar, Lemon Rice, Dal, Butter Milk, Pickle', 'Masala Vada, Tea/Coffee', 'Fulka, Aloo Fry, Fruit Salad, Palya, Dal, Butter Milk, Rice, Rasam, Pickle');
-- 
-- -- Week 2
-- CREATE TABLE week2 (
--     day TEXT,
--     breakfast TEXT,
--     lunch TEXT,
--     snacks TEXT,
--     dinner TEXT
-- );
-- 
-- INSERT INTO week2 VALUES 
-- ('SUN', 'Idly-Vada, Sambar, Chutney, Tea, Coffee, Milk', 'Fulka, Chana Masala, Palya, Jeera Rice, Sambar, Dal, Pickle', 'Kachori, Tea/Coffee', 'Hyderabad Chicken Biryani, Pickle, Hyderabad Veg Biryani, Fulka, Palya, Rice, Rasam, Raita'),
-- ('MON', 'Puri, Sagu, Rice Bath, Tea/Coffee, Milk', 'Palak Rice, Fulka, Pickle, Mushroom Matar, Rice, Dal, Rasam, Lime Juice', 'Poha / Susla, Tea/Coffee', 'Kashmiri Dum Rice, Chapati, Rice, Sambar, Dal, Pickle, Aloo Bhindi, Sweet'),
-- ('TUE', 'Set Dosa, Sagu, Chutney, Kharabath, Milk/Tea/Coffee', 'Makai Nisha, Chapathi, Green Sambar, Dal, Rice, Rice, Pickle', 'Veg Puff, Tea/Coffee', 'Fulka, Egg Curry, Veg Manchurian, Rice, Dal, Rasam, Pickle'),
-- ('WED', 'Idli, Sambar, Tomato Rice, Chutney, Milk/Tea/Coffee', 'Aloo Gobi Matar, Rice, Veg Biryani, Dal, Dal Rice, Sambar, Papad, Pickle', 'Mirchi Bajji, Tea/Coffee', 'Chapati, Chana Masala, Rice, Dal, Rasam'),
-- ('THU', 'Rava Dosa, Sagu, Pickle, Tea, Coffee, Milk', 'Fulka, Rajma Masala, Rice, Dal, Palya, Pudina Rice, Pickle', 'Noodles, Tea/Coffee', 'Chicken Curry, Paneer Curry, Paratha, Rice, Sambar, Dal, Pickle'),
-- ('FRI', 'Aloo Paratha, Curd, Tea, Coffee, Milk', 'Aloo Palak, Chapati, Dal, Rice, Rasam, Pickle', 'Pani Puri, Tea/Coffee', 'Chapati, Egg Bhurji, Tomato Rice, Gobi Manchurian, Dal, Rice, Rasam, Juice, Pickle'),
-- ('SAT', 'Masala Dosa, Sambar, Chutney, Tea/Coffee/Milk', 'Fulka, Dal, Bisibele Bath, Rice, Black Chana, Pickle', 'Biscuits, Tea/Coffee', 'Chapati, Egg Bhurji, Tomato Rice, Gobi Manchurian, Dal, Rice, Rasam, Pickle');
-- 
-- -- Week 3
-- CREATE TABLE week3 (
--     day TEXT,
--     breakfast TEXT,
--     lunch TEXT,
--     snacks TEXT,
--     dinner TEXT
-- );
-- 
-- INSERT INTO week3 VALUES 
-- ('SUN', 'Chole Bhature, Sevige Bath, Chutney, Milk/Tea/Coffee', 'Fulka, Dal, Aloo Palya, Pulao Rice, Sambar, Raita, Pickle', 'Bhel Puri, Tea/Coffee', 'MINI FEAST'),
-- ('MON', 'Idli, Vada, Sambar, Chutney, Tea/Coffee/Milk', 'Mushroom Green Peas, Fulka, Dal, Corn, Rice, Palya, Papad, Pickle', 'Pasta, Tea/Coffee', 'Chapati, Kadai Paneer, Veg Fried Rice, Dal, Rice, Rasam, Curd, Pickle'),
-- ('TUE', 'Methi Dal Paratha, Sagu, Chutney, Kesari Bath, Tea/Coffee/Milk', 'Rice, Bread Rice, Dal, Curd, Butter Milk, Pickle', 'Bonda, Chutney, Tea/Coffee', 'Fulka, Egg Curry, Tomato Rice, Curd Rice, Pickle'),
-- ('WED', 'Masala Dosa, Chutney, Sambar, Milk/Tea/Coffee', 'Chapathi, Black Chana, Tomato Pulao, Lemon Rice, Rice, Dal, Rasam, Pickle', 'Noodles, Tea/Coffee', 'Chapati, Sambar, Gobi Masala, Rice, Dal, Rasam, Pickle'),
-- ('THU', 'Idli, Sambar, Chutney, Kesari Bath, Milk/Tea/Coffee', 'Tindora Potato Gobi, Ginger Masala, Fulka, Dal, Dum Ghee Rice, Sambar, Butter Milk, Pickle', 'Masala Vada, Tea/Coffee', 'Chapati, Sambar, Butter Paneer Masala, Dal, Rasam, Rice, Pickle'),
-- ('FRI', 'Veg Roll, Rice Bath, Chutney, Milk/Tea/Coffee', 'Dal, Puliyogare, Pickle, Rice, Papad', 'Poha, Tea/Coffee', 'Rice, Pulao, Rajma, Pickle, Raita'),
-- ('SAT', 'Puri, Sagu, Khara Pongal, Chutney/Milk/Tea/Coffee', 'Fulka, Rajma Masala, Gobi Fry, Rice, Dal, Tomato Rice, Rice, Sambar, Lemon Juice, Pickle', 'Veg Puff, Tea/Coffee', 'Chapati, Butter Paneer, Rice, Rasam, Curd, Pickle');
-- 
-- -- Week 4
-- CREATE TABLE week4 (
--     day TEXT,
--     breakfast TEXT,
--     lunch TEXT,
--     snacks TEXT,
--     dinner TEXT
-- );
-- 
-- INSERT INTO week4 VALUES 
-- ('SUN', 'Onion Dosa, Sagu, Chutney Rice Bath, Tea/Coffee', 'Fulka, Black Chana Dal, Palya, Methi Palak Rice, Rice, Sambar, Pickle', 'Banana Bhajji, Tea/Coffee', 'Hyderabad Chicken Biryani, Hyderabad Veg Biryani, Fulka, Palya, Rice, Rasam, Raita'),
-- ('MON', 'Idli, Vada, Sambar, Chutney, Tea/Coffee', 'Fulka, Matar Mushroom, Kashmiri Dum Rice, Pickle, Rice, Dal, Sambar, Butter Milk', 'Noodles, Tea/Coffee', 'Chapati, Chana Masala, Tomato Rice, Rice, Rasam, Papad, Pickle'),
-- ('TUE', 'Aloo Paratha, Curd, Tomato Rice, Tea/Coffee', 'Dal, Aloo Palya, Cabbage Palya, Curd Rice, Rice, Sambar, Pickle', 'Poha / Susla, Tea/Coffee', 'Fulka, Aloo Bindi Masala, Rice, Dal, Pickle, Rasam'),
-- ('WED', 'Plain Dosa, Chutney, Sambar, Kharabath, Tea/Coffee', 'Dal, Puliyogare, Rice, Sambar, Pickle', 'Pani Puri, Tea/Coffee', 'Chapati, Chicken Curry, Tomato Rice, Dal, Jeera Rice, Rasam, Pickle'),
-- ('THU', 'Set Dosa, Chutney, Kesari Bath, Tea/Coffee', 'Fulka, Veg Kofta, Palya, Sambar, Lemon Rice, Pickle', 'Mirchi Bhajji, Tea/Coffee', 'Chapati, Egg Curry, Dal, Jeera Rice, Rice, Rasam, Pickle'),
-- ('FRI', 'Rava Idly, Sagu, Chutney, Kesari Bath, Tea/Coffee', 'Soyabean Peas Mushroom Curry, Dal, Chapati, Gobi Rice, Veg Biryani, Pickle', 'Maggi, Tea/Coffee', 'Dal, Rice, Rasam, Pickle, Sambar'),
-- ('SAT', 'Idly, Sambar, Vada, Chutney, Tea/Coffee', 'Chapati, Rice, Dal, Tomato Rice, Pickle', 'Bread Jam, Tea/Coffee', 'Dal, Rice, Rasam, Papad, Pickle');

-- CREATE TABLE WEEK4 (
--     DAY TEXT,
--     BREAKFAST TEXT,
--     LUNCH TEXT,
--     SNACKS TEXT,
--     DINNER TEXT
-- );

-- INSERT INTO WEEK4 (DAY, BREAKFAST, LUNCH, SNACKS, DINNER) VALUES 
-- ('SUN', 'ONION DOSA, SAGU, CHUTNEY RICE BATH, TEA/COFFEE', 'FULKA, BLACK CHANA DAL, PALYA, METHI PALAK RICE, RICE, SAMBAR, PICKLE', 'BANANA BHAJJI, TEA/COFFEE', 'HYDERABAD CHICKEN BIRYANI, HYDERABAD VEG BIRYANI, FULKA, PALYA, RICE, RASAM, RAITA'),
-- ('MON', 'IDLI, VADA, SAMBAR, CHUTNEY, TEA/COFFEE', 'FULKA, MATAR MUSHROOM, KASHMIRI DUM RICE, PICKLE, RICE, DAL, SAMBAR, BUTTER MILK', 'NOODLES, TEA/COFFEE', 'CHAPATI, CHANA MASALA, TOMATO RICE, RICE, RASAM, PAPAD, PICKLE'),
-- ('TUE', 'ALOO PARATHA, CURD, TOMATO RICE, TEA/COFFEE', 'FULKA, RAJMA MASALA, DAL, ALOO PALYA, CABBAGE PALYA, CURD RICE, RICE, SAMBAR, PICKLE', 'POHA / SUSLA, TEA/COFFEE', 'FULKA, ALOO BINDI MASALA, RICE, DAL, PICKLE, RASAM'),
-- ('WED', 'PLAIN DOSA, CHUTNEY, SAMBAR, KHARABATH, TEA/COFFEE', 'FULKA, ALOO METHI MASALA, DAL, PULIYOGARE, RICE, SAMBAR, PICKLE', 'PANI PURI, TEA/COFFEE', 'PARATHA, CHICKEN CURRY, PANEER CURRY, DAL, METHI RICE, RASAM, PICKLE'),
-- ('THU', 'PURI, SAGU, CHUTNEY, KESARI BATH, TEA/COFFEE', 'FULKA, VEG KOFTA, PALYA, SAMBAR, LEMON RICE, PICKLE', 'MIRCHI BHAJJI, TEA/COFFEE', 'CHAPATI, EGG BURJI, DAL, JEERA RICE, RICE, RASAM, PICKLE'),
-- ('FRI', 'BREAD OMELET,BREAD JAM , TEA/COFFEE', 'SOYABEAN PEAS MUSHROOM CURRY, DAL, CHAPATI, GOBI RICE, VEG BIRYANI, PICKLE', 'MAGGIE, TEA/COFFEE', 'PARATHA,PANNER CURRY, CHICKEN CURRY'),
-- ('SAT', 'IDLY, SAMBAR, VADA, CHUTNEY, TEA/COFFEE', 'CHAPATI, RICE, DAL, TOMATO RICE, PICKLE', 'BREAD JAM, TEA/COFFEE', 'KADI PAKODA, PUDINA RICE, BRINGLE SOUTH MASALA');



