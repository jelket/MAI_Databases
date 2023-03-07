
select TOP 1 person.name, COUNT(1);
from participant_of_dtp;
	join person on participant_of_dtp.person_id = person.id ;
GROUP by person.name ORDER by 2 desc
