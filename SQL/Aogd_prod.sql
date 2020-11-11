select NVL(length(PP.PRINTNET_PDF_DATA), 0) AS PDF_SIZE from  aogd.PRINTNET_PDF PP 
where  pp.printnet_pdf_id =35917905;
order by PDF_SIZE desc;


select count (PRINTNET_PDF_ID) from  aogd.PRINTNET_PDF PP;

select * from  aogd.PRINTNET_PDF PP
order by pp.printnet_pdf_id desc;



 select mfm.MEDDELELSE_ID from aogd.MEDD_FORMATERET_MEDD mfm  
       join aogd.FORMATERET_MEDD_FORSEND fmf on (mfm.FORMATERET_MEDDELELSE_ID = fmf.FORMATERET_MEDDELELSE_ID) 
       join aogd.DP_MASSEAFENDELSE_REST  dmaf on (dmaf.FORSENDELSE_ID = fmf.FORSENDELSE_ID) 
  where dmaf.id = 101; 


select *  from aogd.MEDDELELSE 
where  MEDDELELSE_id = 370026968;

 select mfm.MEDDELELSE_ID from aogd.MEDD_FORMATERET_MEDD mfm  
       join aogd.FORMATERET_MEDD_FORSEND fmf on (mfm.FORMATERET_MEDDELELSE_ID = fmf.FORMATERET_MEDDELELSE_ID) 
       join aogd.DP_MASSEFORSENDELSE  dm on (dm.FORSENDELSE_ID = fmf.FORSENDELSE_ID) 
  where dm.DP_MASS_ID = 18443420; 
