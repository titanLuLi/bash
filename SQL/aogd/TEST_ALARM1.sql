
-- Thomas F_E har opdateret ( fjernet where 1=1 og tilføjet antal ved count(*)

-- New Alarm 1 meddelelse_id Stuck in OPRETTET_ONLINE count og group til eget opslag i sql developer
select count(*) antal,mm.oprettet_af_fag_system,mm.meddelelse_status,mt.MEDDELELSE_TYPE_NUMMER
from aogd.MEDDELELSE mm
join AOGD.MEDDELELSE_TYPE mt on mm.meddelelse_type_id = mt.MEDDELELSE_TYPE_ID
where
mm.meddelelse_status = 'OPRETTET_ONLINE' and
mm.AOGD_OPRETTET < sysdate - 20/(24*60) and 
mm.AOGD_OPRETTET > sysdate - 1
group by mm.oprettet_af_fag_system,mm.meddelelse_status,mt.MEDDELELSE_TYPE_NUMMER order by meddelelse_status;





-- til ISNORDIC
--New Alarm 1 meddelelse_id Stuck in OPRETTET_ONLINE – til at levere indhold til pob sag og være genstand for > 0 rows chekket der gør alarmen går
select mm.meddelelse_id,mm.oprettet_af_fag_system,mm.meddelelse_status,mm.aogd_oprettet,mt.MEDDELELSE_TYPE_NUMMER
from aogd.MEDDELELSE mm
join AOGD.MEDDELELSE_TYPE mt on mm.meddelelse_type_id = mt.MEDDELELSE_TYPE_ID
where 
mm.meddelelse_status = 'OPRETTET_ONLINE' and
mm.AOGD_OPRETTET < sysdate - 20/(24*60) and 
mm.AOGD_OPRETTET > sysdate - 1;
