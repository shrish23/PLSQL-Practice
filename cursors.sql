declare
v_ename varchar2(20);
cursor c1 is 
select ename from ins_demo_copy where eno>1102;
begin
open c1;
loop
fetch c1 into v_ename;
exit when c1%notfound;
dbms_output.put_line(v_ename);
end loop;
close c1;
end;
/

declare
cursor c2 is select ename,esal from ins_demo_copy where esal>2000;
v_ename ins_demo_copy.ename%type;
v_esal ins_demo_copy.esal%type;
begin
open c2;
loop
fetch c2 into v_ename,v_esal;
exit when c2%notfound;
dbms_output.put_line(v_ename||' '||v_esal);
end loop;
close c2;
end;
/

declare
cursor c6 is select ename from ins_demo_copy where deptno=10;
v_ename varchar2(20);
cursor c7 is select ename,esal from ins_demo_copy where deptno=20;
v_ename1 varchar2(20);
v_esal number(6);
begin
open c6;
dbms_output.put_line('____details from deptno 10____');
loop
fetch c6 into v_ename;
exit when c6%notfound;
dbms_output.put_line(v_ename);
end loop;
close c6;
open c7;
dbms_output.put_line('____details from deptno 20____');
loop
fetch c7 into v_ename1,v_esal;
exit when c7%notfound;
dbms_output.put_line(v_ename1||'  '||v_esal);
end loop;
close c7;
end;
/

declare
cursor c8 is select ename from empcins where EXTRACT(Year from empcins.insurance_exp)='2022';
v_ename varchar2(20);
cursor c9 is select ename,cartype from empcins where EXTRACT(Year from empcins.insurance_exp)='2023';
v_ename1 varchar2(20);
v_ctype varchar2(10);
begin
open c8;
dbms_output.put_line('_____Employee name with Car Insurance expiry in 2022____');
loop
fetch c8 into v_ename;
exit when c8%notfound;
dbms_output.put_line(v_ename);
end loop;
close c8;
open c9;
dbms_output.put_line('____Employee name and Cartype with car Insurance Expiry in 2023____');
loop
fetch c9 into v_ename1,v_ctype;
exit when c9%notfound;
dbms_output.put_line(v_ename1||'    '||v_ctype);
end loop;
close c9;
end;
/

declare
v_deptno number(5);
cursor c10(p_deptno ins_demo_copy.deptno%type) is select ename from ins_demo_copy where deptno=p_deptno;
v_ename varchar2(20);
begin
open c10(10);
dbms_output.put_line('____Details from deptno 10____');
loop
fetch c10 into v_ename;
exit when c10%notfound;
dbms_output.put_line(v_ename);
end loop;
close c10;
open c10(30);
dbms_output.put_line('____Details from deptno 30____');
loop
fetch c10 into v_ename;
exit when c10%notfound;
dbms_output.put_line(v_ename);
end loop;
close c10;
end;
/

declare
v_ename varchar2(20);
cursor c11(v_pcur varchar2) is select ename from ins_demo_copy where eno<v_pcur;
begin
open c11(1103);
loop
fetch c11 into v_ename;
exit when c11%notfound;
dbms_output.put_line(v_ename);
end loop;
close c11;
end;
/

declare
v_esal number(6);
v_ename varchar2(20);
cursor c12(v_pcur number) is select esal,ename from ins_demo_copy where eno<v_pcur;
begin
open c12(2001);
loop
fetch c12 into v_esal,v_ename;
exit when c12%notfound;
dbms_output.put_line(v_ename||'   '||v_esal);
end loop;
close c12;
end;
/

declare
cursor c13(p_deptno number) is select ename,deptno from ins_demo_copy where deptno=p_deptno;
begin
for i in c13(10) loop
dbms_output.put_line(i.ename||'   '||i.deptno);
end loop;
end;
/