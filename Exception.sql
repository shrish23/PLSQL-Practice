declare
n number;
m number;
var_div number:=&n;
var_dsr number:=&m;
var_res number;
ex_divz exception;
begin
if var_dsr=0 then
raise ex_divz;
end if;
var_res:=var_div/var_dsr;
dbms_output.put_line('Result '||var_res);
exception when ex_divz then
dbms_output.put_line('ERROR ERROR');
end;
/

declare
age number:=&age;
begin
if age<18 then
raise_application_error(-20009,'You should be above 18');
end if;
dbms_output.put_line('Yes! you are eligible');
exception when others then
dbms_output.put_line(SQLERRM);
end;
/

declare
ex_age exception;
n number;
age number:=&n;
pragma exception_init(ex_age,-20008);
begin
if age<18 then
raise_application_error(-20009,'You should be above 18');
end if;
dbms_output.put_line('Yes!, you are eligible');
exception when ex_age then
dbms_output.put_line(SQLERRM);
end;
/

declare
v_empno number(4):=&v_empno;
v_ename varchar2(20);
begin select ename into v_ename from emptest where eno=v_empno;
dbms_output.put_line(v_ename);
exception
when too_many_rows then
dbms_output.put_line('too many rows found');
when no_data_found then
dbms_output.put_line('not valid empno');
end;
/

declare
exp_update exception;
empno number(4);
begin
update emptest set esal=esal+1000 where eno=&empno;
if sql%notfound then
raise exp_update;
end if;
exception when exp_update then
raise_application_error(-20009,'Wrong Empno update');
end;
/
