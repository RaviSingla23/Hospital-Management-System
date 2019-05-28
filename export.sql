--------------------------------------------------------
--  File created - Tuesday-May-28-2019   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table BILL
--------------------------------------------------------

  CREATE TABLE "HMS"."BILL" 
   (	"BILL_ID" VARCHAR2(20 BYTE), 
	"ROOM_COST" NUMBER(10,2), 
	"TREATMENT_COST" NUMBER(10,2), 
	"OTHER_COST" NUMBER(10,2)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table DONE_BY
--------------------------------------------------------

  CREATE TABLE "HMS"."DONE_BY" 
   (	"T_NO" VARCHAR2(20 BYTE), 
	"P_ID" VARCHAR2(20 BYTE), 
	"T_ID" VARCHAR2(20 BYTE), 
	"S_ID" VARCHAR2(20 BYTE), 
	"T_DATE" DATE, 
	"REMARKS" VARCHAR2(50 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table PATIENT
--------------------------------------------------------

  CREATE TABLE "HMS"."PATIENT" 
   (	"P_ID" VARCHAR2(20 BYTE), 
	"P_NAME" VARCHAR2(50 BYTE), 
	"GENDER" VARCHAR2(10 BYTE), 
	"CONTACT" NUMBER(10,0), 
	"ADDRESS" VARCHAR2(100 BYTE), 
	"DOB" DATE, 
	"DOA" DATE, 
	"DOD" DATE
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table ROOM
--------------------------------------------------------

  CREATE TABLE "HMS"."ROOM" 
   (	"ROOM_NO" VARCHAR2(20 BYTE), 
	"TYPE" VARCHAR2(50 BYTE), 
	"RENT" NUMBER(10,2)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table STAFF
--------------------------------------------------------

  CREATE TABLE "HMS"."STAFF" 
   (	"S_ID" VARCHAR2(20 BYTE), 
	"NAME" VARCHAR2(50 BYTE), 
	"GENDER" VARCHAR2(10 BYTE), 
	"JOB" VARCHAR2(50 BYTE), 
	"DOB" DATE, 
	"CONTACT" NUMBER(10,0), 
	"ADDRESS" VARCHAR2(100 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table TREATED_IN
--------------------------------------------------------

  CREATE TABLE "HMS"."TREATED_IN" 
   (	"P_ID" VARCHAR2(20 BYTE), 
	"ROOM_NO" VARCHAR2(20 BYTE), 
	"NO_OF_DAYS" NUMBER(10,0), 
	"IN_DATE" DATE
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table TREATMENTS
--------------------------------------------------------

  CREATE TABLE "HMS"."TREATMENTS" 
   (	"T_ID" VARCHAR2(20 BYTE), 
	"T_NAME" VARCHAR2(50 BYTE), 
	"COST" NUMBER(10,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
REM INSERTING into HMS.BILL
SET DEFINE OFF;
Insert into HMS.BILL (BILL_ID,ROOM_COST,TREATMENT_COST,OTHER_COST) values ('rs',500,100,0);
Insert into HMS.BILL (BILL_ID,ROOM_COST,TREATMENT_COST,OTHER_COST) values ('ak',4500,1100,500);
REM INSERTING into HMS.DONE_BY
SET DEFINE OFF;
Insert into HMS.DONE_BY (T_NO,P_ID,T_ID,S_ID,T_DATE,REMARKS) values ('rs_1','rs','1','1',to_date('28-05-19','DD-MM-RR'),'none');
Insert into HMS.DONE_BY (T_NO,P_ID,T_ID,S_ID,T_DATE,REMARKS) values ('ak_2','ak','2','2',to_date('28-05-19','DD-MM-RR'),null);
Insert into HMS.DONE_BY (T_NO,P_ID,T_ID,S_ID,T_DATE,REMARKS) values ('ak_12','ak','1','1',to_date('28-05-19','DD-MM-RR'),null);
REM INSERTING into HMS.PATIENT
SET DEFINE OFF;
Insert into HMS.PATIENT (P_ID,P_NAME,GENDER,CONTACT,ADDRESS,DOB,DOA,DOD) values ('rs','ravi','Male',12,'cdce',to_date('22-02-14','DD-MM-RR'),to_date('27-05-19','DD-MM-RR'),to_date('28-05-19','DD-MM-RR'));
Insert into HMS.PATIENT (P_ID,P_NAME,GENDER,CONTACT,ADDRESS,DOB,DOA,DOD) values ('ak','akash','Male',354,'efvvr',to_date('01-01-98','DD-MM-RR'),to_date('27-05-19','DD-MM-RR'),null);
REM INSERTING into HMS.ROOM
SET DEFINE OFF;
Insert into HMS.ROOM (ROOM_NO,TYPE,RENT) values ('1','lab',500);
Insert into HMS.ROOM (ROOM_NO,TYPE,RENT) values ('2','ot',2000);
REM INSERTING into HMS.STAFF
SET DEFINE OFF;
Insert into HMS.STAFF (S_ID,NAME,GENDER,JOB,DOB,CONTACT,ADDRESS) values ('1','abc','MALE','doctor',to_date('17-12-15','DD-MM-RR'),123,'sxsxces');
Insert into HMS.STAFF (S_ID,NAME,GENDER,JOB,DOB,CONTACT,ADDRESS) values ('2','axcdxc','MALE','doctor',to_date('17-12-15','DD-MM-RR'),123,'sxsxces');
REM INSERTING into HMS.TREATED_IN
SET DEFINE OFF;
Insert into HMS.TREATED_IN (P_ID,ROOM_NO,NO_OF_DAYS,IN_DATE) values ('rs','1',1,to_date('27-05-19','DD-MM-RR'));
Insert into HMS.TREATED_IN (P_ID,ROOM_NO,NO_OF_DAYS,IN_DATE) values ('ak','2',2,to_date('28-05-19','DD-MM-RR'));
Insert into HMS.TREATED_IN (P_ID,ROOM_NO,NO_OF_DAYS,IN_DATE) values ('ak','1',1,to_date('28-05-19','DD-MM-RR'));
REM INSERTING into HMS.TREATMENTS
SET DEFINE OFF;
Insert into HMS.TREATMENTS (T_ID,T_NAME,COST) values ('1','blood_test',100);
Insert into HMS.TREATMENTS (T_ID,T_NAME,COST) values ('2','operation',1000);
--------------------------------------------------------
--  DDL for Index BILL_BILLID_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "HMS"."BILL_BILLID_PK" ON "HMS"."BILL" ("BILL_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index DONEBY_TNO_UQ
--------------------------------------------------------

  CREATE UNIQUE INDEX "HMS"."DONEBY_TNO_UQ" ON "HMS"."DONE_BY" ("T_NO") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index PATIENT_PID_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "HMS"."PATIENT_PID_PK" ON "HMS"."PATIENT" ("P_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index ROOM_ROOMNO_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "HMS"."ROOM_ROOMNO_PK" ON "HMS"."ROOM" ("ROOM_NO") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index STAFF_SID_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "HMS"."STAFF_SID_PK" ON "HMS"."STAFF" ("S_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index TIN_PID_ROOMNO_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "HMS"."TIN_PID_ROOMNO_PK" ON "HMS"."TREATED_IN" ("P_ID", "ROOM_NO") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index TN_TID_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "HMS"."TN_TID_PK" ON "HMS"."TREATMENTS" ("T_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  Constraints for Table BILL
--------------------------------------------------------

  ALTER TABLE "HMS"."BILL" ADD CONSTRAINT "BILL_BILLID_PK" PRIMARY KEY ("BILL_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table DONE_BY
--------------------------------------------------------

  ALTER TABLE "HMS"."DONE_BY" ADD CONSTRAINT "DONEBY_TNO_UQ" UNIQUE ("T_NO")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table PATIENT
--------------------------------------------------------

  ALTER TABLE "HMS"."PATIENT" ADD CONSTRAINT "PATIENT_PID_PK" PRIMARY KEY ("P_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table ROOM
--------------------------------------------------------

  ALTER TABLE "HMS"."ROOM" ADD CONSTRAINT "ROOM_ROOMNO_PK" PRIMARY KEY ("ROOM_NO")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table STAFF
--------------------------------------------------------

  ALTER TABLE "HMS"."STAFF" ADD CONSTRAINT "STAFF_SID_PK" PRIMARY KEY ("S_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table TREATED_IN
--------------------------------------------------------

  ALTER TABLE "HMS"."TREATED_IN" ADD CONSTRAINT "TIN_PID_ROOMNO_PK" PRIMARY KEY ("P_ID", "ROOM_NO")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table TREATMENTS
--------------------------------------------------------

  ALTER TABLE "HMS"."TREATMENTS" ADD CONSTRAINT "TN_TID_PK" PRIMARY KEY ("T_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table BILL
--------------------------------------------------------

  ALTER TABLE "HMS"."BILL" ADD CONSTRAINT "BILL_BILLID_FK" FOREIGN KEY ("BILL_ID")
	  REFERENCES "HMS"."PATIENT" ("P_ID") ON DELETE CASCADE ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table DONE_BY
--------------------------------------------------------

  ALTER TABLE "HMS"."DONE_BY" ADD CONSTRAINT "DONEBY_PID_FK" FOREIGN KEY ("P_ID")
	  REFERENCES "HMS"."PATIENT" ("P_ID") ON DELETE CASCADE ENABLE;
 
  ALTER TABLE "HMS"."DONE_BY" ADD CONSTRAINT "DONEBY_SID_FK" FOREIGN KEY ("S_ID")
	  REFERENCES "HMS"."STAFF" ("S_ID") ON DELETE CASCADE ENABLE;
 
  ALTER TABLE "HMS"."DONE_BY" ADD CONSTRAINT "DONEBY_TID_FK" FOREIGN KEY ("T_ID")
	  REFERENCES "HMS"."TREATMENTS" ("T_ID") ON DELETE CASCADE ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table TREATED_IN
--------------------------------------------------------

  ALTER TABLE "HMS"."TREATED_IN" ADD CONSTRAINT "TIN_PID_FK" FOREIGN KEY ("P_ID")
	  REFERENCES "HMS"."PATIENT" ("P_ID") ON DELETE CASCADE ENABLE;
 
  ALTER TABLE "HMS"."TREATED_IN" ADD CONSTRAINT "TIN_ROOMNO_FK" FOREIGN KEY ("ROOM_NO")
	  REFERENCES "HMS"."ROOM" ("ROOM_NO") ON DELETE CASCADE ENABLE;
