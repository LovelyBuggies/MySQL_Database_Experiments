use jxgl;

SET SQL_SAFE_UPDATES = 0;

UPDATE student
SET sname = '刘华', sage = sage + 1
WHERE sno = 2005001;

SET SQL_SAFE_UPDATES = 1;