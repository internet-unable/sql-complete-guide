CREATE INDEX multi_index ON addresses(street, city);

EXPLAIN ANALYZE
SELECT * FROM addresses
WHERE street = 'Teststreet' AND city = 'Munich';