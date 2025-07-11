INNER JOIN: Retrieve all bookings and the users who made those bookings
    
SELECT 
    bookings.booking_id,
    bookings.property_id,
    bookings.booking_date,
    users.user_id,
    users.name AS user_name,
    users.email
FROM bookings
    
INNER JOIN users ON bookings.user_id = users.user_id;


LEFT JOIN: Retrieve all properties and their reviews, including properties that have no reviews
    
SELECT 
    properties.property_id,
    properties.title,
    reviews.review_id,
    reviews.rating,
    reviews.comment
FROM properties
    
LEFT JOIN reviews ON properties.property_id = reviews.property_id;


FULL OUTER JOIN: Retrieve all users and all bookings, even if there’s no match
NOTE: MySQL does not support FULL OUTER JOIN natively.
The following workaround uses UNION of LEFT JOIN and RIGHT JOIN.

SELECT 
    users.user_id,
    users.name AS user_name,
    bookings.booking_id,
    bookings.property_id,
    bookings.booking_date
FROM users
    
LEFT JOIN bookings ON users.user_id = bookings.user_id

UNION

SELECT 
    users.user_id,
    users.name AS user_name,
    bookings.booking_id,
    bookings.property_id,
    bookings.booking_date
FROM bookings
    
LEFT JOIN users ON bookings.user_id = users.user_id;

-- LEFT JOIN: Retrieve all properties and their reviews, including properties that have no reviews
SELECT 
    properties.property_id,
    properties.title,
    reviews.review_id,
    reviews.rating,
    reviews.comment
FROM properties
LEFT JOIN reviews ON properties.property_id = reviews.property_id;

