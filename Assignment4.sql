/*1*/
declare
v_age number:=&v_age;
v_dl boolean:=&v_dl;
begin
if v_age<18 then
raise_application_error(-20005,'You are below 18 ,you are not eligible to drive');
elsif v_dl=false then
raise_application_error(-20006,'You do not have a Driver Licence, you are not eligible to drive');
else
dbms_output.put_line('Have a safe Drive!!');
end if;
exception when others then
dbms_output.put_line(SQLERRM);
end;
/

/*2*/
declare
v_eno number(4):=&v_eno;
v_ename varchar2(20):='&v_ename';
v_esal number(6):=&v_esal;
v_deptno number(2):=&deptno;
v_deptname varchar2(20):='&deptname';
begin
insert into emptest values(v_eno,v_ename,v_esal,v_deptname,v_deptno);
exception when others then
dbms_output.put_line('INSERT OPERATION FAILED');
end;
/