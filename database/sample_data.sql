
-- Sample Data for Plant Care and Garden Tracker
-- This file adds example data to the database.

USE plant_care_garden_tracker;

-- 1. Add users
INSERT INTO users (username, email) VALUES
('Subash', 'subash@gmail.com'),
('Ram', 'ram@gmail.com'),
('Sita', 'sita@gmail.com');

-- 2. Add plant categories
INSERT INTO plant_categories (category_name, description) VALUES
('Indoor Plants', 'Plants that grow inside the house'),
('Outdoor Plants', 'Plants that grow outside'),
('Herbs', 'Plants used for cooking and other purposes');

-- 3. Add plants
INSERT INTO plants
(plant_name, scientific_name, category_id, description) VALUES
('Snake Plant', 'Dracaena trifasciata', 1, 'An easy plant to grow indoors'),
('Rose', 'Rosa', 2, 'A flowering outdoor plant'),
('Basil', 'Ocimum basilicum', 3, 'A herb used in cooking'),
('Aloe Vera', 'Aloe barbadensis miller', 1, 'A plant that needs less water');

-- 4. Add plants to users
INSERT INTO user_plants (user_id, plant_id, date_added) VALUES
(1, 1, '2026-11-01'),
(1, 3, '2026-11-03'),
(2, 2, '2026-11-05'),
(3, 4, '2026-11-07');

-- 5. Add watering schedules
INSERT INTO watering_schedules
(user_plant_id, watering_frequency, frequency_unit, next_watering_date) VALUES
(1, 7, 'days', '2026-11-24 08:00:00'),
(2, 3, 'days', '2026-11-25 09:00:00'),
(3, 2, 'days', '2026-11-24 07:00:00'),
(4, 14, 'days', '2026-11-28 08:00:00');

-- 6. Add care records
INSERT INTO care_records
(user_plant_id, care_type, care_date, notes) VALUES
(1, 'Watering', '2026-11-17', 'Watered the snake plant'),
(2, 'Fertilizing', '2026-11-18', 'Added plant fertilizer'),
(3, 'Watering', '2026-11-19', 'Watered the basil plant'),
(4, 'Pruning', '2026-11-20', 'Removed dry leaves');

-- 7. Add plant health records
INSERT INTO plant_health_records
(user_plant_id, health_status, problems, record_date) VALUES
(1, 'Healthy', 'No problems found', '2026-11-20'),
(2, 'Good', 'Some leaves need attention', '2026-11-20'),
(3, 'Healthy', 'Growing well', '2026-11-21'),
(4, 'Good', 'No major problems', '2026-11-21');

-- 8. Add plant care recommendations
INSERT INTO plant_care_recommendations
(plant_id, care_type, frequency, instructions) VALUES
(1, 'Watering', 'Every 7 days', 'Water when the soil is dry'),
(2, 'Watering', 'Every 2 days', 'Keep the soil moist'),
(3, 'Watering', 'Every 3 days', 'Water regularly'),
(4, 'Watering', 'Every 14 days', 'Avoid overwatering');

-- 9. Add notifications
INSERT INTO notifications
(user_id, schedule_id, notification_message, notification_date, is_read) VALUES
(1, 1, 'Time to water your Snake Plant', '2026-11-24 08:00:00', FALSE),
(1, 2, 'Time to water your Basil', '2026-11-25 09:00:00', FALSE),
(2, 3, 'Time to water your Rose', '2026-11-24 07:00:00', FALSE);
