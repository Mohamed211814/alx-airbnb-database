LEFT JOIN : Retrieve all properties and their reviews, including properties that have no reviews
    
SELECT 
    properties.property_id,
    properties.title,
    reviews.review_id,
    reviews.rating,
    reviews.comment
FROM properties
LEFT JOIN reviews ON properties.property_id = reviews.property_id;
