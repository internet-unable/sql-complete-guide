SELECT city.name FROM city
LEFT JOIN addresses ON city.id = addresses.city_id
LEFT JOIN users ON users.address_id = addresses.id;