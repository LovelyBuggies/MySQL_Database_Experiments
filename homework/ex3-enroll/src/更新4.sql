use jxgl;

SET SQL_SAFE_UPDATES = 0;

UPDATE sc
SET grade = null
WHERE cno = 1 AND grade < 60;

SET SQL_SAFE_UPDATES = 1;