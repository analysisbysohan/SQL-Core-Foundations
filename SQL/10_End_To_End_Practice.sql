-- Step 1: Create the Table structure
CREATE TABLE projects (
    id INT PRIMARY KEY,
    name VARCHAR(50),
    team VARCHAR(30),
    budget DECIMAL(10, 2),
    launch_date DATE
);
