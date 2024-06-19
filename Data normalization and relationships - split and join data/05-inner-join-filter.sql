SELECT users.id, first_name, last_name, street, house_number, city.name AS city_name
FROM users
INNER JOIN addresses ON users.address_id = addresses.id
INNER JOIN city ON addresses.city_id = city.id
WHERE city.name = 'Berlin' OR city.name = 'New York'
ORDER BY users.id DESC;