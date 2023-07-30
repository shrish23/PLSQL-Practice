/*Creating a function*/
create or replace function fun1 return varchar2 is
begin
return 'today is the first day in Capgemini';
end;
/

/*Printing a function*/
select fun1 from dual;

/*Printing a Function: Bind variable method*/
var gmsg varchar2(40)
begin
:gmsg:=fun1;
end;
/

declare
vm varchar2(40);
begin
vm:=fun1;
dbms_output.put_line(vm);
end;
/

create or replace function fun2(n number)
return varchar2 is
begin
if n>0 then
return 'positive number';
else
return 'negative number';
end if;
end;
/

declare
vm varchar2(30);
begin
vm:=fun2(-234);
dbms_output.put_line(vm);
end;
/

create or replace function funtax(p_empno number)
return number is
v_esal number(6);
begin
select esal into v_esal from emptest where eno=p_empno;
return v_esal*0.20;
end;
/

select eno,ename,esal,funtax(105) tax from emptest where eno=105;

create or replace function add_num(var_1 number,var_2 number default 0,var_3 number)
return number is
begin
dbms_output.put_line('var_1->'||var_1);
dbms_output.put_line('var_2->'||var_2);
dbms_output.put_line('var_3->'||var_3);
return var_1+var_2+var_3;
end;
/

