-- Challenge 1: Calculating totals and averages with clean aliases
SELECT SUM(Box_Office_Millions) AS Total_Box_Office FROM Movies;
SELECT AVG(Budget) AS Average_Film_Budget FROM Movies;

-- Challenge 2: Counting total records in a table
SELECT COUNT(*) AS Total_Movies FROM Movies;
