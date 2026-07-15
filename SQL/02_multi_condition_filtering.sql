-- Challenge 1: Finding Action movies with high earnings using AND
SELECT * FROM Movies
WHERE Genre = 'Action' AND Box_Office_Millions > 500;

-- Challenge 2: Finding specific family or mature rating types using OR
SELECT * FROM Movies
WHERE Rating_Type = 'PG' OR Rating_Type = 'R';

