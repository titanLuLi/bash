select *
from SYS.ALL_TAB_COLS atc
where lower(atc.COLUMN_NAME)='aogd_opdateret'
and atc.owner='AOGD'
order by atc.TABLE_NAME;








select * from agency ;
select * from DP_MASSEAFSENDELSE order by DP_MASSAFS_ID desc ;


update DP_MASSEAFSENDELSE
set STATUS_KODE = 'O' ,
afsendelse_tid =  null
where STATUS_KODE = 'E' 
and afsendelse_tid > sysdate - interval '1' year ;


select DP_MASSAFS_ID,  AFSENDELSE_FILNAVN ,'     ', ALLOKERING_TID, AFSENDELSE_TID from DP_MASSEAFSENDELSE where
afsendelse_tid > sysdate - interval '1' year 
order by DP_MASSAFS_ID desc ; 

select * from CONFIGURATION;

--shipMasseAfsendelse_jobEnabled


select maf.*  from  DP_MASSEAFSENDELSE maf , DP_MASSEFORSENDELSE mff
where maf. DP_MASSAFS_ID =  mff.DP_MASSAFS_ID
and mff.DP_MASS_ID in (5315468,5315467,5315466,5315469);

select * from  EMAIL_MESSAGE 
where FORSENDELSE_ID in (1433707,1433708,1433709,1433710);


--delete from DP_MASSEAFSENDELSE 
select *  from DP_MASSEAFSENDELSE 


 SELECT   m.*  FROM   meddelelse                m     
             JOIN medd_formateret_medd      mfm ON mfm.meddelelse_id = m.meddelelse_id
             JOIN formateret_medd_forsend   fmf ON mfm.formateret_meddelelse_id = fmf.formateret_meddelelse_id
             JOIN dp_masseforsendelse       dpm ON fmf.forsendelse_id = dpm.forsendelse_id
             WHERE    m.meddelelse_id   = 24637706

order by DP_MASSAFS_ID desc ; 

where DP_MASSAFS_ID in (106252
  -- 106244,106245,106242,106243
);
--UPDATE "AOGD"."DP_MASSEFORSENDELSE" SET ALLOKERING_MARKERING = '0', ALLOKERING_TID = TO_DATE('2020-09-24 13:46:33', 'YYYY-MM-DD HH24:MI:SS'),
--STATUS_KODE = 'O', DP_MASSAFS_ID = '' WHERE ROWID = 'AAAqBuAADAAE/iaAAh' AND ORA_ROWSCN = '1427853602'

UPDATE "AOGD"."DP_MASSEFORSENDELSE" 
SET ALLOKERING_MARKERING = '0', ALLOKERING_TID = sysdate, EKSTERN_FORSENDELSE_ID='', STATUS_KODE = 'O', DP_MASSAFS_ID = '' 
WHERE DP_MASS_ID in (5315468,5315467,5315466,5315469);


select * from DP_MASSEFORSENDELSE
--where  DP_MASSAFS_ID in ( 106240 , 106238, 106239,106241);
where DP_MASS_ID in (5315468,5315467,5315466,5315469);
elect * from DP_MASSEFORSENDELSE



select * from PRINTNET_PDF
where PRINTNET_PDF_ID =1358156;



select * from DP_MASSEFORSENDELSE
where EKSTERN_FORSENDELSE_ID in (
'003742_20201020120225_64372'); 

select * from MEDDELELSE_LOG
where meddelelse_id in (24639376)
--where meddelelse_id in 479795
--,24614541,24614542,24614543)
order by MEDDELELSE_LOG_id  ;


select * from DP_KVITTERING
where EKSTERN_FORSENDELSE_ID in 
('004533_20200928171848_59435'); 

select * from agency 
where code in (
'BOR',
'TLD',
'MTR',
'VUR');