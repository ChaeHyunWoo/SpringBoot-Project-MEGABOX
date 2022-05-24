--------------------------------------------------------
--  ������ ������ - ������-5��-23-2022   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table FP_MOVIE
--------------------------------------------------------

  CREATE TABLE "SUZI"."FP_MOVIE" 
   (	"NUM" NUMBER(10,0), 
	"NAME" VARCHAR2(50 BYTE), 
	"S_F_N" VARCHAR2(100 BYTE), 
	"O_F_N" VARCHAR2(100 BYTE), 
	"VCNUM" NUMBER(10,0), 
	"DIRECTOR" VARCHAR2(50 BYTE), 
	"ACTRESS" VARCHAR2(50 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;

   COMMENT ON COLUMN "SUZI"."FP_MOVIE"."NAME" IS '�̸�';
REM INSERTING into SUZI.FP_MOVIE
SET DEFINE OFF;

Insert into SUZI.FP_MOVIE (NUM,NAME,S_F_N,O_F_N,VCNUM,DIRECTOR,ACTRESS) values (1,'��� ������','��尡����.jpg','��尡����.jpg',1,null,null);
Insert into SUZI.FP_MOVIE (NUM,NAME,S_F_N,O_F_N,VCNUM,DIRECTOR,ACTRESS) values (2,'���˵���2','���˵���2.jpg','���˵���2.jpg',3,null,null);
Insert into SUZI.FP_MOVIE (NUM,NAME,S_F_N,O_F_N,VCNUM,DIRECTOR,ACTRESS) values (3,'���� ��Ʈ������ ��ȥ���� ��Ƽ����','���ͽ�Ʈ������ ��ȥ���� ��Ƽ����.jpg','���ͽ�Ʈ������ ��ȥ���� ��Ƽ����.jpg',1,null,null);
Insert into SUZI.FP_MOVIE (NUM,NAME,S_F_N,O_F_N,VCNUM,DIRECTOR,ACTRESS) values (4,'�ν���Ʈ ����','�ν���Ʈ ����.jpg','�ν���Ʈ ����.jpg',2,null,null);
Insert into SUZI.FP_MOVIE (NUM,NAME,S_F_N,O_F_N,VCNUM,DIRECTOR,ACTRESS) values (5,'������ ������ Ž�� ���÷� ���� ���','������ ������ Ž�� ���÷� ���� ���.jpg','������ ������ Ž�� ���÷� ���� ���.jpg',1,null,null);
Insert into SUZI.FP_MOVIE (NUM,NAME,S_F_N,O_F_N,VCNUM,DIRECTOR,ACTRESS) values (6,'����','����.jpg','����.jpg',3,null,null);


Insert into SUZI.FP_MOVIE (NUM,NAME,S_F_N,O_F_N,VCNUM,DIRECTOR,ACTRESS) values (5,'������ ������ Ž�� ���÷� ���� ���','92f50d10-ce92-455d-8e2c-5155c2983711_Fil6w3eZPptB9UY8qyzALt0bphQBMd1E_420.jpg','Fil6w3eZPptB9UY8qyzALt0bphQBMd1E_420.jpg',1,null,null);
Insert into SUZI.FP_MOVIE (NUM,NAME,S_F_N,O_F_N,VCNUM,DIRECTOR,ACTRESS) values (1,'��� ������','c230f62c-1a43-49e4-a5fa-87f64be3086e_7YDE8KC4uv7RH6F57pTYUhS7IygSxYTF_420.jpg','7YDE8KC4uv7RH6F57pTYUhS7IygSxYTF_420.jpg',1,null,null);
Insert into SUZI.FP_MOVIE (NUM,NAME,S_F_N,O_F_N,VCNUM,DIRECTOR,ACTRESS) values (3,'���� ��Ʈ������ ��ȥ���� ��Ƽ����','0f4ff868-1707-472b-8123-8c3c0aba4825_4OFqLBLmda67a6BPXjaXCVM5wun7FAtb_420.jpg','4OFqLBLmda67a6BPXjaXCVM5wun7FAtb_420.jpg',2,null,null);
Insert into SUZI.FP_MOVIE (NUM,NAME,S_F_N,O_F_N,VCNUM,DIRECTOR,ACTRESS) values (6,'����','372662b4-145c-4f85-ad1d-081363dbf59c_AioWkHneWQ2Zny4J3yMeP9wNUetHwQpY_420.jpg','AioWkHneWQ2Zny4J3yMeP9wNUetHwQpY_420.jpg',3,null,null);
Insert into SUZI.FP_MOVIE (NUM,NAME,S_F_N,O_F_N,VCNUM,DIRECTOR,ACTRESS) values (2,'���˵���2','8c469385-b9d0-4b51-b507-5dcf4485751a_xemO2V3dH1nOUPmFAbD1mp2LGFNKpuTf_420.jpg','xemO2V3dH1nOUPmFAbD1mp2LGFNKpuTf_420.jpg',3,null,null);
Insert into SUZI.FP_MOVIE (NUM,NAME,S_F_N,O_F_N,VCNUM,DIRECTOR,ACTRESS) values (4,'�ν���Ʈ ����','dda3ef1a-a326-420f-94c1-27f82bea080d_cPMdCtF8W22rFRN6SXvrZkOl6NMJJDpR_420.jpg','cPMdCtF8W22rFRN6SXvrZkOl6NMJJDpR_420.jpg',2,null,null);
--------------------------------------------------------
--  DDL for Index PK_finalproject_movie_NUM
--------------------------------------------------------

  CREATE UNIQUE INDEX "SUZI"."PK_finalproject_movie_NUM" ON "SUZI"."FP_MOVIE" ("NUM") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  Constraints for Table FP_MOVIE
--------------------------------------------------------

  ALTER TABLE "SUZI"."FP_MOVIE" ADD CONSTRAINT "PK_fp_movie_NUM" PRIMARY KEY ("NUM")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
  ALTER TABLE "SUZI"."FP_MOVIE" MODIFY ("NUM" NOT NULL ENABLE);
