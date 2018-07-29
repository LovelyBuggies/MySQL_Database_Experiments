use DingBao;

ALTER VIEW C_P_N (pna, cna, num)
AS SELECT S.pna, Y.cna, Z.num
FROM paper S, customer Y, cp Z
WHERE S.pna = '人民日报';
