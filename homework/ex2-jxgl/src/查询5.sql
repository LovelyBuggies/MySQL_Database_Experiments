use jxgl;

SELECT COURSE.CNO, CNAME
FROM COURSE
WHERE NOT EXISTS(
                 SELECT *
                 FROM STUDENT
                 WHERE NOT EXISTS(
                                  SELECT * FROM SC
                                  WHERE SC.SNO = STUDENT.SNO AND
                                        SC.CNO = COURSE.CNO));
