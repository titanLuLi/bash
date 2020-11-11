

--Kontrol af at ingen meddelelser forbliver i status 'Send til produktion'
--Alarm 4

-- Bemærkning: 4.A.x
-- Hvis Alarm 4 har løst sig selv så,
-- skriv i POB: Meddelelser kommet videre

-- Tjek 4.A.1
select count(*) antal,mm.meddelelse_id, mm.oprettet_af_fag_system,mm.meddelelse_status,mt.MEDDELELSE_TYPE_NUMMER
from aogd.MEDDELELSE mm
join AOGD.MEDDELELSE_TYPE mt on mm.meddelelse_type_id = mt.MEDDELELSE_TYPE_ID
where 
mm.meddelelse_status = 'SENDT_TIL_PRODUKTION' and
mm.AOGD_OPRETTET < TO_DATE('2020-06-16-12', 'YYYY-MM-DD-HH24') - 5/24 and 
mm.AOGD_OPRETTET > TO_DATE('2020-06-16-12', 'YYYY-MM-DD-HH24') - 2.5
group by mm.meddelelse_id,mm.oprettet_af_fag_system,mm.meddelelse_status,mt.MEDDELELSE_TYPE_NUMMER order by meddelelse_status;


-- Tjek 4.A.2
select distinct mm.MEDDELELSE_ID
from aogd.MEDDELELSE mm
join AOGD.MEDDELELSE_TYPE mt on mm.meddelelse_type_id = mt.MEDDELELSE_TYPE_ID
where
mm.meddelelse_status = 'SENDT_TIL_PRODUKTION' and
mm.AOGD_OPRETTET < TO_DATE('2020-06-16-12', 'YYYY-MM-DD-HH24') - 5/24 and 
mm.AOGD_OPRETTET > TO_DATE('2020-06-16-12', 'YYYY-MM-DD-HH24') - 2.5
;

-- Tjek 4.B alarm 4 PÅ id
select * from AogD.meddelelse mm
where mm.MEDDELELSE_ID in ('xxxxx') -- erstat xxxxx med id nummerer, 1 eller flere id numre
and mm.indhold like '%xsi:nil%';

-- KØR UPDATE 4.B på ID, hvis sædvanlige fejl i tjek 4.a så kør denne, husk at rette id til det korrekte
-- når sagen lukkes i POB skriv:   
-- Meddelelser sat til PRODUKTION_FEJL, grundet Inspire Automation er ikke i stand til at processere den modtagne xml (xsi:nil) 
update AogD.meddelelse mm
set mm.MEDDELELSE_STATUS = 'PRODUKTION_FEJL'
where mm.MEDDELELSE_ID in ('xxxxx','xxxxx','xxxxx')
and mm.indhold like '%xsi:nil%';

commit; --! husk at lave commit efter update


