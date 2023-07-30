create or replace trigger t1_superhero
before
insert on superhero
for each row
declare
v_user varchar2(20);
begin
select user into v_user from dual;
dbms_output.put_line('You are inserting 1 row '||v_user);
end;
/

create or replace trigger t2_superhero
before insert or update or delete on superhero
for each row
declare
v_user varchar2(20);
begin
select user into v_user from dual;
if inserting then
dbms_output.put_line('One row is inserted by '||v_user);
elsif updating then
dbms_output.put_line('one row is updated by '||v_user);
elsif deleting then
dbms_output.put_line('one row is deleted by '||v_user);
end if;
end;
/

create or replace trigger hr_tr_audit
after ddl on schema
begin
insert into tr_audit values(sysdate,sys_context('USERENV','current_user'),
ora_dict_obj_type,
ora_dict_obj_name,
ora_sysevent);
end;
/

create or replace trigger tr_logon
after logon on schema
begin
insert into tr_audit_evn values(ora_sysevent,
sysdate,
to_char(sysdate,'hh:mi:ss'),
null,null);
commit;
end;
/

create or replace trigger tr_logof
before logoff on schema
begin
insert into tr_audit_evn values(ora_sysevent,
null,
null,
sysdate,
to_char(sysdate,'hh:mi:ss'));
commit;
end;
/