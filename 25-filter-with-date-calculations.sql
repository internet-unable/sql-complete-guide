SELECT * FROM sales
WHERE (date_fulfilled IS NOT NULL) AND (date_fulfilled - date_created <= 5);

SELECT * FROM sales
WHERE EXTRACT(DAY FROM date_fulfilled - date_created) <= 5; -- in case if it's datetime/timestamp type of value