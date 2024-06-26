SELECT * FROM addresses
LEFT JOIN users ON addresses.id = users.address
-- In case when we have multiple LEFT JOIN, left table will be previous result
LEFT JOIN city ON city.id = addresses.city_id;