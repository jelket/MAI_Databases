SELECT pod2.person_id, COUNT(1) cnt_dtp ;
FROM participant_of_dtp pod2, participant_of_dtp pod;
WHERE pod.person_id = person.id ;
GROUP BY pod2.person_id ;
INTO CURSOR person_cnt ;

SELECT person.name, person_cnt.cnt_dtp ;
FROM person_cnt, person ;
WHERE person.id = person_cnt.person_id ;
	AND person_cnt.cnt_dtp = (SELECT MAX(cnt_dtp) FROM person_cnt)