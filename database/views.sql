
-- View to show plant information for each user

USE plant_care_garden_tracker;

CREATE VIEW user_plant_details AS
SELECT
    users.username,
    plants.plant_name,
    plant_categories.category_name,
    user_plants.date_added
FROM user_plants
JOIN users
    ON user_plants.user_id = users.user_id
JOIN plants
    ON user_plants.plant_id = plants.plant_id
JOIN plant_categories
    ON plants.category_id = plant_categories.category_id;
