use DingBao;

ALTER VIEW C_P_N (cno, cna, pno, pna, num, ppr)
AS SELECT S.cno, S.cna, Y.pno, Y.pna, Y.ppr, Z.num
FROM customer S, paper Y, cp Z;
