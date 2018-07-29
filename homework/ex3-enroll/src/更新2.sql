use jxgl;

CREATE TABLE IF NOT EXISTS ts (sno CHAR(7),
							   sname CHAR(5),
							   sage INT,
							   ssex CHAR(1),
							   sdept CHAR(2),
							   PRIMARY KEY(sno));
                               
INSERT 
INTO ts (sno, sname, sage, ssex, sdept)
SELECT student.* 
FROM student
WHERE sno IN (SELECT sno 
              FROM sc 
			  GROUP BY sno HAVING MAX(grade) < 60); 


