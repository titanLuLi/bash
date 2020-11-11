--Kontrol af af ingen meddelelser forbliver i status 'Klar til production'.
--New Alarm 3
select count(*) antal,mm.meddelelse_id, mm.oprettet_af_fag_system,mm.meddelelse_status,mt.MEDDELELSE_TYPE_NUMMER
from aogd.MEDDELELSE mm
join AOGD.MEDDELELSE_TYPE mt on mm.meddelelse_type_id = mt.MEDDELELSE_TYPE_ID
where 
mm.meddelelse_status = 'KLAR_TIL_PRODUKTION' and
mm.AOGD_OPRETTET < sysdate - 1/24 and
mm.AOGD_OPRETTET > sysdate - 1
group by mm.meddelelse_id,mm.oprettet_af_fag_system,mm.meddelelse_status,mt.MEDDELELSE_TYPE_NUMMER order by meddelelse_status;


-- til ISNORDIC
--New Alarm 3 meddelelse_id Stuck in KLAR_TIL_PRODUKTION – til at levere indhold til pob sag og være genstand for > 0 rows chekket der gør alarmen går
select mm.meddelelse_id,mm.oprettet_af_fag_system,mm.meddelelse_status,mm.aogd_oprettet,mt.MEDDELELSE_TYPE_NUMMER
from aogd.MEDDELELSE mm
join AOGD.MEDDELELSE_TYPE mt on mm.meddelelse_type_id = mt.MEDDELELSE_TYPE_ID
where 
mm.meddelelse_status = 'KLAR_TIL_PRODUKTION' and
mm.AOGD_OPRETTET < sysdate - 1/24 and
mm.AOGD_OPRETTET > sysdate - 1;