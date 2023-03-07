
CREATE TABLE dtp
(
	id  Numeric NULL,
	description  Character(20) NULL,
	date  Date NULL,
	adress  Character(18) NULL,
	gai_id  Numeric NOT NULL
)
;



CREATE INDEX XIF1dtp ON dtp
(
	gai_id  ASC
)
;



CREATE UNIQUE INDEX XPKdtp ON dtp
(
	id  ASC
)
;



CREATE TABLE gai
(
	id  Numeric NULL,
	name  Character(20) NULL,
	license  Numeric NULL,
	department  Character(20) NULL
)
;



CREATE UNIQUE INDEX XPKgai ON gai
(
	id  ASC
)
;



CREATE TABLE participant_of_dtp
(
	id  Numeric NULL,
	vehicle_id  Numeric NOT NULL,
	person_id  Numeric NOT NULL,
	dtp_id  Numeric NOT NULL,
	role  Character(20) NULL
)
;



CREATE INDEX XIF1participant_of_dtp ON participant_of_dtp
(
	dtp_id  ASC
)
;



CREATE INDEX XIF2participant_of_dtp ON participant_of_dtp
(
	person_id  ASC
)
;



CREATE INDEX XIF3participant_of_dtp ON participant_of_dtp
(
	vehicle_id  ASC
)
;



CREATE UNIQUE INDEX XPKparticipant_of_dtp ON participant_of_dtp
(
	id  ASC
)
;



CREATE TABLE person
(
	id  Numeric NULL,
	name  Character(20) NULL,
	birthday  Date NULL,
	passport  Numeric NULL,
	passport_where  Character(20) NULL,
	passport_when  Date NULL
)
;



CREATE UNIQUE INDEX XPKperson ON person
(
	id  ASC
)
;



CREATE TABLE vehicle
(
	id  Numeric NULL,
	person_id  Numeric NOT NULL,
	pts  Numeric NULL,
	model  Character(20) NULL,
	category  Character(20) NULL
)
;



CREATE INDEX XIF1vehicle ON vehicle
(
	person_id  ASC
)
;



CREATE UNIQUE INDEX XPKvehicle ON vehicle
(
	id  ASC
)
;



CREATE TABLE violation
(
	id  Numeric NULL,
	participant_id  Numeric NOT NULL,
	law_number  Numeric NULL,
	law  Character(20) NULL
)
;



CREATE INDEX XIF1violation ON violation
(
	participant_id  ASC
)
;



CREATE UNIQUE INDEX XPKviolation ON violation
(
	id  ASC
)
;


