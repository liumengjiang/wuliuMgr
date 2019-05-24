prompt PL/SQL Developer import file
prompt Created on 2019年5月24日 by Think
set feedback off
set define off
prompt Creating CAR_RECORD...
create table CAR_RECORD
(
  waybillid   NUMBER(20) not null,
  recorddate  DATE,
  pickupplace VARCHAR2(100),
  destination VARCHAR2(100),
  customname  VARCHAR2(50),
  customphone VARCHAR2(20),
  cost        NUMBER(10,2),
  cid         NUMBER(20) not null,
  oid         NUMBER(20) not null
)
;
alter table CAR_RECORD
  add constraint CAR_RECORD_PK primary key (WAYBILLID);

prompt Creating CAR_STATE...
create table CAR_STATE
(
  cid   NUMBER(20) not null,
  state NUMBER,
  tid   NUMBER(20) not null,
  did   NUMBER(20) not null
)
;
alter table CAR_STATE
  add constraint CAR_STATE_PK primary key (CID);

prompt Creating DRIVER...
create table DRIVER
(
  did   NUMBER(20) not null,
  dname VARCHAR2(100)
)
;
alter table DRIVER
  add constraint DRIVER_PK primary key (DID);

prompt Creating ORDERUSER...
create table ORDERUSER
(
  id         NUMBER(20) not null,
  username   VARCHAR2(20),
  password   VARCHAR2(20),
  name       VARCHAR2(20),
  sex        NUMBER(20),
  age        NUMBER(20),
  registtime DATE,
  state      NUMBER(20)
)
;
alter table ORDERUSER
  add constraint ID primary key (ID);

prompt Creating TRUCK...
create table TRUCK
(
  tid       NUMBER(20),
  carnumber VARCHAR2(20) not null
)
;
alter table TRUCK
  add constraint TRUCK_PK primary key (CARNUMBER);

prompt Loading CAR_RECORD...
insert into CAR_RECORD (waybillid, recorddate, pickupplace, destination, customname, customphone, cost, cid, oid)
values (1231335, to_date('01-04-2019', 'dd-mm-yyyy'), '湖南新华', '广东深圳南山区', '刘老就', '12423424', 12, 23, 1);
insert into CAR_RECORD (waybillid, recorddate, pickupplace, destination, customname, customphone, cost, cid, oid)
values (1231336, to_date('01-04-2019', 'dd-mm-yyyy'), '湖南新华', '广东深圳南山区', '刘老就', '12423424', 1212121, 25, 1);
insert into CAR_RECORD (waybillid, recorddate, pickupplace, destination, customname, customphone, cost, cid, oid)
values (1231345, to_date('23-05-2019 22:54:22', 'dd-mm-yyyy hh24:mi:ss'), '广州', '深圳', '刘', '12312312313', 12, 2, 1);
insert into CAR_RECORD (waybillid, recorddate, pickupplace, destination, customname, customphone, cost, cid, oid)
values (1231353, to_date('24-05-2019 09:11:51', 'dd-mm-yyyy hh24:mi:ss'), '广州', '深圳', '刘', '12312312313', 12, 24, 1);
insert into CAR_RECORD (waybillid, recorddate, pickupplace, destination, customname, customphone, cost, cid, oid)
values (1231314, to_date('01-04-2019', 'dd-mm-yyyy'), '湖南新华', '广东深圳南山区', '刘老就', '12423424', 1212121, 24, 1);
insert into CAR_RECORD (waybillid, recorddate, pickupplace, destination, customname, customphone, cost, cid, oid)
values (1231315, to_date('01-04-2019', 'dd-mm-yyyy'), '湖南新华', '广东深圳南山区', '刘老就', '12423424', 1212121, 25, 1);
insert into CAR_RECORD (waybillid, recorddate, pickupplace, destination, customname, customphone, cost, cid, oid)
values (1231316, to_date('01-04-2019', 'dd-mm-yyyy'), '湖南新华', '广东深圳南山区', '刘老就', '12423424', 1212121, 26, 1);
insert into CAR_RECORD (waybillid, recorddate, pickupplace, destination, customname, customphone, cost, cid, oid)
values (1231317, to_date('01-04-2019', 'dd-mm-yyyy'), '湖南新华', '广东深圳南山区', '刘老就', '12423424', 1212121, 27, 1);
insert into CAR_RECORD (waybillid, recorddate, pickupplace, destination, customname, customphone, cost, cid, oid)
values (1231318, to_date('01-04-2019', 'dd-mm-yyyy'), '湖南新华', '广东深圳南山区', '刘老就', '12423424', 1212121, 28, 1);
insert into CAR_RECORD (waybillid, recorddate, pickupplace, destination, customname, customphone, cost, cid, oid)
values (1231319, to_date('01-04-2019', 'dd-mm-yyyy'), '湖南新华', '广东深圳南山区', '刘老就', '12423424', 123, 23, 1);
insert into CAR_RECORD (waybillid, recorddate, pickupplace, destination, customname, customphone, cost, cid, oid)
values (1231320, to_date('01-04-2019', 'dd-mm-yyyy'), '湖南新华', '广东深圳南山区', '刘老就', '12423424', 1212121, 23, 1);
insert into CAR_RECORD (waybillid, recorddate, pickupplace, destination, customname, customphone, cost, cid, oid)
values (1231321, to_date('01-04-2019', 'dd-mm-yyyy'), '湖南新华', '广东深圳南山区', '刘老就', '12423424', 1212121, 30, 1);
insert into CAR_RECORD (waybillid, recorddate, pickupplace, destination, customname, customphone, cost, cid, oid)
values (1231322, to_date('01-04-2019', 'dd-mm-yyyy'), '湖南新华', '广东深圳南山区', '刘老就', '12423424', 1212121, 24, 1);
insert into CAR_RECORD (waybillid, recorddate, pickupplace, destination, customname, customphone, cost, cid, oid)
values (1231340, to_date('23-05-2019 17:09:17', 'dd-mm-yyyy hh24:mi:ss'), '广州', '深圳', '刘', '12312312313', 12, 24, 1);
insert into CAR_RECORD (waybillid, recorddate, pickupplace, destination, customname, customphone, cost, cid, oid)
values (1231339, to_date('23-05-2019 17:06:34', 'dd-mm-yyyy hh24:mi:ss'), '广州', '深圳', '刘', '12312312313', 12, 23, 1);
insert into CAR_RECORD (waybillid, recorddate, pickupplace, destination, customname, customphone, cost, cid, oid)
values (1231344, to_date('23-05-2019 17:15:24', 'dd-mm-yyyy hh24:mi:ss'), '广州', '深圳', '刘', '12312312313', 12, 25, 1);
insert into CAR_RECORD (waybillid, recorddate, pickupplace, destination, customname, customphone, cost, cid, oid)
values (1231346, to_date('23-05-2019 22:56:12', 'dd-mm-yyyy hh24:mi:ss'), '广州', '深圳', '刘', '12312312313', 12, 26, 1);
insert into CAR_RECORD (waybillid, recorddate, pickupplace, destination, customname, customphone, cost, cid, oid)
values (1231333, to_date('01-04-2019', 'dd-mm-yyyy'), '湖南新华', '广东深圳南山区', '刘老就', '12423424', 1212121, 27, 12);
insert into CAR_RECORD (waybillid, recorddate, pickupplace, destination, customname, customphone, cost, cid, oid)
values (1231334, to_date('01-04-2019', 'dd-mm-yyyy'), '湖南新华', '广东深圳南山区', '刘老就', '12423424', 1212121, 28, 12);
insert into CAR_RECORD (waybillid, recorddate, pickupplace, destination, customname, customphone, cost, cid, oid)
values (1231337, to_date('01-04-2019', 'dd-mm-yyyy'), '湖南新华', '广东深圳南山区', '刘老就', '12423424', 1212121, 29, 1);
insert into CAR_RECORD (waybillid, recorddate, pickupplace, destination, customname, customphone, cost, cid, oid)
values (1231338, to_date('01-04-2019', 'dd-mm-yyyy'), '湖南新华', '广东深圳南山区', '刘老就', '12423424', 1212121, 30, 1);
insert into CAR_RECORD (waybillid, recorddate, pickupplace, destination, customname, customphone, cost, cid, oid)
values (1231341, to_date('23-05-2019 17:13:53', 'dd-mm-yyyy hh24:mi:ss'), '广州', '深圳', '刘', '12312312313', 12, 31, 1);
insert into CAR_RECORD (waybillid, recorddate, pickupplace, destination, customname, customphone, cost, cid, oid)
values (1231342, to_date('23-05-2019 17:14:26', 'dd-mm-yyyy hh24:mi:ss'), '广州', '深圳', '刘', '12312312313', 12, 1, 1);
insert into CAR_RECORD (waybillid, recorddate, pickupplace, destination, customname, customphone, cost, cid, oid)
values (1231343, to_date('23-05-2019 17:14:46', 'dd-mm-yyyy hh24:mi:ss'), '广州', '深圳', '刘', '12312312313', 12, 2, 1);
commit;
prompt 24 records loaded
prompt Loading CAR_STATE...
insert into CAR_STATE (cid, state, tid, did)
values (23, 2, 10, 7);
insert into CAR_STATE (cid, state, tid, did)
values (24, -1, 12, 9);
insert into CAR_STATE (cid, state, tid, did)
values (25, 2, 13, 10);
insert into CAR_STATE (cid, state, tid, did)
values (26, 1, 13, 7);
insert into CAR_STATE (cid, state, tid, did)
values (27, 0, 11, 11);
insert into CAR_STATE (cid, state, tid, did)
values (28, -1, 14, 9);
insert into CAR_STATE (cid, state, tid, did)
values (29, -1, 15, 8);
commit;
prompt 7 records loaded
prompt Loading DRIVER...
insert into DRIVER (did, dname)
values (7, '张三');
insert into DRIVER (did, dname)
values (8, '李四');
insert into DRIVER (did, dname)
values (9, '王五');
insert into DRIVER (did, dname)
values (10, '麻溜');
insert into DRIVER (did, dname)
values (11, '瓜皮');
commit;
prompt 5 records loaded
prompt Loading ORDERUSER...
insert into ORDERUSER (id, username, password, name, sex, age, registtime, state)
values (5, 'liumeng', 'liumeng', 'liumeng', 1, 22, null, null);
insert into ORDERUSER (id, username, password, name, sex, age, registtime, state)
values (1, 'liujun', 'liujun', 'liujun', 0, 20, to_date('14-05-2019', 'dd-mm-yyyy'), null);
insert into ORDERUSER (id, username, password, name, sex, age, registtime, state)
values (3, '1234', null, null, null, null, null, null);
commit;
prompt 3 records loaded
prompt Loading TRUCK...
insert into TRUCK (tid, carnumber)
values (13, '内A 66666');
insert into TRUCK (tid, carnumber)
values (14, '内A 88888');
insert into TRUCK (tid, carnumber)
values (15, '内A 99999');
insert into TRUCK (tid, carnumber)
values (16, '内B 66666');
insert into TRUCK (tid, carnumber)
values (17, '内B 88888');
insert into TRUCK (tid, carnumber)
values (18, '内B 99999');
insert into TRUCK (tid, carnumber)
values (19, '内D 66666');
insert into TRUCK (tid, carnumber)
values (20, '内D 88888');
insert into TRUCK (tid, carnumber)
values (21, '内D 99999');
commit;
prompt 9 records loaded
set feedback on
set define on
prompt Done.


CREATE OR REPLACE PROCEDURE proc_query_car_page(pageIndex NUMBER,
pageSize NUMBER, 
waybillid car_RECORD.waybillid%TYPE,
   dname driver.dname%TYPE, 
   startDate car_RECORD.RECORDDATE%TYPE,
   endDate car_RECORD.RECORDDATE%TYPE,
   totalCount OUT NUMBER,
   c_emps OUT SYS_REFCURSOR
)
AS
  --声明变量
  t_start NUMBER := (pageIndex - 1)*pageSize + 1;
  t_end  NUMBER := pageIndex * pageSize;
  t_sql VARCHAR2(2000);
  t_count_sql VARCHAR2(500);
  t_temp_sql  VARCHAR2(500);
BEGIN
  t_sql  := 'SELECT waybillid,RECORDDATE,dname,carnumber,PICKUPPLACE,destination,customname,customphone,COST,state,name
FROM (SELECT waybillid,RECORDDATE,dname,carnumber,pickupplace,destination,customname,customphone,COST,car_state.state,name,ROWNUM rn
     FROM car_RECORD JOIN car_state ON car_RECORD.Cid=car_state.cid JOIN driver ON driver.did=car_state.did JOIN truck ON truck.tid=car_state.tid JOIN orderuser ON orderuser.id=car_RECORD.oid WHERE 1=1';
  t_count_sql := 'SELECT COUNT(1)
     FROM car_RECORD JOIN car_state ON car_RECORD.Cid=car_state.cid JOIN driver ON driver.did=car_state.did JOIN truck ON truck.tid=car_state.tid JOIN orderuser ON orderuser.id=car_RECORD.oid WHERE 1=1 ';
  IF  waybillid IS NOT  NULL   THEN

     t_temp_sql := t_temp_sql || ' and waybillid = '|| waybillid;
  END IF;
   IF  dname IS NOT  NULL   THEN
     t_temp_sql := t_temp_sql || ' and dname =  '''|| dname || '''';
  END IF;
   IF  startDate IS NOT  NULL   THEN
     t_temp_sql := t_temp_sql || ' and RECORDDATE >= '''|| startDate||'''';
  END IF;
   IF  endDate IS NOT  NULL   THEN
     t_temp_sql := t_temp_sql || ' and RECORDDATE <= '''|| endDate||'''';
  END IF;

  t_count_sql := t_count_sql||t_temp_sql;

  t_sql := t_sql||t_temp_sql || ' ) t where t.rn >=' || t_start || ' and t.rn <= ' || t_end;
  dbms_output.put_line(t_sql);

  EXECUTE IMMEDIATE t_count_sql INTO totalCount;
  --打开游标,并且绑定sql
  OPEN c_emps FOR  t_sql;
END;
