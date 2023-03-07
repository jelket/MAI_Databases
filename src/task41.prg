SELECT dtp.gai_id, COUNT(1) gai_cnt;
FROM dtp;
GROUP BY dtp.gai_id;
INTO CURSOR dtp_cnt;


SELECT gai.name, dtp_cnt.gai_cnt ;
FROM gai, dtp_cnt ;
WHERE gai.id = dtp_cnt.gai_id ;
	and dtp_cnt.gai_cnt > (SELECT AVG(gai_cnt) FROM dtp_cnt);
