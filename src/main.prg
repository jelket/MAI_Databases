
select dtp.dtp_date, dtp.description, pod.role, violation.law, person.name;
from dtp;
	join participant_of_dtp pod on pod.dtp_id = dtp.id AND dtp.dtp_date between CTOD('11/01/2021') and CTOD('12/25/2021');
	left outer join violation on pod.id = violation.participant_id ;
	left outer join person on pod.person_id = person.id ;
where person.name like '������%'
