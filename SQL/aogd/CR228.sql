

--where ENKELTMANDSVIRKSOMHEDSEJER is not null ;

select * from PRINTNET_PDF 
where PRINTNET_PDF_id in (934549 ,934572);
select * from  DP_MASSEAFENDELSE_REST
where PRINTNET_PDF_id = 934572;
select * from DP_MASSEFORSENDELSE
where FORSENDELSE_ID = 1011732;

select * from DP_MASSEAFSENDELSE
where DP_MASSAFS_ID =103384;
--where cxr = '';
select * from MEDDELELSE_LOG
--where meddelelse_id in (498081)
where meddelelse_id in (498111)
order by MEDDELELSE_LOG_id  desc;

"Meddelelse sendt til E-boks. 
cxr=31500893, cxrType=V, pdfId=934572, forsendelse=1011732, materialeId=187468"

103384
select m.* from MEDDELELSE m 
--, MEDD_FORMATERET_MEDD  mfm
where m.meddelelse_id  = 498082;
--and m.meddelelse_id = mfm.meddelelse_id ;

select * from MEDD_FORMATERET_MEDD  mfm
where mfm.MEDDELELSE_ID = 498082; 

select * from PRINTNET_PDF 
where PRINTNET_PDF_id = 393348 ;


select * from DP_KVITTERING
where EKSTERN_FORSENDELSE_ID = '004482160198960135655977';

select * from DP_MASSEAFENDELSE_REST
where EKSTERN_FORSENDELSE_ID = 004482160198300074240114;

ALTER TABLE KUNDE
  ADD  ENKELTMANDSVIRKSOMHEDSEJER VARCHAR2(10);  

select * from CONFIGURATION 
where CONFIGURATION_KEY = 'AKTUELDELTAGER_FILE_LOCATION';

select * from CONFIGURATION ;
 

INSERT INTO "AOGD"."CONFIGURATION" (CONFIGURATION_KEY, CONFIGURATION_VALUE, VERNO, AOGD_OPRETTET, AOGD_OPDATERET) 
 VALUES ('AKTUELDELTAGER_FILE_LOCATION', '/opt/oracle/middleware/wls/domains/wls-domain/config/applications/aogd/ehvervsstyrelsen.properties', '1', TO_DATE('2020-05-28 13:41:43', 'YYYY-MM-DD HH24:MI:SS'), TO_DATE('2020-05-28 13:41:47', 'YYYY-MM-DD HH24:MI:SS'));
Commit;


--test--

select * from DP_MASSEFORSENDELSE
order by DP_MASS_ID desc fETCH FIRST 3 ROWS ONLY ;

select * from DP_MASSEFORSENDELSE where cxr = 1110822061 
order by DP_MASS_ID desc fETCH FIRST 3 ROWS ONLY ;

select * from MEDDELELSE_LOG
where MEDDELELSE_ID = 24639165
order by MEDDELELSE_LOG_ID ;

---errror 35909907
select * from MEDDELELSE_LOG
where MEDDELELSE_ID = 24638137
order by MEDDELELSE_LOG_ID ;

select * from MEDDELELSE_LOG
where MEDDELELSE_ID = 24638136
order by MEDDELELSE_LOG_ID ;

select * from MEDDELELSE_LOG
where message = 'check kunde cvr:35909249';


select * from kunde
where nummer in (35909907, 35909249,20509473);



select * from SYN_AKTIVE_TILMELDINGER 
where cxr in (31500893, 20509473, 35909907, 35909249);

---Reset data--
delete from DP_TILMELDING_1
where cxr =  45678932;
delete from DP_TILMELDING_2
where cxr =  45678932;
update  kunde
set ENKELTMANDSVIRKSOMHEDSEJER = null
where nummer = 20509473;

