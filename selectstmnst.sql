declare
v_ename varchar2(20);
v_esal number(6);
v_eno number(4):=&v_eno;
begin
select ename,esal into v_ename,v_esal from ins_demo_copy where eno>1102;
dbms_output.put_line(v_ename||'  '||v_esal);
end;
/ 

declare
v_ename ins_demo_copy.ename%type;
v_esal ins_demo_copy.esal%type;
v_eno ins_demo_copy.eno%type:=&v_eno;
begin
select ename,esal into v_ename,v_esal from ins_demo_copy where eno=v_eno;
dbms_output.put_line(v_ename||'  '||v_esal);
end;
/

declare
v_rec ins_demo_copy%rowtype;
begin
select * into v_rec from ins_demo_copy where eno=1104;
dbms_output.put_line(v_rec.ename||' '||v_rec.esal);
end;
/

declare
v_rec ins_demo_copy%rowtype;
v_eno ins_demo_copy.eno%type:=&v_eno;
begin
select * into v_rec from ins_demo_copy where eno=v_eno;
dbms_output.put_line('_______________________________________________________');
dbms_output.put_line('ENO   ENAME   ESAL');
dbms_output.put_line('_______________________________________________________');
dbms_output.put_line(v_rec.eno||'   '||v_rec.ename||'   '||v_rec.esal);
end;
/

declare
v_empno jemp.empno%type:=&v_empno;
v_ename jemp.ename%type;
v_ejob jemp.ejob%type;
v_esal jemp.esal%type;
begin
select empno,ename,ejob,esal into v_empno,v_ename,v_ejob,v_esal from jemp where empno=v_empno;
dbms_output.put_line('_______________________________________________________');
dbms_output.put_line('EMPNO    ENAME    EJOB    ESAL');
dbms_output.put_line('_______________________________________________________');
dbms_output.put_line(v_empno||'   '||v_ename||'   '||v_ejob||'   '||v_esal);
end;
/

declare
v_rec jemp%rowtype;
v_empno jemp.empno%type:=&v_empno;
begin
select * into v_rec from jemp where empno=v_empno;
dbms_output.put_line('_______________________________________________________');
dbms_output.put_line('EMPNO    ENAME    EJOB    ESAL');
dbms_output.put_line('_______________________________________________________');
dbms_output.put_line(v_rec.empno||'    '||v_rec.ename||'    '||v_rec.ejob||'    '||v_rec.esal);
end;
/

declare
v_empno jemp.empno%type:=&v_empno;
v_ename jemp.ename%type;
v_esal jemp.esal%type;
v_drec jdept%rowtype;
v_deptno jdept.deptno%type:=&v_deptno;
begin
select ename,esal into v_ename,v_esal from jemp where empno=v_empno;
select * into v_drec from jdept where deptno=v_deptno;
dbms_output.put_line('_______________________________________________________');
dbms_output.put_line('ENAME    ESAL');
dbms_output.put_line('_______________________________________________________');
dbms_output.put_line(v_ename||'   '||v_esal);
dbms_output.put_line('_______________________________________________________');
dbms_output.put_line('DEPTNO    DNAME');
dbms_output.put_line(v_drec.deptno||'   '||v_drec.dname);
end;
/