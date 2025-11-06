/*
--------------------------------------------------------
Query: Sales by Region
Purpose: Calculate customer counts and total payments per country
         for business visualization in Tableau.
Source: Task 3.10 Country Customer Count and Total Payment
Concepts: Multi-table Joins, Aggregation, Reporting
--------------------------------------------------------
*/

SELECT
    d.country,
    COUNT(DISTINCT a.customer_id) AS customer_count,
    SUM(e.amount) AS total_payment
FROM customer a
JOIN address b ON a.address_id = b.address_id
JOIN city c ON b.city_id = c.city_id
JOIN country d ON c.country_id = d.country_id
JOIN payment e ON a.customer_id = e.customer_id
GROUP BY d.country
ORDER BY total_payment DESC;
