SELECT booking_date, SUM(num_guests)
FROM bookings
GROUP BY booking_date;

SELECT payment_methods.name, SUM(bookings.num_guests)
FROM payment_methods
INNER JOIN bookings ON payment_methods.id = bookings.payment_id
GROUP BY payment_methods.name;

SELECT payment_methods.name, bookings.booking_date, SUM(bookings.num_guests)
FROM payment_methods
INNER JOIN bookings ON payment_methods.id = bookings.payment_id
GROUP BY payment_methods.name, bookings.booking_date;