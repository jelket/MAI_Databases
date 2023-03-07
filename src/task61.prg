SELECT pod2.vehicle_id, COUNT(1) cnt_dtp ;
FROM participant_of_dtp pod2, participant_of_dtp pod ;
WHERE pod.vehicle_id = vehicle.id AND dtp.dtp_date between CTOD('11/01/2021') and CTOD('12/25/2021');
GROUP BY pod2.vehicle_id ;
INTO CURSOR vehicle_cnt ;

SELECT vehicle.pts, vehicle_cnt.cnt_dtp ;
FROM vehicle_cnt, vehicle;
WHERE vehicle.id = vehicle_cnt.vehicle_id ;
	AND vehicle_cnt.cnt_dtp = (SELECT MAX(cnt_dtp) FROM person_cnt)