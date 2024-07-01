SELECT CONCAT(first_name, ' ', last_name) FROM memberships;

SELECT CONCAT('$ ', price) FROM memberships;

SELECT * FROM memberships
WHERE LENGTH(last_name) < 4;