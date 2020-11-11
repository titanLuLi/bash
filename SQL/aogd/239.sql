select * from agency;

SELECT  M.*  FROM  MEDDELELSE M   
  JOIN MEDD_FORMATERET_MEDD  MFM ON MFM.MEDDELELSE_ID = M.MEDDELELSE_ID  
  JOIN FORMATERET_MEDD_FORSEND   FMF ON MFM.FORMATERET_MEDDELELSE_ID = FMF.FORMATERET_MEDDELELSE_ID  
  JOIN DP_MASSEFORSENDELSE  DPM ON FMF.FORSENDELSE_ID = DPM.FORSENDELSE_ID  WHERE  DPM.EKSTERN_FORSENDELSE_ID = '004482160501396255419833' ;


select * from DP_KVITTERING 
where EKSTERN_FORSENDELSE_ID = '004482160501396255419833';



drop index  FAILED_SELECT_I;
CREATE INDEX  DP_MASS_ID_I ON Aogd.DP_MASSEAfENDELSE_REST(DP_MASS_ID);
drop index  Aogd.FAILED_SELECT_I;






---Test data ---

update DP_MASSEFORSENDELSE
set ALLOKERING_MARKERING = 0 ,  EKSTERN_FORSENDELSE_ID = null,  STATUS_KODE ='I',  DP_MASSAFS_ID = null,   DP_MASSAFS_RES_ID = null,  AOGD_OPDATERET = null,Agency_code= 'DUM',
    CXR = '0505034175',     CXR_TYPE = 'P',  MATERIALE_ID = 187468,     printnet_PDF_id = 440162
where DP_MASS_ID  in ( 
5045623,5045622,5045621,5045620,5045619
);
commit;


update DP_MASSEFORSENDELSE
set ALLOKERING_MARKERING = 0 ,  EKSTERN_FORSENDELSE_ID = null,  STATUS_KODE ='I',  DP_MASSAFS_ID = null,   DP_MASSAFS_RES_ID = null,  AOGD_OPDATERET = null,Agency_code= 'DUM',
    CXR = '31500893',    CXR_TYPE = 'V',    MATERIALE_ID = 187468,    printnet_PDF_id = 440162
where DP_MASS_ID  in ( 
5045617,5045618,5045616,5045614,5045615
);
commit;

select * from DP_MASSEFORSENDELSE
where FORSENDELSE_ID = 1454190; 

DP_MASSEAFENDELSE_REST 
where  5319521

select * from MEDDELELSE_LOG
where meddelelse_id in (23986046)
order by MEDDELELSE_LOG_id  ;


select * from DP_MASSEFORSENDELSE
where DP_MASS_ID  in ( 
5045617,5045618,5045616,5045614,5045615,5045623,
5045622,5045621,5045620,5045619
);

select * from DP_MASSEAFENDELSE_REST
where DP_MASS_ID  in ( 
5045617,5045618,5045616,5045614,5045615,5045623,
5045622,5045621,5045620,5045619
);


select * from  printnet_PDF 
where printnet_PDF_id = 440162
order by printnet_PDF_id desc;

select *from MEDDELELSE_LOG
where source ='SentToEboks' 
order by MEDDELELSE_LOG_id desc 
fetch FIRST 50 ROWS ONLY;

select *  from DP_MODTAGNE_FILER order by AOGD_OPRETTET desc fetch FIRST 5 ROWS ONLY;

select * from DP_KVITTERING
where CXR in ('31500893', '0505034175' )
order by  AOGD_OPRETTET desc  fetch FIRST 35 ROWS ONLY;



select * from DP_MASSEAFENDELSE_REST;

---Test data end  ---


Step 1 
uPDATE DP_MASSEFORSENDELSE DM 
   SET DM.ALLOKERING_MARKERING = ? , STATUS_KODE= 'T' ,ALLOKERING_TID = SYSDATE 
    WHERE EXISTS (SELECT 1 FROM AGENCY A WHERE AND DM.AGENCY_CODE = A.CODE ) 
	  AND DM.ALLOKERING_MARKERING = 0 
      

UPDATE DP_MASSEFORSENDELSE DM  
SET DM.ALLOKERING_MARKERING = ? , STATUS_KODE= 'T' ,ALLOKERING_TID = SYSDATE 
WHERE EXISTS (SELECT 1 FROM AGENCY A WHERE A.EBOKSVERSION = 1 AND DM.AGENCY_CODE = A.CODE )  AND DM.ALLOKERING_MARKERING = 0 
offset 0 rows fetch next 1 rows only ;

 where  DP_MASS_ID = (
 select DP_MASS_ID from DP_MASSEFORSENDELSE sdm 
where EXISTS (SELECT 1 FROM AGENCY A WHERE A.EBOKSVERSION = 1 AND sdm.AGENCY_CODE = A.CODE ) AND sdm.ALLOKERING_MARKERING = 0   
 fETCH FIRST 1 ROWS ONLY );

select * from DP_MASSEAfENDELSE_REST rm where 
AOGD_OPDATERET < sysdate - interval '2' hour;

select sysdate - interval '1' hour from dual;

UPDATE DP_MASSEFORSENDELSE DM  SET DM.ALLOKERING_MARKERING = 10 , 
DM.STATUS_KODE= 'T', 
DM.ALLOKERING_TID = SYSDATE , 
DM.EKSTERN_FORSENDELSE_ID = '159462711239561114'  
WHERE EXISTS (SELECT 1 FROM AGENCY A WHERE A.EBOKSVERSION = 1 AND DM.AGENCY_CODE = A.CODE ) AND DM.ALLOKERING_MARKERING = 1;


----- ========================================================================================

ALTER TABLE AGENCY ADD  eboksVersion NUMBER(1,0) DEFAULT 0; 

ALTER TABLE AGENCY DROP COLUMN eboksVersion;
------- 
create table DP_MASSEAfENDELSE_REST (
ID NUMBER(10,0)  GENERATED BY DEFAULT ON NULL AS IDENTITY,
CXR	VARCHAR2(10 CHAR) not null,
CXR_TYPE	VARCHAR2(1 CHAR) not null,
MATERIALE_ID	NUMBER(15,0)	not null,
PRINTNET_PDF_ID	NUMBER(10,0) 	not null,
SENDER_ID NUMBER(5,0)	not null,
EKSTERN_FORSENDELSE_ID VARCHAR2(30 CHAR) ,
ALLOKERING_MARKERING NUMBER(5,0) ,
STATUS_KODE VARCHAR2(2 CHAR) not null,
PROEVIGEN  NUMBER(2,0) default 0 not null,
AFSENDELSE_TID DATE ,
FORSENDELSE_ID	NUMBER(10,0) not null,
AOGD_OPRETTET DATE DEFAULT SYSDATE,
AOGD_OPDATERET DATE DEFAULT SYSDATE,
DP_MASS_ID NUMBER(10,0),
PRIMARY KEY(ID)
);

ALTER TABLE DP_MASSEAfENDELSE_REST ADD CONSTRAINT FK_PRINTNET_PDF
  FOREIGN KEY (PRINTNET_PDF_ID)
  REFERENCES PRINTNET_PDF (PRINTNET_PDF_ID);
  
ALTER TABLE DP_MASSEAfENDELSE_REST ADD CONSTRAINT FK_DP_MASS_ID
  FOREIGN KEY (DP_MASS_ID)
  REFERENCES DP_MASSEFORSENDELSE (DP_MASS_ID);
  
ALTER TABLE DP_MASSEAfENDELSE_REST ADD CONSTRAINT DP_MASS_ID_U UNIQUE (DP_MASS_ID);

ALTER TABLE DP_MASSEAfENDELSE_REST ADD CONSTRAINT EKSTERN_FORSENDELSE_U UNIQUE (EKSTERN_FORSENDELSE_ID);
 
--- indexes 
CREATE INDEX ready_send_I ON DP_MASSEAfENDELSE_REST(STATUS_KODE,ALLOKERING_MARKERING, PROEVIGEN);

create INDEX failed_select_I on DP_MASSEAfENDELSE_REST(STATUS_KODE,PROEVIGEN, ALLOKERING_MARKERING, AOGD_OPDATERET);

CREATE INDEX send_update_I ON DP_MASSEAfENDELSE_REST(id,STATUS_KODE);

CREATE INDEX receipt_I ON DP_MASSEAfENDELSE_REST(EKSTERN_FORSENDELSE_ID);

CREATE INDEX receipt_I2 ON DP_MASSEAfENDELSE_REST(EKSTERN_FORSENDELSE_ID,CXR);

CREATE INDEX  DP_MASS_ID_I ON DP_MASSEAfENDELSE_REST(DP_MASS_ID);

CREATE INDEX  EKSTERN_FORSENDELSE_ID_I ON DP_KVITTERING(EKSTERN_FORSENDELSE_ID);

CREATE INDEX  EKSTERN_FORSENDELSE_ID_I2 ON DP_KVITTERING(EKSTERN_FORSENDELSE_ID ,CXR);

----roll back 
drop table DP_MASSEAfENDELSE_REST;

---data
Insert into CONFIGURATION (CONFIGURATION_KEY,CONFIGURATION_VALUE,VERNO) values ('11_process.overfoerse.max','811',0);
Insert into CONFIGURATION (CONFIGURATION_KEY,CONFIGURATION_VALUE,VERNO) values ('11_process.send.max','812',0);
Insert into CONFIGURATION (CONFIGURATION_KEY,CONFIGURATION_VALUE,VERNO) values ('11_process.receipt.max','813',0);
Insert into CONFIGURATION (CONFIGURATION_KEY,CONFIGURATION_VALUE,VERNO) values ('11_process.timeout','814',0);
Insert into CONFIGURATION (CONFIGURATION_KEY,CONFIGURATION_VALUE,VERNO) values ('rest.retry.times','10',0);
Insert into CONFIGURATION (CONFIGURATION_KEY,CONFIGURATION_VALUE,VERNO) values ('10_process.timeout','804',0);
Insert into CONFIGURATION (CONFIGURATION_KEY,CONFIGURATION_VALUE,VERNO) values ('10_process.overfoerse.max','801',0);
Insert into CONFIGURATION (CONFIGURATION_KEY,CONFIGURATION_VALUE,VERNO) values ('10_process.send.max','802',0);
Insert into CONFIGURATION (CONFIGURATION_KEY,CONFIGURATION_VALUE,VERNO) values ('10_process.receipt.max','803',0);
Insert into CONFIGURATION (CONFIGURATION_KEY,CONFIGURATION_VALUE,VERNO) values ('rest.delay.hours','2',0);

delete from CONFIGURATION 
where CONFIGURATION_KEY like '%_process.%';
delete from CONFIGURATION 
where CONFIGURATION_KEY in  ('rest.delay.hours', 'rest.retry.times');


select * from PRINTNET_PDF where PRINTNET_PDF_ID in (393340,
393344,
393348,
393345,
393346);

select * from DP_KVITTERING dv 
where dv.EKSTERN_FORSENDELSE_ID
in (
    select  EKSTERN_FORSENDELSE_ID from DP_MASSEAFENDELSE_REST 
);
