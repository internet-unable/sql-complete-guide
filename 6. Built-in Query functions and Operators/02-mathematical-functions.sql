SELECT price * billing_frequency FROM memberships;
SELECT price + billing_frequency FROM memberships;
SELECT price - billing_frequency FROM memberships;
SELECT price / billing_frequency FROM memberships;

SELECT CEIL(consumption) FROM memberships;
SELECT FLOOR(consumption) FROM memberships;
SELECT ROUND(consumption) FROM memberships;
SELECT TRUNC(consumption) FROM memberships; -- PostgreSQL
SELECT TRUNCATE(consumption) FROM memberships; -- MySQL