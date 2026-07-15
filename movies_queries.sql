-- ========================================================
-- SQL CORE FOUNDATIONS: MOVIE DATA ANALYSIS
-- Mastered by: Sohan
-- ========================================================

-- Challenge 1: Selecting specific columns
-- Displays only the Title and Rating for every movie
SELECT Title, Rating 
FROM movies;

-- Challenge 2: Filtering data with WHERE
-- Shows all columns for movies released exactly in 2010
SELECT * FROM movies
WHERE Release_Year = 2010;

-- Challenge 3: Sorting data with ORDER BY & DESC
-- Sorts all movies by earnings from highest to lowest
SELECT * FROM movies
ORDER BY Box_Office_Millions DESC;

-- Challenge 4: Combining Filters and Sorting
-- Finds Sci-Fi movies and sorts them by highest rating
SELECT * FROM movies 
WHERE Genre = 'Sci-Fi'
ORDER BY Rating DESC;

-- Challenge 5: The Ultimate Combination (Filter, Sort, and Limit)
-- Finds the single highest-rated movie released in or after 2010
SELECT * FROM movies
WHERE Release_Year >= 2010
ORDER BY Rating DESC
LIMIT 1;

