/*
--------------------------------------------------------
Query: Average Rental Duration
Purpose: Calculate the minimum, maximum, and average film lengths.
Source: Task 3.6 Film Length Summary
Concepts: Aggregation (MIN, MAX, AVG)
--------------------------------------------------------
*/

SELECT
    MIN(length) AS min_length,
    MAX(length) AS max_length,
    AVG(length) AS avg_length
FROM film;
