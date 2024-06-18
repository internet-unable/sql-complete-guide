SELECT * FROM sales
WHERE (date_created > '2021-01-01') AND (date_created < '2022-05-01'); -- 1st January and 1st May are both EXCLUDED

SELECT * FROM sales
WHERE date_created BETWEEN '2021-01-01' AND '2022-05-01'; -- 1st January and 1st May are both INCLUDED

SELECT * FROM sales
WHERE (volume > 1000) AND (volume < 100000);

SELECT * FROM sales
WHERE volume BETWEEN 1000 AND 100000;