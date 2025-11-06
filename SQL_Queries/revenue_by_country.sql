/*
--------------------------------------------------------
Query: Revenue by Country
Purpose: Display the top 10 countries ranked by total revenue.
Source: Adapted from Task 3.7 Top 10 Countries by Customer Count
Concepts: Multi-table Joins, Aggregation, Ranking
--------------------------------------------------------
*/

SELECT
    co.country,
    SUM(p.amount) AS total_revenue
FROM payment p
JOIN customer c ON p.customer_id = c.customer_id
JOIN address a ON c.address_id = a.address_id
JOIN city ci ON a.city_id = ci.city_id
JOIN country co ON ci.country_id = co.country_id
GROUP BY co.country
ORDER BY total_revenue DESC
LIMIT 10;
