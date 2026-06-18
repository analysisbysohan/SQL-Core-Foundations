-- Challenge 1: Targeting specific values using a clean IN list
SELECT * FROM MOVIES 
WHERE Genre IN ('Sci-Fi', 'Action', 'Adventure');

-- Challenge 2: Excluding a specific list of values using NOT IN
SELECT * FROM MOVIES
WHERE Genre NOT IN ('Sci-Fi', 'Action', 'Adventure');
