CREATE DATABASE gym;

CREATE TABLE memberships (
    id INT PRIMARY KEY AUTO_INCREMENT, -- MySQL
    -- id SERIAL PRIMARY KEY, -- PostgreSQL
    membership_start DATE,
    membership_end DATE,
    last_checkin TIMESTAMP,
    last_checkout TIMESTAMP,
    consumption NUMERIC(5, 2),
    first_name VARCHAR(200),
    last_name VARCHAR(200),
    price NUMERIC(5, 2),
    billing_frequency INT,
    gender VARCHAR(200)
);

CREATE TABLE customers(
    id INT PRIMARY KEY AUTO_INCREMENT, -- MySQL
    -- id SERIAL PRIMARY KEY, -- PostgreSQL
    first_name VARCHAR(200),
    last_name VARCHAR(200),
    email VARCHAR(200)
);

CREATE TABLE orders(
    id INT PRIMARY KEY AUTO_INCREMENT, -- MySQL
    -- id SERIAL PRIMARY KEY, -- PostgreSQL
    amount_billed NUMERIC(5, 2),
    customer_id INT REFERENCES customers
);

INSERT INTO memberships (
    membership_start,
    membership_end,
    last_checkin,
    last_checkout,
    consumption,
    first_name,
    last_name,
    price,
    billing_frequency,
    gender
)
VALUES (
    '2021-10-01',
    NULL,
    '2021-10-01 05:17:36',
    '2021-10-01 06:20:45',
    26.49,
    'Max',
    'Schwarz',
    19.99,
    12,
    'male'
),(
    '2020-05-10',
    '2022-05-09',
    '2021-11-03 10:01:56',
    '2021-11-03 14:30:00',
    100.26,
    'Manu',
    'Lorenz',
    199.99,
    1,
    'male'
),(
    '2021-02-18',
    '2022-02-17',
    '2021-10-29 15:26:05',
    '2021-10-29 17:01:33',
    5.10,
    'Julie',
    'Barnes',
    199.99,
    1,
    'female'
);

INSERT INTO memberships (
    membership_start,
    membership_end,
    last_checkin,
    last_checkout,
    consumption,
    first_name,
    last_name,
    price,
    billing_frequency,
    gender
)
VALUES (
    '2021-05-02',
    NULL,
    '2021-06-05 11:52:25',
    '2021-06-05 11:58:08',
    NULL,
    'Monti',
    'Durns',
    199.99,
    1,
    'male   '
);

INSERT INTO memberships (
    membership_start,
    membership_end,
    last_checkin,
    last_checkout,
    consumption,
    first_name,
    last_name,
    price,
    billing_frequency,
    gender
)
VALUES (
    '2021-10-18',
    '2021-11-18',
    '2021-11-01 08:56:01',
    '2021-11-01 09:20:12',
    NULL,
    'John',
    'Doe',
    19.99,
    12,
    'DivErs'
);

INSERT INTO customers(
    first_name,
    last_name,
    email
)
VALUES(
    'Max',
    'Schwarz',
    'max@test.com'
),(
    'Manu',
    'Lorenz',
    'manu@test.com'
),(
    'Julia',
    'Meyers',
    'juli@test.com'
);

INSERT INTO orders(
   amount_billed,
   customer_id 
)
VALUES(
    48.99,
    1
), (
    27.45,
    2
), (
    19.49,
    1
), (
    8.49,
    3
);