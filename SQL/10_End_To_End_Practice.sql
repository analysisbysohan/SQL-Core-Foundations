-- Step 1: Create the Table structure
CREATE TABLE projects (
    id INT PRIMARY KEY,
    name VARCHAR(50),
    team VARCHAR(30),
    budget DECIMAL(10, 2),
    launch_date DATE
);
-- Step 2: Insert data records
INSERT INTO projects (id, name, team, budget, launch_date) VALUES
(1, 'Alpha App', 'Mobile', 25000.00, '2026-08-15'),
(2, 'Beta Web', 'Web', 45000.50, '2026-09-01'),
(3, 'Cloud Sync', 'DevOps', 12000.00, '2026-07-20');
-- Step 3: Run analysis query (High-budget projects)
SELECT name, budget FROM projects 
WHERE budget > 15000.00
ORDER BY budget DESC;
