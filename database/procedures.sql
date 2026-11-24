
-- Procedure to find plants belonging to a user

USE plant_care_garden_tracker;

DELIMITER //

CREATE PROCEDURE GetUserPlants(IN selected_user_id INT)
BEGIN
    SELECT
        users.username,
        plants.plant_name,
        user_plants.date_added
    FROM user_plants
    JOIN users
        ON user_plants.user_id = users.user_id
    JOIN plants
        ON user_plants.plant_id = plants.plant_id
    WHERE users.user_id = selected_user_id;
END //

DELIMITER ;
