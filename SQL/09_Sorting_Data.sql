-- Sorting data in ascending order (Cheapest first)
SELECT * FROM products 
ORDER BY price;

-- Sorting data in descending order (Most expensive first)
SELECT * FROM products 
ORDER BY price DESC;

-- Combining filtering (WHERE) and sorting (ORDER BY)
SELECT * FROM products
WHERE category = 'Electronics'
ORDER BY price DESC
LIMIT 5;
