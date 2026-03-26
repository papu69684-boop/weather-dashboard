-- Sabse pehle Database select karo
USE GODS;

-- 1. Create a table for Weather Deities
DROP TABLE IF EXISTS WEATHER_GODS;

CREATE TABLE WEATHER_GODS (
    id INT PRIMARY KEY,
    name VARCHAR(50),
    element VARCHAR(30),   -- Rain, Wind, Thunder, Sun
    culture VARCHAR(50),
    power_description TEXT
);

-- 2. Insert data into WEATHER_GODS
INSERT INTO WEATHER_GODS (id, name, element, culture, power_description) VALUES
(1, 'Indra', 'Thunder & Rain', 'Indian', 'King of Gods, brings monsoon rains.'),
(2, 'Thor', 'Lightning', 'Norse', 'Protector of mankind with his hammer Mjölnir.'),
(3, 'Fujin', 'Wind', 'Japanese', 'One of the eldest Shinto gods, carries wind in a bag.'),
(4, 'Tefnut', 'Moisture', 'Egyptian', 'Goddess of moisture, dew, and rain.');

-- 3. Weather_Logs Table Setup
CREATE TABLE IF NOT EXISTS Weather_Logs (
    id INT AUTO_INCREMENT PRIMARY KEY,
    temperature INT,
    humidity INT,
    rain_occurred BOOLEAN
);

-- 4. Inserting Weather Data
INSERT INTO Weather_Logs (temperature, humidity, rain_occurred) 
VALUES (32, 85, TRUE), (35, 40, FALSE), (28, 90, TRUE), (33, 45, FALSE);

-- 5. Aaj ka naya data
INSERT INTO Weather_Logs (temperature, humidity, rain_occurred) 
VALUES (33, 82, TRUE);

-- 6. Check karne ke liye Queries (Last mein)
SELECT * FROM WEATHER_GODS WHERE element LIKE '%Rain%';
SELECT * FROM Weather_Logs ORDER BY id DESC;