SELECT first_name LIKE 'Max', first_name FROM memberships;
SELECT first_name LIKE 'Ma%', first_name FROM memberships;
SELECT first_name LIKE 'ma%', first_name FROM memberships; -- case-sensitive
SELECT first_name ILIKE 'ma%', first_name FROM memberships; -- not case-sensitive. ILIKE works only in PostgreSQL
SELECT first_name LIKE '%a%', first_name FROM memberships;
SELECT first_name LIKE '_o%', first_name FROM memberships;
SELECT first_name LIKE '__o%', first_name FROM memberships;

SELECT first_name FROM memberships
WHERE first_name LIKE 'J____';

SELECT first_name FROM memberships
WHERE first_name LIKE '%a%';