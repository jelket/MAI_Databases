
select vehicle.pts, pod_cnt.cnt_dtp  ;
from participant_of_dtp pod ;
	JOIN dtp ON pod.dtp_id = dtp.id AND dtp.dtp_date between CTOD('11/01/2021') and CTOD('12/25/2021');
	join vehicle on pod.vehicle_id = vehicle.id ; 
	JOIN (select pod2.vehicle_id, COUNT(1) cnt_dtp FROM participant_of_dtp pod2 where pod2.role = 'Водитель' GROUP BY pod2.vehicle_id) pod_cnt ON pod.vehicle_id = pod_cnt.vehicle_id ;
	JOIN (select top 1 COUNT(1) cnt_dtp FROM participant_of_dtp pod2 where pod2.role = 'Водитель' GROUP BY pod2.person_id order BY cnt_dtp DESC ) pod_max ON 1=1 ;
where pod_cnt.cnt_dtp = pod_max.cnt_dtp AND pod.role = 'Водитель';
group by vehicle.pts, pod_cnt.cnt_dtp
