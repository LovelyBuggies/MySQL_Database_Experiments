use DingBao;

CREATE TABLE IF NOT EXISTS paper (pno CHAR(6),
								  pna CHAR(10),
								  ppr FLOAT,
								  PRIMARY KEY(pno));
	
                 
CREATE TABLE IF NOT EXISTS customer (cno CHAR(4),
									 cna CHAR(10),
									 adr CHAR(20),
									 PRIMARY KEY(cno));
                        
CREATE TABLE IF NOT EXISTS cp (cno CHAR(4),
							   pno CHAR(6),
							   num INT,
							   FOREIGN KEY(pno) REFERENCES paper(pno),
							   FOREIGN KEY(cno) REFERENCES customer(cno));


