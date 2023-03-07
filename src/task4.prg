SELECT gai.id, gai.name, dtp_cnt.gai_cnt, dtp_avg.gai_avg  FROM gai ;
	join (select dtp.gai_id, COUNT(1) gai_cnt from dtp group by dtp.gai_id ) dtp_cnt on dtp_cnt.gai_id = gai.id ;
	join (select avg(dtp2.gai_cnt) gai_avg from (select COUNT(1) gai_cnt from dtp group by gai_id ) dtp2 ) dtp_avg on 1=1 ;
where dtp_cnt.gai_cnt > dtp_avg.gai_avg