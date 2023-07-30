create or replace procedure pd1 is
var_name varchar2(20):='Shrish';
var_loc varchar2(20):='Residing in Delhi';
begin
dbms_output.put_line('I am '||var_name||', from '||var_loc);
end pd1;
/

create or replace procedure pd2(dpid number,sal number) is
begin
update ins_demo_copy2 set esal=esal+sal where deptno=dpid;
end pd2;
/

