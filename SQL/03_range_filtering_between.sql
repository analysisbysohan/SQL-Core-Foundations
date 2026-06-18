-- Challenge 1: Filtering a range of release years inclusively
SELECT * FROM Movies 
WHERE Release_Year BETWEEN 2015 AND 2022;

-- Challenge 2: Excluding a specific decade using NOT BETWEEN
SELECT * FROM Movies
WHERE Release_Year NOT BETWEEN 1990 AND 1999;
