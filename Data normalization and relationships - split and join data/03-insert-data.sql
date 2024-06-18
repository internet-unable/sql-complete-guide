-- Both
-- // ----------------------------------------------------------------------------------------------------
INSERT INTO city (name)
VALUES ('Berlin'), ('New York'), ('London');

INSERT INTO addresses (street, house_number, city_id)
VALUES
    ('Test street', '8A', 3),
    ('Some street', '10', 1),
    ('Address', '1', 3),
    ('My street', '101', 2);

INSERT INTO users (first_name, last_name, email, address_id)
VALUES
    ('Max', 'Name', 'max@test.com', 2),
    ('Nick', 'Name', 'nick@test.com', 4),
    ('June', 'Name', 'june@test.com', 3);