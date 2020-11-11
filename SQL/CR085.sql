

drop table SPK_ADM_POR_USER_ROLE_H_CR090;
drop table SPK_ADM_POR_USER_ROLE_CR090;
drop table SPK_ADM_POR_USER_H_CR090;
drop table SPK_ADM_POR_USER_CR090;
drop table SPK_ADM_POR_USER_ROLE_CR090;






update EBOKS_RECEIPT
set 
STATUS = 'CREATED',
FAILED_TIMES = 0 ,
FAILURE_CODE =''
where Id >=20000
and STATUS = 'ERROR';
commit;

select * from EBOKS_RECEIPT
--where Id >70000
--where  STATUS = 'ERROR';

where  STATUS = 'CREATED';

delete  EBOKS_RECEIPT where Id  >=20000;


delete from  QRTZ_LOCKS 
where SCHED_NAME in (select SCHED_NAME from QRTZ_JOB_DETAILS where JOB_GROUP like  '%JOBGROUP');

delete from QRTZ_CRON_TRIGGERS 
where TRIGGER_GROUP like  '%TRIGGERGROUP';
delete from  QRTZ_FIRED_TRIGGERS
where TRIGGER_GROUP like  '%TRIGGERGROUP';

delete from QRTZ_SIMPLE_TRIGGERS
where TRIGGER_GROUP like  '%TRIGGERGROUP';

delete from QRTZ_TRIGGERS
where TRIGGER_GROUP like  '%TRIGGERGROUP';
delete from QRTZ_JOB_DETAILS
where JOB_GROUP like  '%JOBGROUP';
commit;



