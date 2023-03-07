SELECT;
	vehicle.pts, vehicle.model;
FROM vehicle;
WHERE vehicle.id NOT IN (;
	SELECT pod.vehicle_id;
	FROM dtp, participant_of_dtp AS pod, vehicle;
	WHERE;
		dtp.id = pod.dtp_id AND dtp.id = 1;
	)