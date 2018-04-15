--------------------------------------------------------
--  文件已创建 - 星期日-四月-15-2018   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Sequence SEQ_USER_ID
--------------------------------------------------------

   CREATE SEQUENCE  "CZSP"."SEQ_USER_ID"  MINVALUE 100001 MAXVALUE 999999 INCREMENT BY 1 START WITH 100121 CACHE 20 NOORDER  NOCYCLE
--------------------------------------------------------
--  DDL for Table ACCOUNT_INFO
--------------------------------------------------------

  CREATE TABLE "CZSP"."ACCOUNT_INFO" 
   (	"USER_NAME" VARCHAR2(100), 
	"PASSWORD" VARCHAR2(100), 
	"IS_AVAILABLE" CHAR(1), 
	"UPDATE_TIME" DATE, 
	"CREATE_TIME" DATE
   ) 
 

   COMMENT ON COLUMN "CZSP"."ACCOUNT_INFO"."USER_NAME" IS '用户名'
 
   COMMENT ON COLUMN "CZSP"."ACCOUNT_INFO"."PASSWORD" IS '密码'
 
   COMMENT ON COLUMN "CZSP"."ACCOUNT_INFO"."IS_AVAILABLE" IS '是否可用'
 
   COMMENT ON COLUMN "CZSP"."ACCOUNT_INFO"."UPDATE_TIME" IS '更新时间'
 
   COMMENT ON COLUMN "CZSP"."ACCOUNT_INFO"."CREATE_TIME" IS '创建时间'
--------------------------------------------------------
--  DDL for Table ACCOUNT_USER
--------------------------------------------------------

  CREATE TABLE "CZSP"."ACCOUNT_USER" 
   (	"USER_NAME" VARCHAR2(100), 
	"USER_ID" VARCHAR2(100), 
	"CREATE_TIME" DATE, 
	"IS_DEFAULT" CHAR(1)
   ) 
 

   COMMENT ON COLUMN "CZSP"."ACCOUNT_USER"."USER_NAME" IS '账户主键'
 
   COMMENT ON COLUMN "CZSP"."ACCOUNT_USER"."USER_ID" IS '用户id'
 
   COMMENT ON COLUMN "CZSP"."ACCOUNT_USER"."CREATE_TIME" IS '关联时间'
 
   COMMENT ON COLUMN "CZSP"."ACCOUNT_USER"."IS_DEFAULT" IS '是否默认'
--------------------------------------------------------
--  DDL for Table BASE_DIC
--------------------------------------------------------

  CREATE TABLE "CZSP"."BASE_DIC" 
   (	"DIC_ID" VARCHAR2(100), 
	"TABLE_NAME" VARCHAR2(100)
   )
--------------------------------------------------------
--  DDL for Table DIC_AHTU_DEPT
--------------------------------------------------------

  CREATE TABLE "CZSP"."DIC_AHTU_DEPT" 
   (	"ID" VARCHAR2(100), 
	"NAME" VARCHAR2(200), 
	"CODE" VARCHAR2(100)
   )
--------------------------------------------------------
--  DDL for Table DIC_AHTU_ROLE
--------------------------------------------------------

  CREATE TABLE "CZSP"."DIC_AHTU_ROLE" 
   (	"ID" VARCHAR2(100), 
	"NAME" VARCHAR2(200), 
	"CODE" VARCHAR2(100)
   )
--------------------------------------------------------
--  DDL for Table DIC_PERMISSION_TYPE
--------------------------------------------------------

  CREATE TABLE "CZSP"."DIC_PERMISSION_TYPE" 
   (	"ID" VARCHAR2(100), 
	"NAME" VARCHAR2(100), 
	"CODE" VARCHAR2(100)
   )
--------------------------------------------------------
--  DDL for Table DIC_QX
--------------------------------------------------------

  CREATE TABLE "CZSP"."DIC_QX" 
   (	"ID" VARCHAR2(100), 
	"NAME" VARCHAR2(200), 
	"CODE" VARCHAR2(100)
   )
--------------------------------------------------------
--  DDL for Table DIC_QX_CZ
--------------------------------------------------------

  CREATE TABLE "CZSP"."DIC_QX_CZ" 
   (	"ID" VARCHAR2(100), 
	"NAME" VARCHAR2(200), 
	"CODE" VARCHAR2(100), 
	"QX_ID" VARCHAR2(100)
   )
--------------------------------------------------------
--  DDL for Table DIC_WF_NODE
--------------------------------------------------------

  CREATE TABLE "CZSP"."DIC_WF_NODE" 
   (	"ID" VARCHAR2(100), 
	"NAME" VARCHAR2(200), 
	"CODE" VARCHAR2(100)
   )
--------------------------------------------------------
--  DDL for Table DIC_WF_PHASE
--------------------------------------------------------

  CREATE TABLE "CZSP"."DIC_WF_PHASE" 
   (	"ID" VARCHAR2(100), 
	"NAME" VARCHAR2(200), 
	"CODE" VARCHAR2(100)
   )
--------------------------------------------------------
--  DDL for Table PERMISSION_OBJECT
--------------------------------------------------------

  CREATE TABLE "CZSP"."PERMISSION_OBJECT" 
   (	"O_ID" VARCHAR2(100), 
	"OBJECT_TYPE" VARCHAR2(2), 
	"OBJECT_NAME" VARCHAR2(100), 
	"CREATE_TIME" DATE
   ) 
 

   COMMENT ON COLUMN "CZSP"."PERMISSION_OBJECT"."O_ID" IS '对象主键'
 
   COMMENT ON COLUMN "CZSP"."PERMISSION_OBJECT"."OBJECT_TYPE" IS '1:菜单
2.按钮
3.url
'
 
   COMMENT ON COLUMN "CZSP"."PERMISSION_OBJECT"."OBJECT_NAME" IS '对象名称'
 
   COMMENT ON COLUMN "CZSP"."PERMISSION_OBJECT"."CREATE_TIME" IS '创建时间'
--------------------------------------------------------
--  DDL for Table PERMISSION_ROLE
--------------------------------------------------------

  CREATE TABLE "CZSP"."PERMISSION_ROLE" 
   (	"ROLE_ID" VARCHAR2(100), 
	"OBJECT_ID" VARCHAR2(100)
   )
--------------------------------------------------------
--  DDL for Table PLAN_APP
--------------------------------------------------------

  CREATE TABLE "CZSP"."PLAN_APP" 
   (	"APP_ID" VARCHAR2(100), 
	"CUR_NODE" VARCHAR2(10), 
	"CUR_PHASE" VARCHAR2(5), 
	"INSTANCE_NO" VARCHAR2(100), 
	"LAST_OP_TIME" DATE, 
	"LAST_OP_USER" VARCHAR2(100), 
	"OPED_USERS" VARCHAR2(2000), 
	"PHASES" VARCHAR2(2000), 
	"STATUS" VARCHAR2(2)
   ) 
 

   COMMENT ON COLUMN "CZSP"."PLAN_APP"."APP_ID" IS '申请主键'
 
   COMMENT ON COLUMN "CZSP"."PLAN_APP"."CUR_NODE" IS '当前节点'
 
   COMMENT ON COLUMN "CZSP"."PLAN_APP"."CUR_PHASE" IS '当前环节'
 
   COMMENT ON COLUMN "CZSP"."PLAN_APP"."INSTANCE_NO" IS '实例编号'
 
   COMMENT ON COLUMN "CZSP"."PLAN_APP"."LAST_OP_TIME" IS '最近操作时间'
 
   COMMENT ON COLUMN "CZSP"."PLAN_APP"."LAST_OP_USER" IS '最近操作用户'
 
   COMMENT ON COLUMN "CZSP"."PLAN_APP"."OPED_USERS" IS '操作过的用户'
 
   COMMENT ON COLUMN "CZSP"."PLAN_APP"."PHASES" IS '所选阶段'
 
   COMMENT ON COLUMN "CZSP"."PLAN_APP"."STATUS" IS '状态：1.未流转，2.流转中，3.已办结'
--------------------------------------------------------
--  DDL for Table PLAN_INFO
--------------------------------------------------------

  CREATE TABLE "CZSP"."PLAN_INFO" 
   (	"PLAN_ID" VARCHAR2(100), 
	"APP_ID" VARCHAR2(100), 
	"PLAN_NAME" VARCHAR2(2000), 
	"INSTANCE_ID" VARCHAR2(100), 
	"CREATE_TIME" DATE, 
	"CREATE_USER_ID" VARCHAR2(100), 
	"IS_FINISHED" VARCHAR2(1), 
	"TOWN_ID" VARCHAR2(100), 
	"TOWN_NAME" VARCHAR2(200), 
	"PLAN_AREA" NUMBER, 
	"DESIGN_DEPARTMENT" VARCHAR2(100), 
	"DESIGN_CONTACT_NAME" VARCHAR2(100), 
	"DESIGN_CONTACT_WAY" VARCHAR2(100), 
	"QX_ID" VARCHAR2(100), 
	"EXPECTED_FINISH_DATE" DATE, 
	"FINISH_DATE" DATE, 
	"NOTE" VARCHAR2(4000)
   ) 
 

   COMMENT ON COLUMN "CZSP"."PLAN_INFO"."PLAN_ID" IS '计划id'
 
   COMMENT ON COLUMN "CZSP"."PLAN_INFO"."APP_ID" IS '申请id'
 
   COMMENT ON COLUMN "CZSP"."PLAN_INFO"."PLAN_NAME" IS '计划名称'
 
   COMMENT ON COLUMN "CZSP"."PLAN_INFO"."INSTANCE_ID" IS '当前实例id'
 
   COMMENT ON COLUMN "CZSP"."PLAN_INFO"."CREATE_TIME" IS '创建时间'
 
   COMMENT ON COLUMN "CZSP"."PLAN_INFO"."CREATE_USER_ID" IS '创建人Id'
 
   COMMENT ON COLUMN "CZSP"."PLAN_INFO"."IS_FINISHED" IS '是否办结'
 
   COMMENT ON COLUMN "CZSP"."PLAN_INFO"."TOWN_ID" IS '村镇id'
 
   COMMENT ON COLUMN "CZSP"."PLAN_INFO"."TOWN_NAME" IS '村镇名称'
 
   COMMENT ON COLUMN "CZSP"."PLAN_INFO"."PLAN_AREA" IS '规划面积'
 
   COMMENT ON COLUMN "CZSP"."PLAN_INFO"."DESIGN_DEPARTMENT" IS '设计单位'
 
   COMMENT ON COLUMN "CZSP"."PLAN_INFO"."DESIGN_CONTACT_NAME" IS '设计单位联系人'
 
   COMMENT ON COLUMN "CZSP"."PLAN_INFO"."DESIGN_CONTACT_WAY" IS '设计单位联系方式'
 
   COMMENT ON COLUMN "CZSP"."PLAN_INFO"."QX_ID" IS '区县id'
 
   COMMENT ON COLUMN "CZSP"."PLAN_INFO"."EXPECTED_FINISH_DATE" IS '预计办结日期'
 
   COMMENT ON COLUMN "CZSP"."PLAN_INFO"."FINISH_DATE" IS '实际办结日期'
 
   COMMENT ON COLUMN "CZSP"."PLAN_INFO"."NOTE" IS '备注'
--------------------------------------------------------
--  DDL for Table PLAN_OPINION
--------------------------------------------------------

  CREATE TABLE "CZSP"."PLAN_OPINION" 
   (	"NODE_ID" VARCHAR2(100), 
	"CREATE_BY" VARCHAR2(100), 
	"CREATE_TIME" DATE, 
	"OPINION_CONTENT" VARCHAR2(4000), 
	"PLAN_ID" VARCHAR2(100), 
	"OP_TYPE" VARCHAR2(100), 
	"PHASE_ID" VARCHAR2(100), 
	"INSTANCE_ID" VARCHAR2(100), 
	"UPDATE_TIME" DATE, 
	"OPINION_ID" VARCHAR2(100)
   ) 
 

   COMMENT ON COLUMN "CZSP"."PLAN_OPINION"."NODE_ID" IS '节点id'
 
   COMMENT ON COLUMN "CZSP"."PLAN_OPINION"."CREATE_BY" IS '创建人'
 
   COMMENT ON COLUMN "CZSP"."PLAN_OPINION"."CREATE_TIME" IS '创建时间'
 
   COMMENT ON COLUMN "CZSP"."PLAN_OPINION"."OPINION_CONTENT" IS '意见内容'
 
   COMMENT ON COLUMN "CZSP"."PLAN_OPINION"."PLAN_ID" IS '案件id'
 
   COMMENT ON COLUMN "CZSP"."PLAN_OPINION"."OP_TYPE" IS '操作类型'
 
   COMMENT ON COLUMN "CZSP"."PLAN_OPINION"."PHASE_ID" IS '环节id'
 
   COMMENT ON COLUMN "CZSP"."PLAN_OPINION"."INSTANCE_ID" IS '当前节点id'
 
   COMMENT ON COLUMN "CZSP"."PLAN_OPINION"."UPDATE_TIME" IS '更新时间'
 
   COMMENT ON COLUMN "CZSP"."PLAN_OPINION"."OPINION_ID" IS '意见id'
--------------------------------------------------------
--  DDL for Table USER_INFO
--------------------------------------------------------

  CREATE TABLE "CZSP"."USER_INFO" 
   (	"USER_ID" VARCHAR2(100), 
	"NAME" VARCHAR2(100), 
	"DEPARTMENT_ID" VARCHAR2(100), 
	"ROLE_ID" VARCHAR2(200), 
	"QX_ID" VARCHAR2(100), 
	"PHONE_NUMBER" VARCHAR2(100), 
	"SEX" CHAR(1)
   ) 
 

   COMMENT ON COLUMN "CZSP"."USER_INFO"."USER_ID" IS '用户id'
 
   COMMENT ON COLUMN "CZSP"."USER_INFO"."NAME" IS '姓名'
 
   COMMENT ON COLUMN "CZSP"."USER_INFO"."DEPARTMENT_ID" IS '部门id'
 
   COMMENT ON COLUMN "CZSP"."USER_INFO"."ROLE_ID" IS '角色id'
 
   COMMENT ON COLUMN "CZSP"."USER_INFO"."QX_ID" IS '区县id'
 
   COMMENT ON COLUMN "CZSP"."USER_INFO"."PHONE_NUMBER" IS '电话号码'
 
   COMMENT ON COLUMN "CZSP"."USER_INFO"."SEX" IS '性别：0男1女'
--------------------------------------------------------
--  DDL for Table USER_OPERATION
--------------------------------------------------------

  CREATE TABLE "CZSP"."USER_OPERATION" 
   (	"OP_TYPE" VARCHAR2(100), 
	"OP_CREATE_TIME" DATE, 
	"NODE_ID" VARCHAR2(100), 
	"USER_ID" VARCHAR2(100), 
	"INSTANCE_ID" VARCHAR2(100), 
	"PRE_INSTANCE_ID" VARCHAR2(100)
   ) 
 

   COMMENT ON COLUMN "CZSP"."USER_OPERATION"."OP_TYPE" IS '操作类型'
 
   COMMENT ON COLUMN "CZSP"."USER_OPERATION"."OP_CREATE_TIME" IS '操作时间'
 
   COMMENT ON COLUMN "CZSP"."USER_OPERATION"."NODE_ID" IS '节点id'
 
   COMMENT ON COLUMN "CZSP"."USER_OPERATION"."USER_ID" IS '用户id'
 
   COMMENT ON COLUMN "CZSP"."USER_OPERATION"."INSTANCE_ID" IS '操作后流程id'
 
   COMMENT ON COLUMN "CZSP"."USER_OPERATION"."PRE_INSTANCE_ID" IS '操作前流程id'
--------------------------------------------------------
--  DDL for Table WF_CUR_INSTANCE
--------------------------------------------------------

  CREATE TABLE "CZSP"."WF_CUR_INSTANCE" 
   (	"INSTANCE_ID" VARCHAR2(100), 
	"INSTANCE_NO" VARCHAR2(100), 
	"NODE_ID" VARCHAR2(100), 
	"IF_SIGN" VARCHAR2(1), 
	"IF_RETRIEVE" VARCHAR2(1), 
	"IF_VALID" VARCHAR2(1), 
	"CREATE_TIME" DATE, 
	"SIGN_USER_ID" VARCHAR2(100), 
	"TODO_USER_ID" VARCHAR2(100)
   ) 
 

   COMMENT ON COLUMN "CZSP"."WF_CUR_INSTANCE"."INSTANCE_ID" IS '流程主键'
 
   COMMENT ON COLUMN "CZSP"."WF_CUR_INSTANCE"."INSTANCE_NO" IS '流程编号'
 
   COMMENT ON COLUMN "CZSP"."WF_CUR_INSTANCE"."NODE_ID" IS '节点编号'
 
   COMMENT ON COLUMN "CZSP"."WF_CUR_INSTANCE"."IF_SIGN" IS '是否签收'
 
   COMMENT ON COLUMN "CZSP"."WF_CUR_INSTANCE"."IF_RETRIEVE" IS '是否可回收'
 
   COMMENT ON COLUMN "CZSP"."WF_CUR_INSTANCE"."IF_VALID" IS '是否有效'
 
   COMMENT ON COLUMN "CZSP"."WF_CUR_INSTANCE"."CREATE_TIME" IS '创建时间'
 
   COMMENT ON COLUMN "CZSP"."WF_CUR_INSTANCE"."SIGN_USER_ID" IS '签收用户id'
 
   COMMENT ON COLUMN "CZSP"."WF_CUR_INSTANCE"."TODO_USER_ID" IS '待办用户id'
--------------------------------------------------------
--  DDL for Table WF_HIS_INSTANCE
--------------------------------------------------------

  CREATE TABLE "CZSP"."WF_HIS_INSTANCE" 
   (	"INSTANCE_ID" VARCHAR2(100), 
	"INSTANCE_NO" VARCHAR2(100), 
	"NODE_ID" VARCHAR2(100), 
	"SIGN_USER_ID" VARCHAR2(100), 
	"CREATE_TIME" DATE, 
	"FINISH_TIME" DATE
   ) 
 

   COMMENT ON COLUMN "CZSP"."WF_HIS_INSTANCE"."INSTANCE_ID" IS 'id'
 
   COMMENT ON COLUMN "CZSP"."WF_HIS_INSTANCE"."INSTANCE_NO" IS '编号'
 
   COMMENT ON COLUMN "CZSP"."WF_HIS_INSTANCE"."NODE_ID" IS '节点id'
 
   COMMENT ON COLUMN "CZSP"."WF_HIS_INSTANCE"."SIGN_USER_ID" IS '签收用户id'
 
   COMMENT ON COLUMN "CZSP"."WF_HIS_INSTANCE"."CREATE_TIME" IS '创建时间'
 
   COMMENT ON COLUMN "CZSP"."WF_HIS_INSTANCE"."FINISH_TIME" IS '结束时间'
--------------------------------------------------------
--  DDL for Table WF_NODE
--------------------------------------------------------

  CREATE TABLE "CZSP"."WF_NODE" 
   (	"NODE_ID" VARCHAR2(100), 
	"NODE_NAME" VARCHAR2(200), 
	"PHASE_ID" VARCHAR2(100), 
	"ROLE_ID" VARCHAR2(100), 
	"WF_CUR_NODE" VARCHAR2(2), 
	"IS_END" VARCHAR2(1), 
	"IS_START" VARCHAR2(1), 
	"IS_QX_OP" VARCHAR2(1)
   ) 
 

   COMMENT ON COLUMN "CZSP"."WF_NODE"."NODE_ID" IS '节点id'
 
   COMMENT ON COLUMN "CZSP"."WF_NODE"."NODE_NAME" IS '节点名称'
 
   COMMENT ON COLUMN "CZSP"."WF_NODE"."PHASE_ID" IS '阶段id'
 
   COMMENT ON COLUMN "CZSP"."WF_NODE"."ROLE_ID" IS '角色id'
 
   COMMENT ON COLUMN "CZSP"."WF_NODE"."WF_CUR_NODE" IS '当前节点编号'
 
   COMMENT ON COLUMN "CZSP"."WF_NODE"."IS_END" IS '是否是尾节点'
 
   COMMENT ON COLUMN "CZSP"."WF_NODE"."IS_START" IS '头节点'
 
   COMMENT ON COLUMN "CZSP"."WF_NODE"."IS_QX_OP" IS '是否区县操作节点'
--------------------------------------------------------
--  DDL for Table WF_PHASE
--------------------------------------------------------

  CREATE TABLE "CZSP"."WF_PHASE" 
   (	"PHASE_ID" VARCHAR2(100), 
	"PHASE_NAME" VARCHAR2(200), 
	"PRE_PHASE_ID" VARCHAR2(100), 
	"NEXT_PHASE_ID" VARCHAR2(100), 
	"IS_END" VARCHAR2(1), 
	"IS_START" VARCHAR2(1), 
	"WF_CODE" VARCHAR2(100)
   ) 
 

   COMMENT ON COLUMN "CZSP"."WF_PHASE"."PHASE_ID" IS '环节id'
 
   COMMENT ON COLUMN "CZSP"."WF_PHASE"."PHASE_NAME" IS '环节名称'
 
   COMMENT ON COLUMN "CZSP"."WF_PHASE"."PRE_PHASE_ID" IS '前置环节'
 
   COMMENT ON COLUMN "CZSP"."WF_PHASE"."NEXT_PHASE_ID" IS '下一环节'
 
   COMMENT ON COLUMN "CZSP"."WF_PHASE"."IS_END" IS '尾'
 
   COMMENT ON COLUMN "CZSP"."WF_PHASE"."IS_START" IS '头'
 
   COMMENT ON COLUMN "CZSP"."WF_PHASE"."WF_CODE" IS '环节代码'
--------------------------------------------------------
--  DDL for Table WF_ROUTE
--------------------------------------------------------

  CREATE TABLE "CZSP"."WF_ROUTE" 
   (	"ROUTE_ID" VARCHAR2(100), 
	"PHASE_ID" VARCHAR2(100), 
	"CUR_NODE" VARCHAR2(2), 
	"NEXT_NODE" VARCHAR2(2), 
	"PRE_NODE" VARCHAR2(100), 
	"IS_TESONG" VARCHAR2(1), 
	"DISPLAY_ORDER" VARCHAR2(2)
   ) 
 

   COMMENT ON COLUMN "CZSP"."WF_ROUTE"."ROUTE_ID" IS '路由主键'
 
   COMMENT ON COLUMN "CZSP"."WF_ROUTE"."PHASE_ID" IS '环节id'
 
   COMMENT ON COLUMN "CZSP"."WF_ROUTE"."CUR_NODE" IS '当前'
 
   COMMENT ON COLUMN "CZSP"."WF_ROUTE"."NEXT_NODE" IS '后置'
 
   COMMENT ON COLUMN "CZSP"."WF_ROUTE"."PRE_NODE" IS '前驱'
 
   COMMENT ON COLUMN "CZSP"."WF_ROUTE"."IS_TESONG" IS '是否特送'
 
   COMMENT ON COLUMN "CZSP"."WF_ROUTE"."DISPLAY_ORDER" IS '显示排序'
--------------------------------------------------------
--  DDL for View V_PLAN_INFO_DETAIL
--------------------------------------------------------

  CREATE OR REPLACE VIEW "CZSP"."V_PLAN_INFO_DETAIL" ("APP_ID", "CREATE_TIME", "CREATE_USER_ID", "INSTANCE_ID", "PLAN_ID", "PLAN_NAME", "TOWN_NAME", "QX_ID", "PLAN_AREA", "CREATE_USER_NAME", "CUR_PHASE", "CUR_NODE", "STATUS") AS 
  SELECT 
    pi.app_id,pi.create_time,pi.create_user_id,pi.instance_id,pi.plan_id,pi.plan_name,pi.town_name,pi.qx_id,pi.plan_area
    ,u.name as create_user_name
    ,pa.cur_phase,pa.cur_node,pa.status
FROM 
    czsp.plan_info pi 
    left join czsp.plan_app pa on pi.app_id = pa.app_id 
    left join czsp.user_info u on pi.create_user_id = u.user_id
--------------------------------------------------------
--  DDL for View V_PLAN_WF_DETAIL
--------------------------------------------------------

  CREATE OR REPLACE VIEW "CZSP"."V_PLAN_WF_DETAIL" ("PLAN_ID", "PLAN_NAME", "INSTANCE_ID", "QX_ID", "CREATE_TIME", "TOWN_NAME", "TODO_USER_ID", "SIGN_USER_ID", "IF_SIGN", "IF_RETRIEVE", "SIGN_USER_NAME", "APP_ID", "CUR_NODE", "CUR_PHASE", "INSTANCE_NO", "LAST_OP_TIME", "LAST_OP_USER", "OPED_USERS", "PHASES", "STATUS") AS 
  SELECT 
    pi.plan_id,pi.plan_name,pi.instance_id,pi.qx_id,pi.create_time,pi.town_name
    ,wci.todo_user_id,wci.sign_user_id,wci.if_sign,wci.if_retrieve
    ,ui.name as sign_user_name
    ,pa."APP_ID",pa."CUR_NODE",pa."CUR_PHASE",pa."INSTANCE_NO",pa."LAST_OP_TIME",pa."LAST_OP_USER",pa."OPED_USERS",pa."PHASES",pa."STATUS"
FROM 
    czsp.plan_info pi 
    left join czsp.plan_app pa on pi.app_id = pa.app_id 
    left join 
    (czsp.wf_cur_instance wci left join czsp.user_info ui on wci.sign_user_id = ui.user_id )
    on pi.instance_id = wci.instance_id
--------------------------------------------------------
--  DDL for View V_WF_NODE_DETAIL
--------------------------------------------------------

  CREATE OR REPLACE VIEW "CZSP"."V_WF_NODE_DETAIL" ("NODE_ID", "NODE_NAME", "WF_CUR_NODE", "IS_START", "IS_END", "PHASE_ID", "PHASE_NAME", "WF_CODE") AS 
  SELECT 
    n.node_id,n.node_name,n.wf_cur_node,n.is_start,n.is_end,
    p.phase_id,p.phase_name,p.wf_code
FROM 
    czsp.wf_node n left join czsp.wf_phase p on n.phase_id = p.phase_id
--------------------------------------------------------
--  DDL for Index ACCOUNT_INFO_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "CZSP"."ACCOUNT_INFO_PK" ON "CZSP"."ACCOUNT_INFO" ("USER_NAME")
--------------------------------------------------------
--  DDL for Index ACCOUNT_USER_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "CZSP"."ACCOUNT_USER_PK" ON "CZSP"."ACCOUNT_USER" ("USER_NAME", "USER_ID")
--------------------------------------------------------
--  DDL for Index DIC_AHTU_ROLE_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "CZSP"."DIC_AHTU_ROLE_PK" ON "CZSP"."DIC_AHTU_ROLE" ("ID")
--------------------------------------------------------
--  DDL for Index DIC_AHTU_DEPT_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "CZSP"."DIC_AHTU_DEPT_PK" ON "CZSP"."DIC_AHTU_DEPT" ("ID")
--------------------------------------------------------
--  DDL for Index DIC_PERMISSION_TYPE_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "CZSP"."DIC_PERMISSION_TYPE_PK" ON "CZSP"."DIC_PERMISSION_TYPE" ("ID")
--------------------------------------------------------
--  DDL for Index DIC_QX_CZ_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "CZSP"."DIC_QX_CZ_PK" ON "CZSP"."DIC_QX_CZ" ("ID")
--------------------------------------------------------
--  DDL for Index DIC_QX_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "CZSP"."DIC_QX_PK" ON "CZSP"."DIC_QX" ("ID")
--------------------------------------------------------
--  DDL for Index DIC_WF_NODE_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "CZSP"."DIC_WF_NODE_PK" ON "CZSP"."DIC_WF_NODE" ("ID")
--------------------------------------------------------
--  DDL for Index DIC_WF_PHASE_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "CZSP"."DIC_WF_PHASE_PK" ON "CZSP"."DIC_WF_PHASE" ("ID")
--------------------------------------------------------
--  DDL for Index PERMISSION_OBJECT_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "CZSP"."PERMISSION_OBJECT_PK" ON "CZSP"."PERMISSION_OBJECT" ("O_ID")
--------------------------------------------------------
--  DDL for Index PERMISSION_ROLE_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "CZSP"."PERMISSION_ROLE_PK" ON "CZSP"."PERMISSION_ROLE" ("ROLE_ID", "OBJECT_ID")
--------------------------------------------------------
--  DDL for Index PLAN_APP_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "CZSP"."PLAN_APP_PK" ON "CZSP"."PLAN_APP" ("APP_ID")
--------------------------------------------------------
--  DDL for Index PLAN_INFO_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "CZSP"."PLAN_INFO_PK" ON "CZSP"."PLAN_INFO" ("PLAN_ID")
--------------------------------------------------------
--  DDL for Index PLAN_OPINION_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "CZSP"."PLAN_OPINION_PK" ON "CZSP"."PLAN_OPINION" ("OPINION_ID")
--------------------------------------------------------
--  DDL for Index USER_INFO_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "CZSP"."USER_INFO_PK" ON "CZSP"."USER_INFO" ("USER_ID")
--------------------------------------------------------
--  DDL for Index WF_CUR_INSTANCE_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "CZSP"."WF_CUR_INSTANCE_PK" ON "CZSP"."WF_CUR_INSTANCE" ("INSTANCE_ID")
--------------------------------------------------------
--  DDL for Index WF_NODE_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "CZSP"."WF_NODE_PK" ON "CZSP"."WF_NODE" ("NODE_ID")
--------------------------------------------------------
--  DDL for Index WF_PHASE_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "CZSP"."WF_PHASE_PK" ON "CZSP"."WF_PHASE" ("PHASE_ID")
--------------------------------------------------------
--  DDL for Index WF_ROUTE_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "CZSP"."WF_ROUTE_PK" ON "CZSP"."WF_ROUTE" ("ROUTE_ID")
--------------------------------------------------------
--  Constraints for Table ACCOUNT_INFO
--------------------------------------------------------

  ALTER TABLE "CZSP"."ACCOUNT_INFO" ADD CONSTRAINT "ACCOUNT_INFO_PK" PRIMARY KEY ("USER_NAME") ENABLE
 
  ALTER TABLE "CZSP"."ACCOUNT_INFO" MODIFY ("USER_NAME" NOT NULL ENABLE)
 
  ALTER TABLE "CZSP"."ACCOUNT_INFO" MODIFY ("IS_AVAILABLE" NOT NULL ENABLE)
--------------------------------------------------------
--  Constraints for Table ACCOUNT_USER
--------------------------------------------------------

  ALTER TABLE "CZSP"."ACCOUNT_USER" ADD CONSTRAINT "ACCOUNT_USER_PK" PRIMARY KEY ("USER_NAME", "USER_ID") ENABLE
 
  ALTER TABLE "CZSP"."ACCOUNT_USER" MODIFY ("USER_NAME" NOT NULL ENABLE)
 
  ALTER TABLE "CZSP"."ACCOUNT_USER" MODIFY ("USER_ID" NOT NULL ENABLE)
--------------------------------------------------------
--  Constraints for Table BASE_DIC
--------------------------------------------------------

  ALTER TABLE "CZSP"."BASE_DIC" MODIFY ("DIC_ID" NOT NULL ENABLE)
--------------------------------------------------------
--  Constraints for Table DIC_AHTU_DEPT
--------------------------------------------------------

  ALTER TABLE "CZSP"."DIC_AHTU_DEPT" ADD CONSTRAINT "DIC_AHTU_DEPT_PK" PRIMARY KEY ("ID") ENABLE
 
  ALTER TABLE "CZSP"."DIC_AHTU_DEPT" MODIFY ("ID" NOT NULL ENABLE)
--------------------------------------------------------
--  Constraints for Table DIC_AHTU_ROLE
--------------------------------------------------------

  ALTER TABLE "CZSP"."DIC_AHTU_ROLE" ADD CONSTRAINT "DIC_AHTU_ROLE_PK" PRIMARY KEY ("ID") ENABLE
 
  ALTER TABLE "CZSP"."DIC_AHTU_ROLE" MODIFY ("ID" NOT NULL ENABLE)
--------------------------------------------------------
--  Constraints for Table DIC_PERMISSION_TYPE
--------------------------------------------------------

  ALTER TABLE "CZSP"."DIC_PERMISSION_TYPE" ADD CONSTRAINT "DIC_PERMISSION_TYPE_PK" PRIMARY KEY ("ID") ENABLE
 
  ALTER TABLE "CZSP"."DIC_PERMISSION_TYPE" MODIFY ("ID" NOT NULL ENABLE)
--------------------------------------------------------
--  Constraints for Table DIC_QX
--------------------------------------------------------

  ALTER TABLE "CZSP"."DIC_QX" ADD CONSTRAINT "DIC_QX_PK" PRIMARY KEY ("ID") ENABLE
 
  ALTER TABLE "CZSP"."DIC_QX" MODIFY ("ID" NOT NULL ENABLE)
--------------------------------------------------------
--  Constraints for Table DIC_QX_CZ
--------------------------------------------------------

  ALTER TABLE "CZSP"."DIC_QX_CZ" ADD CONSTRAINT "DIC_QX_CZ_PK" PRIMARY KEY ("ID") ENABLE
 
  ALTER TABLE "CZSP"."DIC_QX_CZ" MODIFY ("ID" NOT NULL ENABLE)
--------------------------------------------------------
--  Constraints for Table DIC_WF_NODE
--------------------------------------------------------

  ALTER TABLE "CZSP"."DIC_WF_NODE" ADD CONSTRAINT "DIC_WF_NODE_PK" PRIMARY KEY ("ID") ENABLE
 
  ALTER TABLE "CZSP"."DIC_WF_NODE" MODIFY ("ID" NOT NULL ENABLE)
--------------------------------------------------------
--  Constraints for Table DIC_WF_PHASE
--------------------------------------------------------

  ALTER TABLE "CZSP"."DIC_WF_PHASE" MODIFY ("ID" NOT NULL ENABLE)
 
  ALTER TABLE "CZSP"."DIC_WF_PHASE" ADD CONSTRAINT "TABLE1_PK" PRIMARY KEY ("ID") ENABLE
--------------------------------------------------------
--  Constraints for Table PERMISSION_OBJECT
--------------------------------------------------------

  ALTER TABLE "CZSP"."PERMISSION_OBJECT" ADD CONSTRAINT "PERMISSION_OBJECT_PK" PRIMARY KEY ("O_ID") ENABLE
 
  ALTER TABLE "CZSP"."PERMISSION_OBJECT" MODIFY ("O_ID" NOT NULL ENABLE)
 
  ALTER TABLE "CZSP"."PERMISSION_OBJECT" MODIFY ("OBJECT_NAME" NOT NULL ENABLE)
--------------------------------------------------------
--  Constraints for Table PERMISSION_ROLE
--------------------------------------------------------

  ALTER TABLE "CZSP"."PERMISSION_ROLE" ADD CONSTRAINT "PERMISSION_ROLE_PK" PRIMARY KEY ("ROLE_ID", "OBJECT_ID") ENABLE
 
  ALTER TABLE "CZSP"."PERMISSION_ROLE" MODIFY ("ROLE_ID" NOT NULL ENABLE)
 
  ALTER TABLE "CZSP"."PERMISSION_ROLE" MODIFY ("OBJECT_ID" NOT NULL ENABLE)
--------------------------------------------------------
--  Constraints for Table PLAN_APP
--------------------------------------------------------

  ALTER TABLE "CZSP"."PLAN_APP" ADD CONSTRAINT "PLAN_APP_PK" PRIMARY KEY ("APP_ID") ENABLE
 
  ALTER TABLE "CZSP"."PLAN_APP" MODIFY ("APP_ID" NOT NULL ENABLE)
--------------------------------------------------------
--  Constraints for Table PLAN_INFO
--------------------------------------------------------

  ALTER TABLE "CZSP"."PLAN_INFO" ADD CONSTRAINT "PLAN_INFO_PK" PRIMARY KEY ("PLAN_ID") ENABLE
 
  ALTER TABLE "CZSP"."PLAN_INFO" MODIFY ("PLAN_ID" NOT NULL ENABLE)
--------------------------------------------------------
--  Constraints for Table PLAN_OPINION
--------------------------------------------------------

  ALTER TABLE "CZSP"."PLAN_OPINION" ADD CONSTRAINT "PLAN_OPINION_PK" PRIMARY KEY ("OPINION_ID") ENABLE
 
  ALTER TABLE "CZSP"."PLAN_OPINION" MODIFY ("OPINION_ID" NOT NULL ENABLE)
--------------------------------------------------------
--  Constraints for Table USER_INFO
--------------------------------------------------------

  ALTER TABLE "CZSP"."USER_INFO" MODIFY ("USER_ID" NOT NULL ENABLE)
 
  ALTER TABLE "CZSP"."USER_INFO" ADD CONSTRAINT "USER_INFO_PK" PRIMARY KEY ("USER_ID") ENABLE
--------------------------------------------------------
--  Constraints for Table USER_OPERATION
--------------------------------------------------------

  ALTER TABLE "CZSP"."USER_OPERATION" MODIFY ("OP_TYPE" NOT NULL ENABLE)
--------------------------------------------------------
--  Constraints for Table WF_CUR_INSTANCE
--------------------------------------------------------

  ALTER TABLE "CZSP"."WF_CUR_INSTANCE" MODIFY ("INSTANCE_ID" NOT NULL ENABLE)
 
  ALTER TABLE "CZSP"."WF_CUR_INSTANCE" MODIFY ("NODE_ID" NOT NULL ENABLE)
 
  ALTER TABLE "CZSP"."WF_CUR_INSTANCE" ADD CONSTRAINT "WF_CUR_INSTANCE_PK" PRIMARY KEY ("INSTANCE_ID") ENABLE
--------------------------------------------------------
--  Constraints for Table WF_NODE
--------------------------------------------------------

  ALTER TABLE "CZSP"."WF_NODE" MODIFY ("NODE_ID" NOT NULL ENABLE)
 
  ALTER TABLE "CZSP"."WF_NODE" ADD CONSTRAINT "WF_NODE_PK" PRIMARY KEY ("NODE_ID") ENABLE
--------------------------------------------------------
--  Constraints for Table WF_PHASE
--------------------------------------------------------

  ALTER TABLE "CZSP"."WF_PHASE" MODIFY ("PHASE_ID" NOT NULL ENABLE)
 
  ALTER TABLE "CZSP"."WF_PHASE" ADD CONSTRAINT "WF_PHASE_PK" PRIMARY KEY ("PHASE_ID") ENABLE
--------------------------------------------------------
--  Constraints for Table WF_ROUTE
--------------------------------------------------------

  ALTER TABLE "CZSP"."WF_ROUTE" MODIFY ("ROUTE_ID" NOT NULL ENABLE)
 
  ALTER TABLE "CZSP"."WF_ROUTE" ADD CONSTRAINT "WF_ROUTE_PK" PRIMARY KEY ("ROUTE_ID") ENABLE
--------------------------------------------------------
--  Ref Constraints for Table ACCOUNT_USER
--------------------------------------------------------

  ALTER TABLE "CZSP"."ACCOUNT_USER" ADD CONSTRAINT "ACCOUNT_USER_FK1" FOREIGN KEY ("USER_ID")
	  REFERENCES "CZSP"."USER_INFO" ("USER_ID") ON DELETE CASCADE ENABLE
 
  ALTER TABLE "CZSP"."ACCOUNT_USER" ADD CONSTRAINT "ACCOUNT_USER_FK2" FOREIGN KEY ("USER_NAME")
	  REFERENCES "CZSP"."ACCOUNT_INFO" ("USER_NAME") ON DELETE CASCADE ENABLE
--------------------------------------------------------
--  Ref Constraints for Table DIC_QX_CZ
--------------------------------------------------------

  ALTER TABLE "CZSP"."DIC_QX_CZ" ADD CONSTRAINT "DIC_QX_CZ_FK1" FOREIGN KEY ("QX_ID")
	  REFERENCES "CZSP"."DIC_QX" ("ID") ON DELETE SET NULL ENABLE
--------------------------------------------------------
--  Ref Constraints for Table PERMISSION_ROLE
--------------------------------------------------------

  ALTER TABLE "CZSP"."PERMISSION_ROLE" ADD CONSTRAINT "PERMISSION_ROLE_FK1" FOREIGN KEY ("ROLE_ID")
	  REFERENCES "CZSP"."DIC_AHTU_ROLE" ("ID") ON DELETE CASCADE ENABLE
 
  ALTER TABLE "CZSP"."PERMISSION_ROLE" ADD CONSTRAINT "PERMISSION_ROLE_FK2" FOREIGN KEY ("OBJECT_ID")
	  REFERENCES "CZSP"."PERMISSION_OBJECT" ("O_ID") ON DELETE CASCADE ENABLE
--------------------------------------------------------
--  Ref Constraints for Table PLAN_APP
--------------------------------------------------------

  ALTER TABLE "CZSP"."PLAN_APP" ADD CONSTRAINT "PLAN_APP_FK1" FOREIGN KEY ("LAST_OP_USER")
	  REFERENCES "CZSP"."USER_INFO" ("USER_ID") ON DELETE SET NULL ENABLE
--------------------------------------------------------
--  Ref Constraints for Table PLAN_INFO
--------------------------------------------------------

  ALTER TABLE "CZSP"."PLAN_INFO" ADD CONSTRAINT "PLAN_INFO_FK1" FOREIGN KEY ("CREATE_USER_ID")
	  REFERENCES "CZSP"."USER_INFO" ("USER_ID") ON DELETE SET NULL ENABLE
--------------------------------------------------------
--  Ref Constraints for Table PLAN_OPINION
--------------------------------------------------------

  ALTER TABLE "CZSP"."PLAN_OPINION" ADD CONSTRAINT "PLAN_OPINION_FK1" FOREIGN KEY ("CREATE_BY")
	  REFERENCES "CZSP"."USER_INFO" ("USER_ID") ON DELETE SET NULL ENABLE
 
  ALTER TABLE "CZSP"."PLAN_OPINION" ADD CONSTRAINT "PLAN_OPINION_FK2" FOREIGN KEY ("PLAN_ID")
	  REFERENCES "CZSP"."PLAN_INFO" ("PLAN_ID") ON DELETE SET NULL ENABLE
 
  ALTER TABLE "CZSP"."PLAN_OPINION" ADD CONSTRAINT "PLAN_OPINION_FK3" FOREIGN KEY ("NODE_ID")
	  REFERENCES "CZSP"."WF_NODE" ("NODE_ID") ON DELETE SET NULL ENABLE
 
  ALTER TABLE "CZSP"."PLAN_OPINION" ADD CONSTRAINT "PLAN_OPINION_FK4" FOREIGN KEY ("PHASE_ID")
	  REFERENCES "CZSP"."WF_PHASE" ("PHASE_ID") ON DELETE SET NULL ENABLE
--------------------------------------------------------
--  Ref Constraints for Table USER_OPERATION
--------------------------------------------------------

  ALTER TABLE "CZSP"."USER_OPERATION" ADD CONSTRAINT "USER_OPERATION_FK1" FOREIGN KEY ("USER_ID")
	  REFERENCES "CZSP"."USER_INFO" ("USER_ID") ON DELETE SET NULL ENABLE
--------------------------------------------------------
--  Ref Constraints for Table WF_CUR_INSTANCE
--------------------------------------------------------

  ALTER TABLE "CZSP"."WF_CUR_INSTANCE" ADD CONSTRAINT "WF_CUR_INSTANCE_FK1" FOREIGN KEY ("NODE_ID")
	  REFERENCES "CZSP"."WF_NODE" ("NODE_ID") ON DELETE SET NULL ENABLE
 
  ALTER TABLE "CZSP"."WF_CUR_INSTANCE" ADD CONSTRAINT "WF_CUR_INSTANCE_FK2" FOREIGN KEY ("SIGN_USER_ID")
	  REFERENCES "CZSP"."USER_INFO" ("USER_ID") ON DELETE SET NULL ENABLE
--------------------------------------------------------
--  Ref Constraints for Table WF_HIS_INSTANCE
--------------------------------------------------------

  ALTER TABLE "CZSP"."WF_HIS_INSTANCE" ADD CONSTRAINT "WF_HIS_INSTANCE_FK1" FOREIGN KEY ("NODE_ID")
	  REFERENCES "CZSP"."WF_NODE" ("NODE_ID") ON DELETE SET NULL ENABLE
 
  ALTER TABLE "CZSP"."WF_HIS_INSTANCE" ADD CONSTRAINT "WF_HIS_INSTANCE_FK2" FOREIGN KEY ("SIGN_USER_ID")
	  REFERENCES "CZSP"."USER_INFO" ("USER_ID") ON DELETE SET NULL ENABLE
--------------------------------------------------------
--  Ref Constraints for Table WF_ROUTE
--------------------------------------------------------

  ALTER TABLE "CZSP"."WF_ROUTE" ADD CONSTRAINT "WF_ROUTE_FK2" FOREIGN KEY ("PHASE_ID")
	  REFERENCES "CZSP"."WF_PHASE" ("PHASE_ID") ON DELETE SET NULL ENABLE
--------------------------------------------------------
--  DDL for Trigger TRI_ADD_USER
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "CZSP"."TRI_ADD_USER" 
BEFORE INSERT ON USER_INFO 
for each row
BEGIN
  select seq_user_id.nextval into :new.user_id from dual;
END;
ALTER TRIGGER "CZSP"."TRI_ADD_USER" ENABLE
