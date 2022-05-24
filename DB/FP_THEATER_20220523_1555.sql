--------------------------------------------------------
--  颇老捞 积己凳 - 岿夸老-5岿-23-2022   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table FP_THEATER
--------------------------------------------------------

  CREATE TABLE "SUZI"."FP_THEATER" 
   (	"NUM" NUMBER(10,0), 
	"NAME" VARCHAR2(50 BYTE), 
	"REGIONDETAILNUM" NUMBER(10,0), 
	"TOTALSEAT" NUMBER(10,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
REM INSERTING into SUZI.FP_THEATER
SET DEFINE OFF;
Insert into SUZI.FP_THEATER (NUM,NAME,REGIONDETAILNUM,TOTALSEAT) values (29,'7包',4,152);
Insert into SUZI.FP_THEATER (NUM,NAME,REGIONDETAILNUM,TOTALSEAT) values (30,'9包',4,29);
Insert into SUZI.FP_THEATER (NUM,NAME,REGIONDETAILNUM,TOTALSEAT) values (37,'8包',8,175);
Insert into SUZI.FP_THEATER (NUM,NAME,REGIONDETAILNUM,TOTALSEAT) values (1,'1包',1,232);
Insert into SUZI.FP_THEATER (NUM,NAME,REGIONDETAILNUM,TOTALSEAT) values (2,'2包',1,103);
Insert into SUZI.FP_THEATER (NUM,NAME,REGIONDETAILNUM,TOTALSEAT) values (3,'6包',1,103);
Insert into SUZI.FP_THEATER (NUM,NAME,REGIONDETAILNUM,TOTALSEAT) values (4,'1包',2,230);
Insert into SUZI.FP_THEATER (NUM,NAME,REGIONDETAILNUM,TOTALSEAT) values (5,'2包',2,240);
Insert into SUZI.FP_THEATER (NUM,NAME,REGIONDETAILNUM,TOTALSEAT) values (6,'3包',2,126);
Insert into SUZI.FP_THEATER (NUM,NAME,REGIONDETAILNUM,TOTALSEAT) values (7,'4包',2,123);
Insert into SUZI.FP_THEATER (NUM,NAME,REGIONDETAILNUM,TOTALSEAT) values (8,'2包',3,249);
Insert into SUZI.FP_THEATER (NUM,NAME,REGIONDETAILNUM,TOTALSEAT) values (9,'3包',3,249);
Insert into SUZI.FP_THEATER (NUM,NAME,REGIONDETAILNUM,TOTALSEAT) values (10,'4包',3,249);
Insert into SUZI.FP_THEATER (NUM,NAME,REGIONDETAILNUM,TOTALSEAT) values (11,'1包',4,178);
Insert into SUZI.FP_THEATER (NUM,NAME,REGIONDETAILNUM,TOTALSEAT) values (12,'2包',4,118);
Insert into SUZI.FP_THEATER (NUM,NAME,REGIONDETAILNUM,TOTALSEAT) values (13,'3包',4,136);
Insert into SUZI.FP_THEATER (NUM,NAME,REGIONDETAILNUM,TOTALSEAT) values (14,'哪器飘 1包',5,164);
Insert into SUZI.FP_THEATER (NUM,NAME,REGIONDETAILNUM,TOTALSEAT) values (15,'哪器飘 2包',5,115);
Insert into SUZI.FP_THEATER (NUM,NAME,REGIONDETAILNUM,TOTALSEAT) values (16,'哪器飘 3包',5,115);
Insert into SUZI.FP_THEATER (NUM,NAME,REGIONDETAILNUM,TOTALSEAT) values (17,'3包',1,232);
Insert into SUZI.FP_THEATER (NUM,NAME,REGIONDETAILNUM,TOTALSEAT) values (18,'7包',3,74);
Insert into SUZI.FP_THEATER (NUM,NAME,REGIONDETAILNUM,TOTALSEAT) values (19,'MX包',4,218);
Insert into SUZI.FP_THEATER (NUM,NAME,REGIONDETAILNUM,TOTALSEAT) values (20,'8包',4,25);
Insert into SUZI.FP_THEATER (NUM,NAME,REGIONDETAILNUM,TOTALSEAT) values (21,'哪器飘 5包',5,127);
Insert into SUZI.FP_THEATER (NUM,NAME,REGIONDETAILNUM,TOTALSEAT) values (22,'哪器飘 4包',5,103);
Insert into SUZI.FP_THEATER (NUM,NAME,REGIONDETAILNUM,TOTALSEAT) values (23,'哪器飘 6包',5,171);
Insert into SUZI.FP_THEATER (NUM,NAME,REGIONDETAILNUM,TOTALSEAT) values (24,'1包',6,137);
Insert into SUZI.FP_THEATER (NUM,NAME,REGIONDETAILNUM,TOTALSEAT) values (25,'2包',6,150);
Insert into SUZI.FP_THEATER (NUM,NAME,REGIONDETAILNUM,TOTALSEAT) values (26,'4包',6,150);
Insert into SUZI.FP_THEATER (NUM,NAME,REGIONDETAILNUM,TOTALSEAT) values (27,'5包',4,168);
Insert into SUZI.FP_THEATER (NUM,NAME,REGIONDETAILNUM,TOTALSEAT) values (28,'4包',1,103);
Insert into SUZI.FP_THEATER (NUM,NAME,REGIONDETAILNUM,TOTALSEAT) values (31,'4包',7,208);
Insert into SUZI.FP_THEATER (NUM,NAME,REGIONDETAILNUM,TOTALSEAT) values (32,'3包',7,151);
Insert into SUZI.FP_THEATER (NUM,NAME,REGIONDETAILNUM,TOTALSEAT) values (33,'哪器飘 2包',8,116);
Insert into SUZI.FP_THEATER (NUM,NAME,REGIONDETAILNUM,TOTALSEAT) values (34,'5包',8,165);
Insert into SUZI.FP_THEATER (NUM,NAME,REGIONDETAILNUM,TOTALSEAT) values (35,'3包',8,147);
Insert into SUZI.FP_THEATER (NUM,NAME,REGIONDETAILNUM,TOTALSEAT) values (36,'1包',8,200);
--------------------------------------------------------
--  DDL for Index PK_FP_theater_NUM
--------------------------------------------------------

  CREATE UNIQUE INDEX "SUZI"."PK_FP_theater_NUM" ON "SUZI"."FP_THEATER" ("NUM") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  Constraints for Table FP_THEATER
--------------------------------------------------------

  ALTER TABLE "SUZI"."FP_THEATER" ADD CONSTRAINT "PK_FP_theater_NUM" PRIMARY KEY ("NUM")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
  ALTER TABLE "SUZI"."FP_THEATER" MODIFY ("NUM" NOT NULL ENABLE);
