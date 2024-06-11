SELECT * FROM sales;

SELECT customer_name, product_name, volume, date_created
FROM sales;

SELECT
    customer_name,
    product_name,
    volume AS total_sales, -- will rename column name from volume to total_sales, only in result set
    -- volume / 1000 -- alse possible and only for result set
    date_created
FROM sales;