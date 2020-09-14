SELECT u.name, SUM(IFNULL(r.distance, 0)) AS travelled_distance FROM users AS u LEFT JOIN rides as r ON u.id = r.user_id GROUP BY u.id ORDER BY travelled_distance DESC, u.name;
