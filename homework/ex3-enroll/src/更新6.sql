use jxgl;

SET SQL_SAFE_UPDATES = 0;

DECLARE @avg_grd int
SET @avg_grd = SELECT AVG(grade) FROM sc

UPDATE sc 
SET grade = grade * (1 + 0.05) 
WHERE grade < avg_grd AND sno IN (SELECT sno 
                                    FROM student 
									WHERE ssex = '女');

SET SQL_SAFE_UPDATES = 1;