use DingBao;

CREATE VIEW C_P_N (cno, cna, pno, pna, num)
AS SELECT S.cno, S.cna, Y.pno, Y.pna, Z.num
FROM customer S, paper Y, cp Z;