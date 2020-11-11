

select * from agency;

select * from KANAL_TYPE;

alter table "AOGD"."KUNDE" drop column "ADVISEMAIL";
ALTER TABLE "AOGD"."KUNDE" ADD  "ADVISEMAIL" VARCHAR2(70);

INSERT INTO "AOGD"."KANAL_TYPE" (KANAL_TYPE_ID, NAVN, GYLDIFRA, GYLDIGTIL, KRAEVERSAMTYKKE, NUMMER, VERNO, AOGD_OPRETTET) VALUES ('6', 'email(cvr/p/uvir)', TO_DATE('2020-10-05 19:56:51', 'YYYY-MM-DD HH24:MI:SS'), TO_DATE('1990-10-05 19:56:56', 'YYYY-MM-DD HH24:MI:SS'), 'true', '6', '6', TO_DATE('2020-10-05 19:57:24', 'YYYY-MM-DD HH24:MI:SS'))


select * from "AOGD"."KUNDE" where nummer = 31500893;
------


delete  from "AOGD"."KUNDE" where nummer = 31500893;

select * from KUNDE_AFTALE where kunde_id =74865;
70983	75264	74865-->6	14-NOV-16 15:51:46	
delete   from KUNDE_AFTALE  where kunde_id =74865;

select * from KOMMUNIKATION_AFTALE where KOMMUNIKATIONAFTALE_ID =75264;
delete from KOMMUNIKATION_AFTALE where KOMMUNIKATIONAFTALE_ID =75264;

SELECT
    *
FROM MEDD_KOMMUNIKATIONAFTALE;

select * from ENDRING_LOG where KOMMUNIKATIONAFTALE_ID = 75264;
delete  from ENDRING_LOG where KOMMUNIKATIONAFTALE_ID = 75264;



select * from SKABELON_SET;
-------------research--------------

select * from KUNDE 
where ADVISEMAIL is not null;

select * from KANAL_ADRESSE
where KANAL_ADRESSE_ID = 264920282;

264920282	1093259	1	0	7561873	Ja	75264	0	28-SEP-20 12:55:22	


select * from MEDDELELSE_KANAL
where KANAL_TYPE_ADVIS_ID = 6;

select * from MEDDELELSE_LOG
where meddelelse_id in (24637706)
order by MEDDELELSE_LOG_id desc;

select * from MEDDELELSE_LOG
where Message like '%Medarbejder nummer%';

order by MEDDELELSE_LOG_id ;

select ea.* from MEDDELELSE m , KANAL_ADRESSE ka ,KONTAKT_OPLYSNING ko , EMAIL_ADRESSE ea
where meddelelse_id = 479698 
and m.KANAL_ADRESSE_id= ka.KANAL_ADRESSE_id
and ko.KONTAKT_OPLYSNING_id = ka.KONTAKT_OPLYSNING_id;

select kp.* from MEDDELELSE m ,KOMMUNIKATION_PREFERENCE kp 
where m. meddelelse_id = 479698 
and m.meddelelse_id = kp.KANAL_ADRESSE_MEDDELELSE_ID;


select * from KANAL_TYPE;
7556606 
7561743

select ko.* from MEDDELELSE m 
 join KANAL_ADRESSE ka  on  m.KANAL_ADRESSE_id= ka.KANAL_ADRESSE_id
 join KONTAKT_OPLYSNING ko on  ko.KONTAKT_OPLYSNING_id = ka.KONTAKT_OPLYSNING_id
 --join EMAIL_ADRESSE ea  on  ea.KONTAKT_OPLYSNING_id = ka.KONTAKT_OPLYSNING_id
where meddelelse_id = 479698;




select kaa.* from MEDDELELSE m 
join KOMMUNIKATION_AFTALE ka on m.KOMMUNIKATIONAFTALE_ID = ka.KOMMUNIKATIONAFTALE_ID
--join KOMMUNIKATION_PREFERENCE kp on kp.KOMMUNIKATIONAFTALE_ID = ka.KOMMUNIKATIONAFTALE_ID
join KANAL_ADRESSE kaa on ka.KOMMUNIKATIONAFTALE_ID = kaa.KOMMUNIKATIONAFTALE_ID
--join EMAIL_ADRESSE ea  on ea.KONTAKT_OPLYSNING_id = kaa.KONTAKT_OPLYSNING_id
where m.meddelelse_id  = 479698
and kaa.KONTAKT_OPLYSNING_id= 7556606
and kaa.KANAL_TYPE_ID = 3;


select * from MEDDELELSE m 
where m.KANAL_ADRESSE_id in (264874713,264916995);

select * from KANAL_ADRESSE ka 
where ka.KONTAKT_OPLYSNING_id in (7561743, 7556606,7561744)


264916996	1089973	3	0	7561744	Ja	68207	0	17-SEP-20 09:23:49	


select * from EMAIL_ADRESSE ea 
where ea.EMAIL in ( 'tnl@kmd.dk');

update EMAIL_ADRESSE ea
set EMAIL = 'tnl@kmd.dk'
where ea.EMAIL = '2222@bbb.dk';


select * from EMAIL_ADRESSE ea 
where ea.KONTAKT_OPLYSNING_id in (7556606,7561743,7561744);

83448	2222@bbb.dk	Ingen	7556606	0	22-FEB-19 15:32:16	

select * from MEDDELELSE_TYPE where MEDDELELSE_TYPE_NUMMER = 'DIAS_MT11';