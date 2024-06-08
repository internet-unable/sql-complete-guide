-- Task #1
-- Create a new database for the online shop
-- CREATE DATABASE online_shop;

-- Task #2 and #3
-- Add a table for products. Choose appropriate column names + data types
-- CREATE TABLE products(
--     product_name VARCHAR(200),
--     product_desc VARCHAR(600),
--     product_price NUMERIC(7,2),
--     product_amount_in_stock INTEGER,
--     product_image VARCHAR(600)
-- );

-- Task #4
-- Insert dummy data into created table
-- INSERT INTO products(product_name, product_desc, product_price, product_amount_in_stock, product_image)
-- VALUES(
--     'iPhone 15 Pro Max',
--     'iPhone 15 Pro Max - перший iPhone, виготовлений з титану авіаційного класу, виготовленого з того ж сплаву, який використовують космічні кораблі для польотів на Марс.',
--     1000,
--     100,
--     'some/some/product/image.png'
-- );

-- Task #5
-- Update table and add sensible constraints
-- ALTER TABLE products
-- MODIFY COLUMN product_name VARCHAR(300) NOT NULL,
-- MODIFY COLUMN product_desc VARCHAR(600) NOT NULL,
-- MODIFY COLUMN product_price NUMERIC(7,2) CHECK (product_price > 0),
-- MODIFY COLUMN product_amount_in_stock INTEGER NOT NULL,
-- MODIFY COLUMN product_image VARCHAR(600) NOT NULL;

-- Task #6
-- Update table and add a primary key
ALTER TABLE products
ADD COLUMN id INT PRIMARY KEY AUTO_INCREMENT;