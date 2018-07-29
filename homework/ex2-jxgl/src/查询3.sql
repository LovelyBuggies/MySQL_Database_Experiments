use jxgl;

SELECT COURSE.CNO
FROM COURSE
WHERE COURSE.CNO NOT IN (
                         SELECT CNO
                         FROM SC 
	                     WHERE SC.SNO = '2005002');
