create or replace package pack1 is
procedure p1;
function f1 return varchar2;
end;
/

create or replace package body pack1 is
procedure p1 is
begin
dbms_output.put_line('Hello from Package');
end p1;
function f1 return varchar2 is
begin
return 'HELLO';
end f1;
end pack1;
/
--------------------------------------------

create or replace package pack2 is
procedure pr1(v_empno number,v_ename varchar2);
function fn1 return varchar2;
end pack2; -- pack2 is optional
/

create or replace package body pack2 is
procedure pr1(v_empno number,v_ename varchar2) is
begin
insert into emptest(eno,ename) values(v_empno,v_ename);
end pr1;
function fn1 return varchar2 is
begin
return 'HELLO';
end fn1;
end pack2;
/

----------------------------------------------

create or replace package pk is
procedure pr(dpid number,sal number);
function funtax(p_empno number) return number;
end pk;
/

create or replace package body pk is
procedure pr(dpid number,sal number) is
begin
update ins_demo_copy2 set esal=esal+sal where deptno=dpid;
end pr;
function funtax(p_empno number) return number is
v_esal number(6);
begin
select esal into v_esal from emptest where eno=p_empno;
return v_esal*0.20;
end funtax;
end pk;
/

-----------------------------------------------------------

create or replace package pack3 is
procedure p2(p_empno number);
function f2(v_empno number) return varchar2;
end pack3;
/

create or replace package body pack3 is
procedure p2(p_empno number) is
begin
insert into emptest(eno) values(p_empno);
end p2;
function f2(v_empno number) return varchar2 is
v_ename varchar2(20);
begin
select ename into v_ename from emptest where eno=v_empno;
return v_ename;
end f2;
end pack3;
/