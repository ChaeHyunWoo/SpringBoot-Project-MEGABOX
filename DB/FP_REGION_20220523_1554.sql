--------------------------------------------------------
--  ������ ������ - ������-5��-23-2022   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table FP_REGION
--------------------------------------------------------

  CREATE TABLE "SUZI"."FP_REGION" 
   (	"NUM" NUMBER(10,0), 
	"NAME" VARCHAR2(50 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
REM INSERTING into SUZI.FP_REGION
SET DEFINE OFF;
Insert into SUZI.FP_REGION (NUM,NAME) values (1,'����');
Insert into SUZI.FP_REGION (NUM,NAME) values (2,'���');
Insert into SUZI.FP_REGION (NUM,NAME) values (3,'��õ');
Insert into SUZI.FP_REGION (NUM,NAME) values (4,'����/��û/����');
Insert into SUZI.FP_REGION (NUM,NAME) values (5,'�λ�/�뱸/���');
Insert into SUZI.FP_REGION (NUM,NAME) values (6,'����/����');
Insert into SUZI.FP_REGION (NUM,NAME) values (7,'����');
--------------------------------------------------------
--  DDL for Index PK_FP_region_NUM
--------------------------------------------------------

  CREATE UNIQUE INDEX "SUZI"."PK_FP_region_NUM" ON "SUZI"."FP_REGION" ("NUM") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  Constraints for Table FP_REGION
--------------------------------------------------------

  ALTER TABLE "SUZI"."FP_REGION" ADD CONSTRAINT "PK_FP_region_NUM" PRIMARY KEY ("NUM")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
  ALTER TABLE "SUZI"."FP_REGION" MODIFY ("NUM" NOT NULL ENABLE);
