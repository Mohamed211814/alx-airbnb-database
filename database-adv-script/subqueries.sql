-- 1. Non-correlated Subquery:
-- Find all properties where the average rating is greater than 4.0
SELECT *
FROM properties
WHERE property_id IN (
    SELECT property_id
    FROM reviews
    GROUP BY property_id
    HAVING AVG(rating) > 4.0
);

-- 2. Correlated Subquery:
-- Find users who have made more than 3 bookings
SELECT *
FROM users u
WHERE (
    SELECT COUNT(*)
    FROM bookings b
    WHERE b.user_id = u.user_id
) > 3;
