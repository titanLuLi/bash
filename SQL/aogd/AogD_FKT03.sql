 UPDATE  MEDDELELSE SET MEDDELELSE_STATUS = 'FORMODET_AFSENDT'  
WHERE  meddelelse_id = ( 
			 SELECT   m.meddelelse_id  FROM   meddelelse                m     
             JOIN medd_formateret_medd      mfm ON mfm.meddelelse_id = m.meddelelse_id
             JOIN formateret_medd_forsend   fmf ON mfm.formateret_meddelelse_id = fmf.formateret_meddelelse_id
             JOIN dp_masseforsendelse       dpm ON fmf.forsendelse_id = dpm.forsendelse_id
             WHERE   dpm.DP_MASS_ID  = 5137644
             )
;
select * from dp_masseforsendelse
where DP_MASS_ID=5137644 ;

SELECT  r.ID,  r.CXR,  r.STATUS_KODE,  r.PROEVIGEN,  r.EKSTERN_FORSENDELSE_ID ,  r.MATERIALE_ID,  r.SENDER_ID,  r.DP_MASS_ID,  p.PRINTNET_PDF_DATA 
FROM DP_MASSEAFENDELSE_REST r  
LEFT JOIN PRINTNET_PDF p on p.PRINTNET_PDF_ID = r.PRINTNET_PDF_ID 

WHERE r.STATUS_KODE = 'I' AND r.ALLOKERING_MARKERING = 10  and PROEVIGEN = 0  offset 0 rows fetch next 500 rows only ;


SELECT  r.ID,  r.CXR,  r.STATUS_KODE,  r.PROEVIGEN,  r.EKSTERN_FORSENDELSE_ID ,  r.MATERIALE_ID,  r.SENDER_ID,  r.DP_MASS_ID,  p.PRINTNET_PDF_DATA  FROM DP_MASSEAFENDELSE_REST r  LEFT JOIN PRINTNET_PDF p on p.PRINTNET_PDF_ID = r.PRINTNET_PDF_ID WHERE r.STATUS_KODE = 'I' AND r.ALLOKERING_MARKERING = 10  and PROEVIGEN = 0  offset 0 rows fetch next 500 rows only 

SELECT   m.*  FROM          meddelelse     m  
JOIN medd_formateret_medd      mfm ON mfm.meddelelse_id = m.meddelelse_id    
JOIN formateret_medd_forsend   fmf ON mfm.formateret_meddelelse_id = fmf.formateret_meddelelse_id
JOIN dp_masseforsendelse       dpm ON fmf.forsendelse_id = dpm.forsendelse_id
WHERE   dpm.DP_MASS_ID  =  5137644;



SELECT  dpm.*  FROM          meddelelse     m  
JOIN medd_formateret_medd      mfm ON mfm.meddelelse_id = m.meddelelse_id    
JOIN formateret_medd_forsend   fmf ON mfm.formateret_meddelelse_id = fmf.formateret_meddelelse_id
JOIN dp_masseforsendelse       dpm ON fmf.forsendelse_id = dpm.forsendelse_id
where m.meddelelse_id = 23985732;

select * from MEDDELELSE
where meddelelse_id in (23985862);


select * from MEDDELELSE_LOG
where meddelelse_id in (23985870)
order by MEDDELELSE_LOG_id desc;

select * from DP_KVITTERING