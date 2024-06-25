-- Drop previous tables
-- // ----------------------------------------------------------------------------------------------------
-- DROP TABLE users;
-- DROP TABLE addresses;
-- DROP TABLE cities;


CREATE TABLE employess (
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
    email VARCHAR(300) REFERENCES employess (email) ON DELETE CASCADE,
    password VARCHAR(300) NOT NULL
);