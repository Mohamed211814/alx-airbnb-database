## 🔗 SQL Join Queries

This script demonstrates the use of various SQL joins in the context of the Airbnb clone database.

### 1. INNER JOIN
Used to retrieve all bookings along with the users who made them. Only records with matching user and booking data will be shown.

### 2. LEFT JOIN
Used to retrieve all properties and any reviews associated with them. Properties without reviews will still appear in the result set.

### 3. FULL OUTER JOIN
Used to get all users and all bookings — including:
- Users who haven’t made any bookings
- Bookings that aren’t linked to any registered user

Since some SQL engines like MySQL do not support FULL OUTER JOIN, the query uses a combination of `LEFT JOIN` and `UNION` to simulate it.
