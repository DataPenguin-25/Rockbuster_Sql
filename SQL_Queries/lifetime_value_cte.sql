/*
--------------------------------------------------------
Query: Customer Lifetime Value
Purpose: Identify the top 5 customers by total payment amount.
Source: Task 3.7 Top 5 Customers by Total Amount Paid
Concepts: Joins, Aggregation, Sorting, LIMIT
--------------------------------------------------------
*/

WITH lifetime_value AS (
    SELECT
        c.customer_id,
        c.first_name,
        c.last_name,
        co.country,
        ci.city,
        SUM(p.amount) AS total_paid
    FROM customer c
    JOIN payment p ON c.customer_id = p.customer_id
    JOIN address a ON c.address_id = a.address_id
    JOIN city ci ON a.city_id = ci.city_id
    JOIN country co ON ci.country_id = co.country_id
    GROUP BY
        c.customer_id,
        c.first_name,
        c.last_name,
        co.country,
        ci.city
)
SELECT
    *
FROM lifetime_value
ORDER BY total_paid DESC
LIMIT 5;
