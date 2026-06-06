-- Finding the highest-rated movie from 2010 onwards
SELECT * FROM movies
WHERE Release_Year >= 2010
ORDER BY Rating DESC
LIMIT 1;
