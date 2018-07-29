use jxgl;

SET SQL_SAFE_UPDATES = 0;

UPDATE sc 
SET grade = grade * (1 - 0.02) 
WHERE cno = '2' AND grade <= 80; 

UPDATE sc 
SET grade = grade * (1 - 0.01)
WHERE cno = '2' AND grade > 80; 

SET SQL_SAFE_UPDATES = 1;