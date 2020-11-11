select * from MEDDELELSE
where MEDDELELSE_ID in (24570923 ,24570724)

select * from KOMMUNIKATION_AFTALE 
where KOMMUNIKATIONAFTALE_ID = 32776
select * from KUNDE_AFTALE 
where KOMMUNIKATIONAFTALE_ID = 32776

select * from KUNDE 
where kunde_id =32326

in (24570923 ,24570724)


select * from MEDDELELSE_LOG
where MEDDELELSE_ID = 24572881
order by MEDDELELSE_LOG_ID ;


 select * from SYN_AKTIVE_TILMELDINGER  
 
  where  cxr in (9876543210, 20509473, 31500893,31174759);
  
  
  select  * from  DP_MODTAGNE_FILER
where  fil_type ='TILMELDINGER'
order by fil_dato desc 
fetch first 10 rows ONLY;