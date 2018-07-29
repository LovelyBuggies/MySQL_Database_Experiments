use jxgl;

CREATE TABLE IF NOT EXISTS student (sno CHAR(7),
								    sname CHAR(5),
								    sage INT,
                                    ssex CHAR(1),
                                    sdept CHAR(2),
								    PRIMARY KEY(sno));
	                 
CREATE TABLE IF NOT EXISTS course (cno CHAR(2),
								   cname CHAR(10),
								   cpno INT,
								   ccredit INT,
								   PRIMARY KEY(cno));
                        
CREATE TABLE IF NOT EXISTS sc (sno CHAR(7),
							   cno CHAR(2),
							   grade INT,
							   FOREIGN KEY(sno) REFERENCES student(sno),
							   FOREIGN KEY(cno) REFERENCES course(cno));