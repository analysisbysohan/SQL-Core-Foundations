-- Filtering data using the WHERE clause
SELECT * FROM students
WHERE student_name = 'RAHUL';

-- Filtering numbers using comparison operators
SELECT * FROM products
WHERE price <= 150;

-- Filtering with multiple conditions using AND
SELECT * FROM employees
WHERE department = 'IT' 
  AND salary > 60000;

-- Filtering using the OR operator
SELECT * FROM employees 
WHERE department = 'HR' OR department = 'FINANCE';

-- Cleaner shortcut using the IN operator
SELECT * FROM employees 
WHERE department IN ('HR', 'FINANCE');

