-- 1. Create a table for Weather Deities
DROP TABLE IF EXISTS WEATHER_GODS;

CREATE TABLE WEATHER_GODS (
    id INT PRIMARY KEY,
    name VARCHAR(50),
    element VARCHAR(30),   -- Rain, Wind, Thunder, Sun
    culture VARCHAR(50),
    power_description TEXT
);

-- 2. Insert some nature-focused data
INSERT INTO WEATHER_GODS (id, name, element, culture, power_description) VALUES
(1, 'Indra', 'Thunder & Rain', 'Indian', 'King of Gods, brings monsoon rains.'),
(2, 'Thor', 'Lightning', 'Norse', 'Protector of mankind with his hammer Mjölnir.'),
(3, 'Fujin', 'Wind', 'Japanese', 'One of the eldest Shinto gods, carries wind in a bag.'),
(4, 'Tefnut', 'Moisture', 'Egyptian', 'Goddess of moisture, dew, and rain.');

-- 3. Query to see all Rain-related gods
SELECT * FROM WEATHER_GODS WHERE element LIKE '%Rain%';