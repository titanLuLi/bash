update LUDOMANIREGISTERAKTIV 
set CPR=lpad(round(dbms_random.value(1, 28)),2,'0') || lpad(round(dbms_random.value(1, 12)),2,'0') || lpad(round(dbms_random.value(0, 99)),2,'0') || 
round(dbms_random.value(0, 3))  || substr(cpr, 8,3)
where CPR like '0000%';

 select * from LUDOMANIREGISTERAKTIV
 where CPR like '0000%';
 
 
 
 select u.* from SPK_ADM_POR_USER u
 where u.user_id in ( 'w21490');

