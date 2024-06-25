-- Drop previous tables
-- // ----------------------------------------------------------------------------------------------------
-- DROP TABLE users;
-- DROP TABLE addresses;
-- DROP TABLE cities;

CREATE TABLE employees (
    id INT PRIMARY KEY AUTO_INCREMENT, -- MySQL
    -- id SERIAL PRIMARY KEY, -- PostgreSQL
    first_name VARCHAR(300) NOT NULL,
    last_name VARCHAR(300) NOT NULL,
    birthdate DATE NOT NULL,
    email VARCHAR(300) NOT NULL
);

CREATE TABLE intranet_accounts (
    id INT PRIMARY KEY AUTO_INCREMENT, -- MySQL
    -- id SERIAL PRIMARY KEY, -- PostgreSQL
    email VARCHAR(300) REFERENCES employees (email) ON DELETE CASCADE,
    password VARCHAR(300) NOT NULL
);

INSERT INTO employees(first_name, last_name, birthdate, email)
VALUES('Konstantin', 'Lastname', '2024-06-25', 'some@test.com');

INSERT INTO intranet_accounts(email, password)
VALUES('some@test.com', 'somepass');

-- DROP TABLE intranet_accounts;
-- DROP TABLE employees;