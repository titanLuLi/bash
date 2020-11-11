select * from (
   select count (ID) , daily , 'closed' from (
        select ID, trunc(TIDSPUNKTUDSTEDT,'DD') as daily from TT.TAMPERTOKENS
        where TIDSPUNKTUDSTEDT > sysdate - 7
    ) group by daily   
UNION
   select count (ID) , daily , 'not closed' from (
        select ID, trunc(TIDSPUNKTUDSTEDT,'DD') as daily from TT.TAMPERTOKENS
        where TIDSPUNKTUDSTEDT > sysdate - 7
        and TIDSPUNKTLUKKET is null
        order by daily
    ) group by daily
)
order by daily ;
    






