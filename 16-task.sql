-- CREATE DATABASE online_shop;

-- CREATE TABLE products(
--     product_name VARCHAR(200),
--     product_desc VARCHAR(600),
--     product_price NUMERIC(7, 2),
--     product_amount_in_stock INTEGER,
--     product_image VARCHAR(600)
-- );

INSERT INTO products(product_name, product_desc, product_price, product_amount_in_stock, product_image)
VALUES(
    'iPhone 15 Pro Max',
    'iPhone 15 Pro Max - перший iPhone, виготовлений з титану авіаційного класу, виготовленого з того ж сплаву, який використовують космічні кораблі для польотів на Марс.',
    1000,
    100,
    'some/some/product/image.png'
)