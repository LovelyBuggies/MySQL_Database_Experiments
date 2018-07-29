use jxgl;

SET SQL_SAFE_UPDATES = 0;

INSERT 
INTO sc (sno, cno, grade)
VALUES (2005002, 3, 99);

UPDATE sc
SET grade = null
WHERE cno = 3 AND sno = 2005002;

SET SQL_SAFE_UPDATES = 1;