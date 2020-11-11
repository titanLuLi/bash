select *  from SPILKONTROL.CONTROL_RESULT_MONOPOL
where
--valuename like '%Date' 
--and 
--CONTROL_RESULT_ID in (  774130 , 774157 ,775599 )
--or
value like '%Oct 10 18:%2020%'
; 
						
                        
select *  from SPILKONTROL.CONTROL_RESULT_MONOPOL 
where valuename like '%Date' 
--and value like '%-%'
order by id desc;

select *  from SPILKONTROL.CONTROL_RESULT_MONOPOL 
where valuename like 'LodtraekningDate'
order by id desc;




select * from TAMPERTOKENZIP
where FILENAME like '%1600236%';


where ID > 1000040400;


select * from DATAERRORSTATUS


--order by MODIFICATIONTIMESTAMP desc ;

where TAMPERTOKENID = 1600236;

select * from  REPLACEMENTDATA
where TAMPERTOKENZIP_ID = 1000040535 
 or id  = 1000040535  ;
--order by TAMPERTOKENZIP_ID desc ;
--where ID = 1000040535;

select *
from spilkontrol.erstatning_status es;



UPDATE "SPILKONTROL"."ERSTATNING_STATUS" SET LAST_UPDATE = TO_TIMESTAMP('2020-04-28 16:59:03.000000000', 'YYYY-MM-DD HH24:MI:SS.FF') WHERE ROWID = 'AABbSyAAEAACGqLAAA' AND ORA_ROWSCN = '633072610'


UPDATE "SPILKONTROL"."ERSTATNING_STATUS" SET LAST_UPDATE = sysdate WHERE id = 1000000633;






select --cd.control_name,
  count(*) antal
--  cd.control_name, cr.*
from spilkontrol.control_result cr
  join spilkontrol.control_definition cd on cd.id = cr.for_control
where 1 = 1
--  and cr.execute_start_time > to_date('26042020','ddmmyyyy')
  and cr.control_result_dateto > to_date('29012020','ddmmyyyy') -- 20489 d 27.04.2020
--group by cd.control_name
order by count(*) desc
;


select  count(*) antal, cd.id
from spilkontrol.control_result cr
  join spilkontrol.control_definition cd on cd.id = cr.for_control
where 1 = 1
  and cr.control_result_dateto > to_date('29012020','ddmmyyyy') -- 20489 d 27.04.2020
group by cd.id
order by count(*) desc
;

select count (*) from spilkontrol.control_result cr where cr.for_control = 3022 
and cr.control_result_note is null
  and cr.id not in (select crh.control_result from spilkontrol.control_result_header crh)
  and cr.control_result_dateto > to_date('28012020','ddmmyyyy');


delete from spilkontrol.control_result cr
where cr.for_control in (3022 )
  and cr.control_result_note is null
  and cr.id not in (select crh.control_result from spilkontrol.control_result_header crh)
;






select * from CONTROL_DEFINITION cd where cd.active='Y' and cd.TRIGGER_TYPE is null
order by cd.LASTDAYINLATESTSCHEDULEDRESULT 

select * from CONTROL_DEFINITION cd where id in (
3036, 3022)


select * from CONTROL_RESULT_NOTE
where control_result = 1000096518



select * from CONTROL_RESULT CR  ;
where 
 ((CR.control_Result_DateTo >= :dateFrom or :dateFrom is null) 
    and (CR.control_Result_DateTo <= :dateTo or :dateTo is null)) 

order by CR.control_Result_DateTo desc;


      (UPPER(CR.gameProvider.navn) = UPPER(:gameprovider) or :gameprovider is null) 
and   (UPPER(CR.controlDefinition.category) = UPPER(:category) or :category is null) 
and   ((:employeeHasResponsible = 'N' and RE is null) 
       or 
       (:employeeHasResponsible = 'Y' and :employeePrincipal is null and RE is not null) 
       or 
       (:employeeHasResponsible = 'Y' and UPPER(RE.principal) = UPPER(:employeePrincipal)) 
       or 
       (:employeeHasResponsible is null and :employeePrincipal is null))
and (UPPER(CR.isApproved) = UPPER(:approved) or :approved is null) 
and (UPPER(CR.hasFailed) = UPPER(:failed) or :failed is null) 
and







select * from 
CONTROL_EXECUTIONS_INFO
order by id desc;

select * from TAMPERTOKENLUKSTATUS
order by OPRETTELSESTIDSPUNKT desc; 

6683	Verificeret	20-APR-20 15.35.28.669000000		1000040792	N	InternalTestToken3	N
6682	Afsluttet	20-APR-20 15.34.19.014000000		1000040792	Y	InternalTestToken3	N

select * from  CONTROL_DEFINITION cd where cd.ACTIVE='Y' and cd.TRIGGER_TYPE is null
order by id desc;


where status = 'Klar'
order by OPRETTELSESTIDSPUNKT desc;
select * from CONTROL_TRIGGER_DATA
where 
--TRIGGER_TYPE = 'MonopolTalspilSlutStruktur'
 IDENTIFICATION= '130-000005607'
 order by id desc;
--and GAME_PROVIDER = 'InternalTestToken3'
select * from CONTROL_TRIGGER_DATA
order by id desc;

select * from CONTROL_TRIGGER_DATA
where TRIGGER_TYPE = 'MonopolTalspilStartStruktur'
--and IDENTIFICATION= '016-000005607'
and GAME_PROVIDER = 'InternalTestToken3'

select * from  MOFA_DANTOTO_SPIL_START
where spilproduktidentifikation= '016-000005607'

select * 
from spilkontrol.mofa_dantoto_spil_start st
 order by id desc;

where st.spilproduktidentifikation in ('87-91-20190401-SwingerGF93-66','87-91-20190401-SwingerGF93-33','97-91-20190401-SwingerGF93-33');



select st.spilproduktidentifikation, st.expectedendofgametime

from spilkontrol.mofa_dantoto_spil_start st

where st.spilproduktidentifikation in ('87-91-20190401-SwingerGF93-66','87-91-20190401-SwingerGF93-33','97-91-20190401-SwingerGF93-33');



select * from 
EMPLOYEE;

CONTROL_EXECUTIONS_INFO


select * from MV_DIM_FILOPLYSNINGER
where FILENAME = 'InternalTestToken3-1600236.zip';
