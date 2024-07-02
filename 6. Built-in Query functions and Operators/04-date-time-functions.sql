SELECT EXTRACT(MONTH FROM last_checkin) FROM memberships;
SELECT EXTRACT(DAY FROM last_checkin) FROM memberships;

SELECT EXTRACT(DOW FROM last_checkin) FROM memberships; -- PostgreSQL
SELECT WEEKDAY(last_checkin) FROM memberships; -- MySQL
SELECT WEEKDAY(last_checkin) + 1 FROM memberships; -- MySQL

SELECT CONVERT(last_checkin, DATE), CONVERT(last_checkin, TIME) FROM memberships; -- MySQL
SELECT last_checkin::TIMESTAMP::DATE, last_checkin::TIMESTAMP::TIME FROM memberships; -- PostgreSQL

The result will be an individual data type - Interval
SELECT last_checkout - last_checkin FROM memberships; -- PostgreSQL
SELECT TIMESTAMPDIFF(DAY, last_checkin, last_checkout) FROM memberships; -- MySQL
SELECT TIMESTAMPDIFF(HOUR, last_checkin, last_checkout) FROM memberships; -- MySQL
SELECT TIMESTAMPDIFF(MINUTE, last_checkin, last_checkout) FROM memberships; -- MySQL

SELECT membership_end - membership_start FROM memberships; -- PostgreSQL
SELECT DATEDIFF(membership_end, membership_start) FROM memberships; -- MySQL

SELECT (membership_start + 7)::TIMESTAMP::DATE, membership_start FROM memberships; -- PostgreSQL
SELECT (membership_start + INTERVAL '7 MONTH')::TIMESTAMP::DATE, membership_start FROM memberships; -- PostgreSQL
SELECT (membership_start + INTERVAL '7 YEAR')::TIMESTAMP::DATE, membership_start FROM memberships; -- PostgreSQL
SELECT (membership_start - 7)::TIMESTAMP::DATE, membership_start FROM memberships; -- PostgreSQL
SELECT (membership_start - INTERVAL '7 MONTH')::TIMESTAMP::DATE, membership_start FROM memberships; -- PostgreSQL
SELECT (membership_start - INTERVAL '7 YEAR')::TIMESTAMP::DATE, membership_start FROM memberships; -- PostgreSQL
SELECT DATE_ADD(membership_start, INTERVAL 7 DAY), membership_start FROM memberships; -- MySQL
SELECT DATE_ADD(membership_start, INTERVAL 7 MONTH), membership_start FROM memberships; -- MySQL
SELECT DATE_ADD(membership_start, INTERVAL 7 YEAR), membership_start FROM memberships; -- MySQL
SELECT DATE_SUB(membership_start, INTERVAL 7 DAY), membership_start FROM memberships; -- MySQL
SELECT DATE_SUB(membership_start, INTERVAL 7 MONTH), membership_start FROM memberships; -- MySQL
SELECT DATE_SUB(membership_start, INTERVAL 7 YEAR), membership_start FROM memberships; -- MySQL