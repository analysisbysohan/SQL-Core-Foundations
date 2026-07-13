-- ==============================================================================
-- 📁 11_Join_Patterns_Practice.sql
-- 🎯 Objective: Practice and document core SQL JOIN patterns and behaviors
-- ==============================================================================

/*
📊 SAMPLE DATA ARCHITECTURE (For Context)

customers (Left Table)
+-------------+------------+----------+
| customer_id | first_name | city     |
+-------------+------------+----------+
| 10          | Liam       | New York |
| 20          | Sophia     | London   |
| 30          | Mateo      | Tokyo    |
| 40          | Emma       | Paris    |
+-------------+------------+----------+

orders (Right Table)
+----------+-------------+--------+------------+
| order_id | customer_id | amount | status     |
+----------+-------------+--------+------------+
| 501      | 10          | $150   | Shipped    |
| 502      | 20          | $45    | Processing |
| 503      | 10          | $90    | Shipped    |
| 504      | 99          | $210   | Shipped    |
+----------+-------------+--------+------------+
*/

-- ==============================================================================
-- 🧩 PATTERN 1: The "Keep Everything on One Side" Pattern (LEFT JOIN)
-- ❓ Question: Pull a list of all customers' first_name and their order amount. 
--    Every single customer must be listed, even if they have never placed an order.
-- ==============================================================================

SELECT 
    c.first_name, 
    o.amount 
FROM customers c 
LEFT JOIN orders o ON c.customer_id = o.customer_id;

/*
📊 EXPECTED OUTPUT:
+------------+--------+
| first_name | amount |
+------------+--------+
| Liam       | $150   |
| Sophia     | $45    |
| Liam       | $90    |
| Mateo      | NULL   |
| Emma       | NULL   |
+------------+--------+
*/


-- ==============================================================================
-- 🧩 PATTERN 2: The "Join with Column Filtering" Pattern
-- ❓ Question: Show the first_name, city, and amount for orders, but only 
--    include orders that have a status of 'Shipped'.
-- ==============================================================================

SELECT 
    c.first_name, 
    c.city, 
    o.amount 
FROM customers c
INNER JOIN orders o ON c.customer_id = o.customer_id
WHERE o.status = 'Shipped';

/*
📊 EXPECTED OUTPUT:
+------------+----------+--------+
| first_name | city     | amount |
+------------+----------+--------+
| Liam       | New York | $150   |
| Liam       | New York | $90    |
+------------+----------+--------+
*/


-- ==============================================================================
-- 🧩 PATTERN 3: The "Find Missing / Inactive Data" Pattern (IS NULL)
-- ❓ Question: Find the first_name and city of only the customers who have 
--    never placed an order.
-- ==============================================================================

SELECT 
    c.first_name, 
    c.city 
FROM customers c 
LEFT JOIN orders o ON c.customer_id = o.customer_id
WHERE o.customer_id IS NULL;

/*
📊 EXPECTED OUTPUT:
+------------+-------+
| first_name | city  |
+------------+-------+
| Mateo      | Tokyo |
| Emma       | Paris |
+------------+-------+
*/
-- ==============================================================================
-- 🧩 PATTERN 4: The "All Possible Combinations" Pattern (CROSS JOIN)
-- ❓ Question: Generate a complete list of all possible combo meals 
--    (every food paired with every drink).
-- ==============================================================================

/*
📊 EXTRA DATA CONTEXT
meals Table: ['Burger', 'Pizza']
drinks Table: ['Cola', 'Lemonade']
*/

SELECT 
    m.meal_name, 
    d.drink_name
FROM meals m 
CROSS JOIN drinks d;

/*
📊 EXPECTED OUTPUT:
+-----------+------------+
| meal_name | drink_name |
+-----------+------------+
| Burger    | Cola       |
| Burger    | Lemonade   |
| Pizza     | Cola       |
| Pizza     | Lemonade   |
+-----------+------------+
Note: 2 meals * 2 drinks = 4 total rows generated (Cartesian Product).
*/
