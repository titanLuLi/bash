

begin
    for r in ( select table_name, constraint_name
               from user_constraints
               where constraint_type = 'R' )
    loop
        execute immediate 'alter table '|| r.table_name
                          ||' drop constraint '|| r.constraint_name;
    end loop;
end;

select 'drop table ' || atab.owner || '.' || atab.table_name ||';' from all_tables atab where upper(atab.owner)='EFIDB';
select * from all_tables atab where atab.TABLE_NAME='BATCH_AFSKR_FORDR';


CREATE TABLE USERS (
U_NAME VARCHAR(200) NOT NULL,
U_PASSWORD VARCHAR(50) NOT NULL,
U_DESCRIPTION VARCHAR(1000))
;

ALTER TABLE USERS
ADD CONSTRAINT PK_USERS
PRIMARY KEY (U_NAME)
;

CREATE TABLE GROUPS (
G_NAME VARCHAR(200) NOT NULL,
G_DESCRIPTION VARCHAR(1000) )
;

ALTER TABLE GROUPS
ADD CONSTRAINT PK_GROUPS
PRIMARY KEY (G_NAME)
;

CREATE TABLE GROUPMEMBERS (
G_NAME VARCHAR(200) NOT NULL,
G_MEMBER VARCHAR(200) NOT NULL)
;

ALTER TABLE GROUPMEMBERS
ADD CONSTRAINT PK_GROUPMEMS
PRIMARY KEY (
G_NAME,
G_MEMBER
)
;

ALTER TABLE GROUPMEMBERS
ADD CONSTRAINT FK1_GROUPMEMBERS
FOREIGN KEY ( G_NAME )
REFERENCES GROUPS (G_NAME)
ON DELETE CASCADE;