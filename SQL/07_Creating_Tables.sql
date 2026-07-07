CREATE TABLE employees (
    employee_id INT PRIMARY KEY,   -- Made this the unique identifier
    first_name VARCHAR(50) NOT NULL, -- Added length and forced it to not be blank
    hire_date DATE,
    salary DECIMAL(10, 2)          -- Best practice for money (10 digits total, 2 for decimals)
);

CREATE TABLE students (
    student_id INT,
    student_name VARCHAR
);
