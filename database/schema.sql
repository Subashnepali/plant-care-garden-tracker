
-- Plant Care and Garden Tracker Database
-- MySQL database tables

CREATE DATABASE plant_care_garden_tracker;

USE plant_care_garden_tracker;

-- 1. Users table
CREATE TABLE users (
    user_id INT AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(100) NOT NULL,
    email VARCHAR(150) NOT NULL UNIQUE
);

-- 2. Plant categories table
CREATE TABLE plant_categories (
    category_id INT AUTO_INCREMENT PRIMARY KEY,
    category_name VARCHAR(100) NOT NULL,
    description TEXT
);

-- 3. Plants table
CREATE TABLE plants (
    plant_id INT AUTO_INCREMENT PRIMARY KEY,
    plant_name VARCHAR(100) NOT NULL,
    scientific_name VARCHAR(100),
    category_id INT,
    description TEXT,
    FOREIGN KEY (category_id)
        REFERENCES plant_categories(category_id)
);

-- 4. User plants table
CREATE TABLE user_plants (
    user_plant_id INT AUTO_INCREMENT PRIMARY KEY,
    user_id INT NOT NULL,
    plant_id INT NOT NULL,
    date_added DATE,
    FOREIGN KEY (user_id)
        REFERENCES users(user_id),
    FOREIGN KEY (plant_id)
        REFERENCES plants(plant_id)
);

-- 5. Watering schedules table
CREATE TABLE watering_schedules (
    schedule_id INT AUTO_INCREMENT PRIMARY KEY,
    user_plant_id INT NOT NULL,
    watering_frequency INT NOT NULL,
    next_watering_date DATE,
    FOREIGN KEY (user_plant_id)
        REFERENCES user_plants(user_plant_id)
);

-- 6. Care records table
CREATE TABLE care_records (
    record_id INT AUTO_INCREMENT PRIMARY KEY,
    user_plant_id INT NOT NULL,
    care_type VARCHAR(50) NOT NULL,
    care_date DATE NOT NULL,
    notes TEXT,
    FOREIGN KEY (user_plant_id)
        REFERENCES user_plants(user_plant_id)
);

-- 7. Plant health records table
CREATE TABLE plant_health_records (
    health_id INT AUTO_INCREMENT PRIMARY KEY,
    user_plant_id INT NOT NULL,
    health_status VARCHAR(100),
    problems TEXT,
    record_date DATE NOT NULL,
    FOREIGN KEY (user_plant_id)
        REFERENCES user_plants(user_plant_id)
);
