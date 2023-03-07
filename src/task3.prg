
select person.name, pod_cnt.cnt_dtp  ;
from participant_of_dtp pod ;
	join person on pod.person_id = person.id ; 
	JOIN (select pod2.person_id, COUNT(1) cnt_dtp FROM participant_of_dtp pod2 GROUP BY pod2.person_id) pod_cnt ON pod.person_id = pod_cnt.person_id ;
	JOIN (select top 1 COUNT(1) cnt_dtp FROM participant_of_dtp pod2 GROUP BY pod2.person_id order BY cnt_dtp DESC ) pod_max ON 1=1 ;
where pod_cnt.cnt_dtp = pod_max.cnt_dtp ;
group by person.name, pod_cnt.cnt_dtp
