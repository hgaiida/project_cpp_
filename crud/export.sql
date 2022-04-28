--------------------------------------------------------
--  File created - Sunday-April-10-2022   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table PERSONNEL
--------------------------------------------------------

  CREATE TABLE "SYSTEM"."PERSONNEL" 
   (	"ID" NUMBER, 
	"CIN" NUMBER, 
	"NOM" VARCHAR2(50 BYTE), 
	"PRENOM" VARCHAR2(50 BYTE), 
	"POSTE" VARCHAR2(50 BYTE), 
	"EMAIL" VARCHAR2(50 BYTE), 
	"SEXE" VARCHAR2(50 BYTE), 
	"DATE_NAISSANCE" DATE, 
	"DATE_RECRUTEMENT" DATE, 
	"IMG" BLOB
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" 
 LOB ("IMG") STORE AS BASICFILE (
  TABLESPACE "SYSTEM" ENABLE STORAGE IN ROW CHUNK 8192 RETENTION 
  NOCACHE LOGGING 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)) ;
REM INSERTING into SYSTEM.PERSONNEL
SET DEFINE OFF;
Insert into SYSTEM.PERSONNEL (ID,CIN,NOM,PRENOM,POSTE,EMAIL,SEXE,DATE_NAISSANCE,DATE_RECRUTEMENT) values (55,90,'sarah','bou','@','pdg','Male',to_date('01-JAN-00','DD-MON-RR'),to_date('01-JAN-00','DD-MON-RR'));
Insert into SYSTEM.PERSONNEL (ID,CIN,NOM,PRENOM,POSTE,EMAIL,SEXE,DATE_NAISSANCE,DATE_RECRUTEMENT) values (21,21,'fsfs','fsf','fsfsf','dsf','Male',to_date('01-JAN-00','DD-MON-RR'),to_date('01-JAN-00','DD-MON-RR'));
Insert into SYSTEM.PERSONNEL (ID,CIN,NOM,PRENOM,POSTE,EMAIL,SEXE,DATE_NAISSANCE,DATE_RECRUTEMENT) values (65,74,'qdqd','qdqd','qdqd','qdq','Male',to_date('01-JAN-00','DD-MON-RR'),to_date('01-JAN-00','DD-MON-RR'));
--------------------------------------------------------
--  DDL for Index PERSONNEL_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYSTEM"."PERSONNEL_PK" ON "SYSTEM"."PERSONNEL" ("ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  Constraints for Table PERSONNEL
--------------------------------------------------------

  ALTER TABLE "SYSTEM"."PERSONNEL" ADD CONSTRAINT "PERSONNEL_PK" PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "SYSTEM"."PERSONNEL" MODIFY ("ID" NOT NULL ENABLE);