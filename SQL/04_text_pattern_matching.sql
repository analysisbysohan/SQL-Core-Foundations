-- Challenge 1: Finding a word anywhere in the title (Contains)
SELECT * FROM MOVIES 
WHERE Title LIKE '%KNIGHT%';

-- Challenge 2: Finding a word at the very beginning (Starts With)
SELECT * FROM MOVIES 
WHERE TITLE LIKE 'STAR%';

-- Challenge 2: Finding a word at the very beginning (End With)
SELECT * FROM MOVIES 
WHERE TITLE LIKE '%2';



