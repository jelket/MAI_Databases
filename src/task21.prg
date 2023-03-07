SELECT;
	gai.name, gai.license;
FROM gai;
WHERE gai.id NOT IN (;
	SELECT dtp.gai_id;
	FROM dtp, participant_of_dtp AS pod, vehicle;
	WHERE;
		pod.dtp_id = dtp.id AND pod.vehicle_id = vehicle.id;
		AND vehicle.pts = 111;
	)