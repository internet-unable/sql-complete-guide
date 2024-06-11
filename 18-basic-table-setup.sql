-- CREATE DATABASE sales_example;

-- MySQL
-- // ----------------------------------------------------------------------------------------------------
-- CREATE TABLE sales(
--     id INT PRIMARY KEY AUTO_INCREMENT,
--     date_created DATE DEFAULT (CURRENT_DATE),
--     date_fulfilled DATE,
--     customer_name VARCHAR(300) NOT NULL,
--     product_name VARCHAR(300) NOT NULL,
--     volume NUMERIC(10,2) NOT NULL CHECK (volume >= 0),
--     is_recurring BOOLEAN DEFAULT FALSE,
--     is_disputed BOOLEAN DEFAULT FALSE
-- );

-- PostgreSQL
-- // ----------------------------------------------------------------------------------------------------
-- CREATE TABLE sales(
--     id SERIAL PRIMARY KEY,
--     date_created DATE DEFAULT (CURRENT_DATE),
--     date_fulfilled DATE,
--     customer_name VARCHAR(300) NOT NULL,
--     product_name VARCHAR(300) NOT NULL,
--     volume NUMERIC(10,2) NOT NULL CHECK (volume >= 0),
--     is_recurring BOOLEAN DEFAULT FALSE,
--     is_disputed BOOLEAN DEFAULT FALSE
-- );

-- Both
-- // ----------------------------------------------------------------------------------------------------
INSERT INTO sales(
    date_fulfilled,
    customer_name,
    product_name,
    volume,
    is_recurring,
    is_disputed
)
VALUES
    (NULL, 'Konstantin', 'Book', 12.99, TRUE, FALSE),
    ('2024-06-11', 'Some company', 'Some production product', 10.99, FALSE, TRUE),
    (NULL, 'Some name', 'Some product', 13.99, FALSE, FALSE);