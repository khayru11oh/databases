--------------------------------------------------------
--  File created - Tuesday-September-26-2023   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table ALL_GROUPS
--------------------------------------------------------

  CREATE TABLE "NEW_SOCIAL_NET"."ALL_GROUPS" 
   (	"ID" NUMBER(*,0) GENERATED BY DEFAULT AS IDENTITY MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE  NOKEEP  NOSCALE , 
	"CREATEDBY" NUMBER(*,0), 
	"UPDATEDBY" NUMBER(*,0) DEFAULT NULL, 
	"TITLE" VARCHAR2(75 BYTE), 
	"METATITLE" VARCHAR2(100 BYTE) DEFAULT NULL, 
	"SLUG" VARCHAR2(100 BYTE), 
	"SUMMARY" VARCHAR2(1500 BYTE), 
	"STATUS" NUMBER(6,0) DEFAULT 0, 
	"CREATEDAT" DATE, 
	"UPDATEDAT" DATE DEFAULT NULL, 
	"PROFIL" CLOB, 
	"KONTENT" CLOB
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "USERS" 
 LOB ("PROFIL") STORE AS SECUREFILE (
  TABLESPACE "USERS" ENABLE STORAGE IN ROW 4000 CHUNK 8192
  NOCACHE LOGGING  NOCOMPRESS  KEEP_DUPLICATES ) 
 LOB ("KONTENT") STORE AS SECUREFILE (
  TABLESPACE "USERS" ENABLE STORAGE IN ROW 4000 CHUNK 8192
  NOCACHE LOGGING  NOCOMPRESS  KEEP_DUPLICATES ) ;
--------------------------------------------------------
--  DDL for Table ALL_USERS
--------------------------------------------------------

  CREATE TABLE "NEW_SOCIAL_NET"."ALL_USERS" 
   (	"ID" NUMBER(*,0) GENERATED BY DEFAULT AS IDENTITY MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE  NOKEEP  NOSCALE , 
	"FNAME" VARCHAR2(50 BYTE) DEFAULT NULL, 
	"LNAME" VARCHAR2(50 BYTE) DEFAULT NULL, 
	"MIDNAME" VARCHAR2(50 BYTE) DEFAULT NULL, 
	"USERNAME" VARCHAR2(50 BYTE) DEFAULT NULL, 
	"MOBILE" VARCHAR2(15 BYTE) DEFAULT NULL, 
	"EMAIL" VARCHAR2(50 BYTE) DEFAULT NULL, 
	"PASSHASH" VARCHAR2(32 BYTE), 
	"REGISTERAT" DATE, 
	"LASTLOGIN" DATE DEFAULT NULL, 
	"INTRO" VARCHAR2(100 BYTE), 
	"PROFIL" CLOB
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "USERS" 
 LOB ("PROFIL") STORE AS SECUREFILE (
  TABLESPACE "USERS" ENABLE STORAGE IN ROW 4000 CHUNK 8192
  NOCACHE LOGGING  NOCOMPRESS  KEEP_DUPLICATES ) ;
--------------------------------------------------------
--  DDL for Table GROUP_FOLLOWER
--------------------------------------------------------

  CREATE TABLE "NEW_SOCIAL_NET"."GROUP_FOLLOWER" 
   (	"ID" NUMBER(*,0) GENERATED BY DEFAULT AS IDENTITY MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE  NOKEEP  NOSCALE , 
	"GROUPID" NUMBER(*,0), 
	"USERID" NUMBER(*,0), 
	"TYPEE" NUMBER(6,0) DEFAULT 0, 
	"CREATEDAT" DATE, 
	"UPDATEDAT" DATE DEFAULT NULL
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table GROUP_MEMBER
--------------------------------------------------------

  CREATE TABLE "NEW_SOCIAL_NET"."GROUP_MEMBER" 
   (	"ID" NUMBER(*,0) GENERATED BY DEFAULT AS IDENTITY MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE  NOKEEP  NOSCALE , 
	"GROUPID" NUMBER(*,0), 
	"USERID" NUMBER(*,0), 
	"ROLEID" NUMBER(6,0) DEFAULT 0, 
	"STATUS" NUMBER(6,0), 
	"CREATEDAT" DATE, 
	"UPDATEDAT" DATE DEFAULT NULL, 
	"NOTES" CLOB
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "USERS" 
 LOB ("NOTES") STORE AS SECUREFILE (
  TABLESPACE "USERS" ENABLE STORAGE IN ROW 4000 CHUNK 8192
  NOCACHE LOGGING  NOCOMPRESS  KEEP_DUPLICATES ) ;
--------------------------------------------------------
--  DDL for Table GROUP_MESSAGE
--------------------------------------------------------

  CREATE TABLE "NEW_SOCIAL_NET"."GROUP_MESSAGE" 
   (	"ID" NUMBER(*,0) GENERATED BY DEFAULT AS IDENTITY MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE  NOKEEP  NOSCALE , 
	"GROUPID" NUMBER(*,0), 
	"USERID" NUMBER(*,0), 
	"MESSAGE" VARCHAR2(1500 BYTE), 
	"CREATEDAT" DATE, 
	"UPDATEDAT" DATE DEFAULT NULL
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table GROUP_META
--------------------------------------------------------

  CREATE TABLE "NEW_SOCIAL_NET"."GROUP_META" 
   (	"ID" NUMBER(*,0) GENERATED BY DEFAULT AS IDENTITY MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE  NOKEEP  NOSCALE , 
	"GROUPID" NUMBER(*,0), 
	"KEY" VARCHAR2(50 BYTE), 
	"CONTENT" CLOB
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "USERS" 
 LOB ("CONTENT") STORE AS SECUREFILE (
  TABLESPACE "USERS" ENABLE STORAGE IN ROW 4000 CHUNK 8192
  NOCACHE LOGGING  NOCOMPRESS  KEEP_DUPLICATES ) ;
--------------------------------------------------------
--  DDL for Table GROUP_POST
--------------------------------------------------------

  CREATE TABLE "NEW_SOCIAL_NET"."GROUP_POST" 
   (	"ID" NUMBER(*,0) GENERATED BY DEFAULT AS IDENTITY MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE  NOKEEP  NOSCALE , 
	"GROUPID" NUMBER(*,0), 
	"USERID" NUMBER(*,0), 
	"MESSAGE" VARCHAR2(1500 BYTE), 
	"CREATEDAT" DATE, 
	"UPDATEDAT" DATE DEFAULT NULL
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table USER_FOLLOWER
--------------------------------------------------------

  CREATE TABLE "NEW_SOCIAL_NET"."USER_FOLLOWER" 
   (	"ID" NUMBER(*,0) GENERATED BY DEFAULT AS IDENTITY MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE  NOKEEP  NOSCALE , 
	"SOURCEID" NUMBER(*,0), 
	"TARGETID" NUMBER(*,0), 
	"TYPEE" NUMBER(6,0) DEFAULT 0, 
	"CREATEDAT" DATE, 
	"UPDATEDAT" DATE DEFAULT NULL
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table USER_FRIEND
--------------------------------------------------------

  CREATE TABLE "NEW_SOCIAL_NET"."USER_FRIEND" 
   (	"ID" NUMBER(*,0) GENERATED BY DEFAULT AS IDENTITY MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE  NOKEEP  NOSCALE , 
	"SOURCEID" NUMBER(*,0), 
	"TARGETID" NUMBER(*,0), 
	"TYPEE" NUMBER(6,0), 
	"STATUS" NUMBER(6,0) DEFAULT 0, 
	"CREATEDAT" DATE, 
	"UPDATEDAT" DATE DEFAULT NULL, 
	"NOTES" CLOB
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "USERS" 
 LOB ("NOTES") STORE AS SECUREFILE (
  TABLESPACE "USERS" ENABLE STORAGE IN ROW 4000 CHUNK 8192
  NOCACHE LOGGING  NOCOMPRESS  KEEP_DUPLICATES ) ;
--------------------------------------------------------
--  DDL for Table USER_MESSAGE
--------------------------------------------------------

  CREATE TABLE "NEW_SOCIAL_NET"."USER_MESSAGE" 
   (	"ID" NUMBER(*,0) GENERATED BY DEFAULT AS IDENTITY MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE  NOKEEP  NOSCALE , 
	"SOURCEID" NUMBER(*,0), 
	"TARGETID" NUMBER(*,0), 
	"MESSAGE" VARCHAR2(1500 BYTE), 
	"CREATEDAT" DATE, 
	"UPDATEDAT" DATE DEFAULT NULL
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table USER_POST
--------------------------------------------------------

  CREATE TABLE "NEW_SOCIAL_NET"."USER_POST" 
   (	"ID" NUMBER(*,0) GENERATED BY DEFAULT AS IDENTITY MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE  NOKEEP  NOSCALE , 
	"USERID" NUMBER(*,0), 
	"SENDERID" NUMBER(*,0), 
	"MESSAGE" VARCHAR2(1500 BYTE), 
	"CREATEDAT" DATE, 
	"UPDATEDAT" DATE DEFAULT NULL
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "USERS" ;
REM INSERTING into NEW_SOCIAL_NET.ALL_GROUPS
SET DEFINE OFF;
REM INSERTING into NEW_SOCIAL_NET.ALL_USERS
SET DEFINE OFF;
REM INSERTING into NEW_SOCIAL_NET.GROUP_FOLLOWER
SET DEFINE OFF;
REM INSERTING into NEW_SOCIAL_NET.GROUP_MEMBER
SET DEFINE OFF;
REM INSERTING into NEW_SOCIAL_NET.GROUP_MESSAGE
SET DEFINE OFF;
REM INSERTING into NEW_SOCIAL_NET.GROUP_META
SET DEFINE OFF;
REM INSERTING into NEW_SOCIAL_NET.GROUP_POST
SET DEFINE OFF;
REM INSERTING into NEW_SOCIAL_NET.USER_FOLLOWER
SET DEFINE OFF;
REM INSERTING into NEW_SOCIAL_NET.USER_FRIEND
SET DEFINE OFF;
REM INSERTING into NEW_SOCIAL_NET.USER_MESSAGE
SET DEFINE OFF;
REM INSERTING into NEW_SOCIAL_NET.USER_POST
SET DEFINE OFF;
--------------------------------------------------------
--  DDL for Index UNIQ_SLUG
--------------------------------------------------------

  CREATE UNIQUE INDEX "NEW_SOCIAL_NET"."UNIQ_SLUG" ON "NEW_SOCIAL_NET"."ALL_GROUPS" ("SLUG") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index UNIQ_CREATOR_TITLE
--------------------------------------------------------

  CREATE UNIQUE INDEX "NEW_SOCIAL_NET"."UNIQ_CREATOR_TITLE" ON "NEW_SOCIAL_NET"."ALL_GROUPS" ("CREATEDBY", "TITLE") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index SYS_C008458
--------------------------------------------------------

  CREATE UNIQUE INDEX "NEW_SOCIAL_NET"."SYS_C008458" ON "NEW_SOCIAL_NET"."ALL_GROUPS" ("ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index UNIQ_TITLE
--------------------------------------------------------

  CREATE UNIQUE INDEX "NEW_SOCIAL_NET"."UNIQ_TITLE" ON "NEW_SOCIAL_NET"."ALL_GROUPS" ("TITLE") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index SYS_C008450
--------------------------------------------------------

  CREATE UNIQUE INDEX "NEW_SOCIAL_NET"."SYS_C008450" ON "NEW_SOCIAL_NET"."ALL_USERS" ("ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index UNIQ_MOBILE
--------------------------------------------------------

  CREATE UNIQUE INDEX "NEW_SOCIAL_NET"."UNIQ_MOBILE" ON "NEW_SOCIAL_NET"."ALL_USERS" ("MOBILE") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index UNIQ_EMAIL
--------------------------------------------------------

  CREATE UNIQUE INDEX "NEW_SOCIAL_NET"."UNIQ_EMAIL" ON "NEW_SOCIAL_NET"."ALL_USERS" ("EMAIL") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index UNIQ_USERNAME
--------------------------------------------------------

  CREATE UNIQUE INDEX "NEW_SOCIAL_NET"."UNIQ_USERNAME" ON "NEW_SOCIAL_NET"."ALL_USERS" ("USERNAME") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index SYS_C008501
--------------------------------------------------------

  CREATE UNIQUE INDEX "NEW_SOCIAL_NET"."SYS_C008501" ON "NEW_SOCIAL_NET"."GROUP_FOLLOWER" ("ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index UNIQ_USER_GROUP_TYPE
--------------------------------------------------------

  CREATE UNIQUE INDEX "NEW_SOCIAL_NET"."UNIQ_USER_GROUP_TYPE" ON "NEW_SOCIAL_NET"."GROUP_FOLLOWER" ("USERID", "GROUPID", "TYPEE") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index IDX_GROUPFOLLOWER_USERID
--------------------------------------------------------

  CREATE INDEX "NEW_SOCIAL_NET"."IDX_GROUPFOLLOWER_USERID" ON "NEW_SOCIAL_NET"."GROUP_FOLLOWER" ("USERID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index IDX_GROUPFOLLOWER_GROUPID
--------------------------------------------------------

  CREATE INDEX "NEW_SOCIAL_NET"."IDX_GROUPFOLLOWER_GROUPID" ON "NEW_SOCIAL_NET"."GROUP_FOLLOWER" ("GROUPID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index IDX_GROUPMEMBER_GROUPID
--------------------------------------------------------

  CREATE INDEX "NEW_SOCIAL_NET"."IDX_GROUPMEMBER_GROUPID" ON "NEW_SOCIAL_NET"."GROUP_MEMBER" ("GROUPID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index IDX_GROUPMEMBER_USERID
--------------------------------------------------------

  CREATE INDEX "NEW_SOCIAL_NET"."IDX_GROUPMEMBER_USERID" ON "NEW_SOCIAL_NET"."GROUP_MEMBER" ("USERID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index SYS_C008517
--------------------------------------------------------

  CREATE UNIQUE INDEX "NEW_SOCIAL_NET"."SYS_C008517" ON "NEW_SOCIAL_NET"."GROUP_MEMBER" ("ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index SYS_C008510
--------------------------------------------------------

  CREATE UNIQUE INDEX "NEW_SOCIAL_NET"."SYS_C008510" ON "NEW_SOCIAL_NET"."GROUP_MESSAGE" ("ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index IDX_GROUPMSG_GROUPID
--------------------------------------------------------

  CREATE INDEX "NEW_SOCIAL_NET"."IDX_GROUPMSG_GROUPID" ON "NEW_SOCIAL_NET"."GROUP_MESSAGE" ("USERID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index IDX_GROUPMSG_USERID
--------------------------------------------------------

  CREATE INDEX "NEW_SOCIAL_NET"."IDX_GROUPMSG_USERID" ON "NEW_SOCIAL_NET"."GROUP_MESSAGE" ("GROUPID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index SYS_C008531
--------------------------------------------------------

  CREATE UNIQUE INDEX "NEW_SOCIAL_NET"."SYS_C008531" ON "NEW_SOCIAL_NET"."GROUP_META" ("ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index SYS_C008525
--------------------------------------------------------

  CREATE UNIQUE INDEX "NEW_SOCIAL_NET"."SYS_C008525" ON "NEW_SOCIAL_NET"."GROUP_POST" ("ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index IDX_GROUPPOST_USERID
--------------------------------------------------------

  CREATE INDEX "NEW_SOCIAL_NET"."IDX_GROUPPOST_USERID" ON "NEW_SOCIAL_NET"."GROUP_POST" ("USERID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index IDX_GROUPPOST_GROUPID
--------------------------------------------------------

  CREATE INDEX "NEW_SOCIAL_NET"."IDX_GROUPPOST_GROUPID" ON "NEW_SOCIAL_NET"."GROUP_POST" ("GROUPID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index SYS_C008483
--------------------------------------------------------

  CREATE UNIQUE INDEX "NEW_SOCIAL_NET"."SYS_C008483" ON "NEW_SOCIAL_NET"."USER_FOLLOWER" ("ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index UNIQ_SOURCE_TARGET_TYPE
--------------------------------------------------------

  CREATE UNIQUE INDEX "NEW_SOCIAL_NET"."UNIQ_SOURCE_TARGET_TYPE" ON "NEW_SOCIAL_NET"."USER_FOLLOWER" ("SOURCEID", "TARGETID", "TYPEE") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index SYS_C008467
--------------------------------------------------------

  CREATE UNIQUE INDEX "NEW_SOCIAL_NET"."SYS_C008467" ON "NEW_SOCIAL_NET"."USER_FRIEND" ("ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index UNIQ_FRIENDS
--------------------------------------------------------

  CREATE UNIQUE INDEX "NEW_SOCIAL_NET"."UNIQ_FRIENDS" ON "NEW_SOCIAL_NET"."USER_FRIEND" ("SOURCEID", "TARGETID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index SYS_C008476
--------------------------------------------------------

  CREATE UNIQUE INDEX "NEW_SOCIAL_NET"."SYS_C008476" ON "NEW_SOCIAL_NET"."USER_MESSAGE" ("ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index SYS_C008492
--------------------------------------------------------

  CREATE UNIQUE INDEX "NEW_SOCIAL_NET"."SYS_C008492" ON "NEW_SOCIAL_NET"."USER_POST" ("ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index UNIQ_USERPOST_USERID
--------------------------------------------------------

  CREATE UNIQUE INDEX "NEW_SOCIAL_NET"."UNIQ_USERPOST_USERID" ON "NEW_SOCIAL_NET"."USER_POST" ("USERID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index UNIQ_USERPOST_SENDERID
--------------------------------------------------------

  CREATE UNIQUE INDEX "NEW_SOCIAL_NET"."UNIQ_USERPOST_SENDERID" ON "NEW_SOCIAL_NET"."USER_POST" ("SENDERID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  Constraints for Table ALL_GROUPS
--------------------------------------------------------

  ALTER TABLE "NEW_SOCIAL_NET"."ALL_GROUPS" MODIFY ("ID" NOT NULL ENABLE);
  ALTER TABLE "NEW_SOCIAL_NET"."ALL_GROUPS" MODIFY ("CREATEDBY" NOT NULL ENABLE);
  ALTER TABLE "NEW_SOCIAL_NET"."ALL_GROUPS" MODIFY ("TITLE" NOT NULL ENABLE);
  ALTER TABLE "NEW_SOCIAL_NET"."ALL_GROUPS" MODIFY ("SLUG" NOT NULL ENABLE);
  ALTER TABLE "NEW_SOCIAL_NET"."ALL_GROUPS" MODIFY ("CREATEDAT" NOT NULL ENABLE);
  ALTER TABLE "NEW_SOCIAL_NET"."ALL_GROUPS" ADD PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  TABLESPACE "USERS"  ENABLE;
  ALTER TABLE "NEW_SOCIAL_NET"."ALL_GROUPS" ADD CONSTRAINT "UNIQ_SLUG" UNIQUE ("SLUG")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "USERS"  ENABLE;
  ALTER TABLE "NEW_SOCIAL_NET"."ALL_GROUPS" ADD CONSTRAINT "UNIQ_CREATOR_TITLE" UNIQUE ("CREATEDBY", "TITLE")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table ALL_USERS
--------------------------------------------------------

  ALTER TABLE "NEW_SOCIAL_NET"."ALL_USERS" MODIFY ("ID" NOT NULL ENABLE);
  ALTER TABLE "NEW_SOCIAL_NET"."ALL_USERS" MODIFY ("PASSHASH" NOT NULL ENABLE);
  ALTER TABLE "NEW_SOCIAL_NET"."ALL_USERS" MODIFY ("REGISTERAT" NOT NULL ENABLE);
  ALTER TABLE "NEW_SOCIAL_NET"."ALL_USERS" ADD PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  TABLESPACE "USERS"  ENABLE;
  ALTER TABLE "NEW_SOCIAL_NET"."ALL_USERS" ADD CONSTRAINT "UNIQ_MOBILE" UNIQUE ("MOBILE")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "USERS"  ENABLE;
  ALTER TABLE "NEW_SOCIAL_NET"."ALL_USERS" ADD CONSTRAINT "UNIQ_EMAIL" UNIQUE ("EMAIL")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table GROUP_FOLLOWER
--------------------------------------------------------

  ALTER TABLE "NEW_SOCIAL_NET"."GROUP_FOLLOWER" MODIFY ("ID" NOT NULL ENABLE);
  ALTER TABLE "NEW_SOCIAL_NET"."GROUP_FOLLOWER" MODIFY ("GROUPID" NOT NULL ENABLE);
  ALTER TABLE "NEW_SOCIAL_NET"."GROUP_FOLLOWER" MODIFY ("USERID" NOT NULL ENABLE);
  ALTER TABLE "NEW_SOCIAL_NET"."GROUP_FOLLOWER" MODIFY ("CREATEDAT" NOT NULL ENABLE);
  ALTER TABLE "NEW_SOCIAL_NET"."GROUP_FOLLOWER" ADD PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  TABLESPACE "USERS"  ENABLE;
  ALTER TABLE "NEW_SOCIAL_NET"."GROUP_FOLLOWER" ADD CONSTRAINT "UNIQ_USER_GROUP_TYPE" UNIQUE ("USERID", "GROUPID", "TYPEE")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table GROUP_MEMBER
--------------------------------------------------------

  ALTER TABLE "NEW_SOCIAL_NET"."GROUP_MEMBER" MODIFY ("ID" NOT NULL ENABLE);
  ALTER TABLE "NEW_SOCIAL_NET"."GROUP_MEMBER" MODIFY ("GROUPID" NOT NULL ENABLE);
  ALTER TABLE "NEW_SOCIAL_NET"."GROUP_MEMBER" MODIFY ("USERID" NOT NULL ENABLE);
  ALTER TABLE "NEW_SOCIAL_NET"."GROUP_MEMBER" MODIFY ("CREATEDAT" NOT NULL ENABLE);
  ALTER TABLE "NEW_SOCIAL_NET"."GROUP_MEMBER" ADD PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table GROUP_MESSAGE
--------------------------------------------------------

  ALTER TABLE "NEW_SOCIAL_NET"."GROUP_MESSAGE" MODIFY ("ID" NOT NULL ENABLE);
  ALTER TABLE "NEW_SOCIAL_NET"."GROUP_MESSAGE" MODIFY ("GROUPID" NOT NULL ENABLE);
  ALTER TABLE "NEW_SOCIAL_NET"."GROUP_MESSAGE" MODIFY ("USERID" NOT NULL ENABLE);
  ALTER TABLE "NEW_SOCIAL_NET"."GROUP_MESSAGE" MODIFY ("MESSAGE" NOT NULL ENABLE);
  ALTER TABLE "NEW_SOCIAL_NET"."GROUP_MESSAGE" MODIFY ("CREATEDAT" NOT NULL ENABLE);
  ALTER TABLE "NEW_SOCIAL_NET"."GROUP_MESSAGE" ADD PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table GROUP_META
--------------------------------------------------------

  ALTER TABLE "NEW_SOCIAL_NET"."GROUP_META" MODIFY ("ID" NOT NULL ENABLE);
  ALTER TABLE "NEW_SOCIAL_NET"."GROUP_META" MODIFY ("GROUPID" NOT NULL ENABLE);
  ALTER TABLE "NEW_SOCIAL_NET"."GROUP_META" MODIFY ("KEY" NOT NULL ENABLE);
  ALTER TABLE "NEW_SOCIAL_NET"."GROUP_META" ADD PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table GROUP_POST
--------------------------------------------------------

  ALTER TABLE "NEW_SOCIAL_NET"."GROUP_POST" MODIFY ("ID" NOT NULL ENABLE);
  ALTER TABLE "NEW_SOCIAL_NET"."GROUP_POST" MODIFY ("GROUPID" NOT NULL ENABLE);
  ALTER TABLE "NEW_SOCIAL_NET"."GROUP_POST" MODIFY ("USERID" NOT NULL ENABLE);
  ALTER TABLE "NEW_SOCIAL_NET"."GROUP_POST" MODIFY ("MESSAGE" NOT NULL ENABLE);
  ALTER TABLE "NEW_SOCIAL_NET"."GROUP_POST" MODIFY ("CREATEDAT" NOT NULL ENABLE);
  ALTER TABLE "NEW_SOCIAL_NET"."GROUP_POST" ADD PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table USER_FOLLOWER
--------------------------------------------------------

  ALTER TABLE "NEW_SOCIAL_NET"."USER_FOLLOWER" MODIFY ("ID" NOT NULL ENABLE);
  ALTER TABLE "NEW_SOCIAL_NET"."USER_FOLLOWER" MODIFY ("SOURCEID" NOT NULL ENABLE);
  ALTER TABLE "NEW_SOCIAL_NET"."USER_FOLLOWER" MODIFY ("TARGETID" NOT NULL ENABLE);
  ALTER TABLE "NEW_SOCIAL_NET"."USER_FOLLOWER" MODIFY ("CREATEDAT" NOT NULL ENABLE);
  ALTER TABLE "NEW_SOCIAL_NET"."USER_FOLLOWER" ADD PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  TABLESPACE "USERS"  ENABLE;
  ALTER TABLE "NEW_SOCIAL_NET"."USER_FOLLOWER" ADD CONSTRAINT "UNIQ_SOURCE_TARGET_TYPE" UNIQUE ("SOURCEID", "TARGETID", "TYPEE")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table USER_FRIEND
--------------------------------------------------------

  ALTER TABLE "NEW_SOCIAL_NET"."USER_FRIEND" MODIFY ("ID" NOT NULL ENABLE);
  ALTER TABLE "NEW_SOCIAL_NET"."USER_FRIEND" MODIFY ("SOURCEID" NOT NULL ENABLE);
  ALTER TABLE "NEW_SOCIAL_NET"."USER_FRIEND" MODIFY ("TARGETID" NOT NULL ENABLE);
  ALTER TABLE "NEW_SOCIAL_NET"."USER_FRIEND" MODIFY ("CREATEDAT" NOT NULL ENABLE);
  ALTER TABLE "NEW_SOCIAL_NET"."USER_FRIEND" ADD PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  TABLESPACE "USERS"  ENABLE;
  ALTER TABLE "NEW_SOCIAL_NET"."USER_FRIEND" ADD CONSTRAINT "UNIQ_FRIENDS" UNIQUE ("SOURCEID", "TARGETID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table USER_MESSAGE
--------------------------------------------------------

  ALTER TABLE "NEW_SOCIAL_NET"."USER_MESSAGE" MODIFY ("ID" NOT NULL ENABLE);
  ALTER TABLE "NEW_SOCIAL_NET"."USER_MESSAGE" MODIFY ("SOURCEID" NOT NULL ENABLE);
  ALTER TABLE "NEW_SOCIAL_NET"."USER_MESSAGE" MODIFY ("TARGETID" NOT NULL ENABLE);
  ALTER TABLE "NEW_SOCIAL_NET"."USER_MESSAGE" MODIFY ("MESSAGE" NOT NULL ENABLE);
  ALTER TABLE "NEW_SOCIAL_NET"."USER_MESSAGE" MODIFY ("CREATEDAT" NOT NULL ENABLE);
  ALTER TABLE "NEW_SOCIAL_NET"."USER_MESSAGE" ADD PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table USER_POST
--------------------------------------------------------

  ALTER TABLE "NEW_SOCIAL_NET"."USER_POST" MODIFY ("ID" NOT NULL ENABLE);
  ALTER TABLE "NEW_SOCIAL_NET"."USER_POST" MODIFY ("USERID" NOT NULL ENABLE);
  ALTER TABLE "NEW_SOCIAL_NET"."USER_POST" MODIFY ("SENDERID" NOT NULL ENABLE);
  ALTER TABLE "NEW_SOCIAL_NET"."USER_POST" MODIFY ("MESSAGE" NOT NULL ENABLE);
  ALTER TABLE "NEW_SOCIAL_NET"."USER_POST" MODIFY ("CREATEDAT" NOT NULL ENABLE);
  ALTER TABLE "NEW_SOCIAL_NET"."USER_POST" ADD PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  TABLESPACE "USERS"  ENABLE;
  ALTER TABLE "NEW_SOCIAL_NET"."USER_POST" ADD CONSTRAINT "UNIQ_USERPOST_USERID" UNIQUE ("USERID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "USERS"  ENABLE;
  ALTER TABLE "NEW_SOCIAL_NET"."USER_POST" ADD CONSTRAINT "UNIQ_USERPOST_SENDERID" UNIQUE ("SENDERID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table ALL_GROUPS
--------------------------------------------------------

  ALTER TABLE "NEW_SOCIAL_NET"."ALL_GROUPS" ADD CONSTRAINT "GROUP_USER_CREATEDBY_FK" FOREIGN KEY ("CREATEDBY")
	  REFERENCES "NEW_SOCIAL_NET"."ALL_USERS" ("ID") ENABLE;
  ALTER TABLE "NEW_SOCIAL_NET"."ALL_GROUPS" ADD CONSTRAINT "GROUP_USER_UPDATEDBY_FK" FOREIGN KEY ("UPDATEDBY")
	  REFERENCES "NEW_SOCIAL_NET"."ALL_USERS" ("ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table GROUP_FOLLOWER
--------------------------------------------------------

  ALTER TABLE "NEW_SOCIAL_NET"."GROUP_FOLLOWER" ADD CONSTRAINT "GROUPFOLLOWER_GROUPID" FOREIGN KEY ("GROUPID")
	  REFERENCES "NEW_SOCIAL_NET"."ALL_GROUPS" ("ID") ENABLE;
  ALTER TABLE "NEW_SOCIAL_NET"."GROUP_FOLLOWER" ADD CONSTRAINT "GROUPFOLLOWER_USERID" FOREIGN KEY ("USERID")
	  REFERENCES "NEW_SOCIAL_NET"."ALL_USERS" ("ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table GROUP_MEMBER
--------------------------------------------------------

  ALTER TABLE "NEW_SOCIAL_NET"."GROUP_MEMBER" ADD CONSTRAINT "GROUPMEMBER_GROUPID" FOREIGN KEY ("GROUPID")
	  REFERENCES "NEW_SOCIAL_NET"."ALL_GROUPS" ("ID") ENABLE;
  ALTER TABLE "NEW_SOCIAL_NET"."GROUP_MEMBER" ADD CONSTRAINT "GROUPMEMBER_USERID" FOREIGN KEY ("USERID")
	  REFERENCES "NEW_SOCIAL_NET"."ALL_GROUPS" ("ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table GROUP_MESSAGE
--------------------------------------------------------

  ALTER TABLE "NEW_SOCIAL_NET"."GROUP_MESSAGE" ADD CONSTRAINT "GROUPMSG_GROUPID" FOREIGN KEY ("GROUPID")
	  REFERENCES "NEW_SOCIAL_NET"."ALL_GROUPS" ("ID") ENABLE;
  ALTER TABLE "NEW_SOCIAL_NET"."GROUP_MESSAGE" ADD CONSTRAINT "GROUPMSG_USERID" FOREIGN KEY ("USERID")
	  REFERENCES "NEW_SOCIAL_NET"."ALL_USERS" ("ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table GROUP_META
--------------------------------------------------------

  ALTER TABLE "NEW_SOCIAL_NET"."GROUP_META" ADD CONSTRAINT "GROUPMETA_GROUPID_FK" FOREIGN KEY ("GROUPID")
	  REFERENCES "NEW_SOCIAL_NET"."ALL_GROUPS" ("ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table GROUP_POST
--------------------------------------------------------

  ALTER TABLE "NEW_SOCIAL_NET"."GROUP_POST" ADD CONSTRAINT "GROUPPOST_GROUPID" FOREIGN KEY ("GROUPID")
	  REFERENCES "NEW_SOCIAL_NET"."ALL_GROUPS" ("ID") ENABLE;
  ALTER TABLE "NEW_SOCIAL_NET"."GROUP_POST" ADD CONSTRAINT "GROUPPOST_USERID" FOREIGN KEY ("USERID")
	  REFERENCES "NEW_SOCIAL_NET"."ALL_USERS" ("ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table USER_FOLLOWER
--------------------------------------------------------

  ALTER TABLE "NEW_SOCIAL_NET"."USER_FOLLOWER" ADD CONSTRAINT "USERFOLLOWER_SOURCEID" FOREIGN KEY ("SOURCEID")
	  REFERENCES "NEW_SOCIAL_NET"."ALL_USERS" ("ID") ENABLE;
  ALTER TABLE "NEW_SOCIAL_NET"."USER_FOLLOWER" ADD CONSTRAINT "USERFOLLOWER_TARGETID" FOREIGN KEY ("TARGETID")
	  REFERENCES "NEW_SOCIAL_NET"."ALL_USERS" ("ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table USER_FRIEND
--------------------------------------------------------

  ALTER TABLE "NEW_SOCIAL_NET"."USER_FRIEND" ADD CONSTRAINT "USERFRIEND_SOURCEID" FOREIGN KEY ("SOURCEID")
	  REFERENCES "NEW_SOCIAL_NET"."ALL_USERS" ("ID") ENABLE;
  ALTER TABLE "NEW_SOCIAL_NET"."USER_FRIEND" ADD CONSTRAINT "USERFRIEND_TARGETID" FOREIGN KEY ("TARGETID")
	  REFERENCES "NEW_SOCIAL_NET"."ALL_USERS" ("ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table USER_MESSAGE
--------------------------------------------------------

  ALTER TABLE "NEW_SOCIAL_NET"."USER_MESSAGE" ADD CONSTRAINT "USERMSG_SOURCEID" FOREIGN KEY ("SOURCEID")
	  REFERENCES "NEW_SOCIAL_NET"."ALL_USERS" ("ID") ENABLE;
  ALTER TABLE "NEW_SOCIAL_NET"."USER_MESSAGE" ADD CONSTRAINT "USERMSG_TARGETID" FOREIGN KEY ("TARGETID")
	  REFERENCES "NEW_SOCIAL_NET"."ALL_USERS" ("ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table USER_POST
--------------------------------------------------------

  ALTER TABLE "NEW_SOCIAL_NET"."USER_POST" ADD CONSTRAINT "USERPOST_USERID" FOREIGN KEY ("USERID")
	  REFERENCES "NEW_SOCIAL_NET"."ALL_USERS" ("ID") ENABLE;
  ALTER TABLE "NEW_SOCIAL_NET"."USER_POST" ADD CONSTRAINT "USERPOST_SENDERID" FOREIGN KEY ("SENDERID")
	  REFERENCES "NEW_SOCIAL_NET"."ALL_USERS" ("ID") ENABLE;