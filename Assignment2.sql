/*1*/
declare
n number(2):=&n;
begin
if MOD(n,2)=0 then
dbms_output.put_line(n||' is even');
else
dbms_output.put_line(n||' is odd');
end if;
end;
/

/*2*/
declare
a number(2):=&a;
b number(2):=&b;
opr char(1):='&opr';
begin
if opr='+' then dbms_output.put_line('a+b: '||(a+b));
elsif opr='-' then dbms_output.put_line('a-b: '||(a-b));
elsif opr='*' then dbms_output.put_line('a*b: '||(a*b));
elsif opr='/' then dbms_output.put_line('a/b: '||(a/b));
else
dbms_output.put_line('Invalid operator.Please enter only +,*,-,/');
end if;
end;
/

/*3*/
declare
a number(2):=&a;
b number(2):=&b;
c number(2):=&c;
v number(4);
begin
v:=a+b+c;
if (v/3 >= 80) then dbms_output.put_line('DISTINCTION');
elsif (v/3 >= 60 and v/3 < 80) then dbms_output.put_line('FIRST CLASS');
elsif (v/3 >= 50 and v/3 < 60) then dbms_output.put_line('SECOND CLASS');
else
dbms_output.put_line('BETTER LUCK NEXT TIME');
end if;
end;
/

/*4*/
declare
v_rank char(5):='&v_rank';
v_loc varchar2(20);
begin
v_loc:=case v_rank when '*****' then 'Home town: NEW DELHI'
when '****' then 'Same state: DELHI'
when '***' then 'Neighbouring State: UTTAR PRADESH'
else 'Remote state: Gujarat' end;
dbms_output.put_line('The rank is '||v_rank||'. The Location is '||v_loc);
end;
/

/*5*/
declare
v_deptno number(4):=10;
v_esal number(6):=8000;
v_ename varchar2(20);
v_empno number(4):=5001;
begin
for i in 1..12 loop
v_ename:='Naman'||v_deptno||v_empno;
if MOD(i,4)=0 then
insert into demotype values(v_empno,v_ename,v_esal,v_deptno);
v_deptno:=v_deptno+10;
v_esal:=v_esal*2;
else
insert into demotype values(v_empno,v_ename,v_esal,v_deptno);
end if;
v_empno:=v_empno+1;
end loop;
end;
/

/*6*/
declare
n number(4):=5;
res number(4);
begin
for i in 1..10 loop
if i<=5 then
res:=n*i;
dbms_output.put_line(n||'*'||i||'='||res);
else
res:=(n+1)*i;
dbms_output.put_line((n+1)||'*'||i||'='||res);
end if;
end loop;
end;
/

/*7*/
begin
for i in 1..10 loop
dbms_output.put(i);
for j in 1..i loop
dbms_output.put('a');
end loop;
dbms_output.new_line;
end loop;
end;
/

/*8*/
declare
v_str varchar2(20):='&v_str';
sub varchar2(4);
v_vow number(2):=0;
begin
for i in 1..length(v_str) loop
sub:=substr(v_str,i,1);
if sub in ('A','E','I','O','U') or sub in ('a','e','i','o','u') then
v_vow:=v_vow+1;
end if;
end loop;
dbms_output.put_line('The number of vowels is: '||v_vow);
end;
/

/*9*/
declare
v_anum char(1);
begin
for i in 65..90 loop
select chr(i) into v_anum from dual;
dbms_output.put_line(v_anum||' '||i);
end loop;
end;
/

/*10*/
declare
v_eno ins_demo_copy.eno%type;
v_ename ins_demo_copy.ename%type;
v_esal ins_demo_copy.esal%type;
v_dept ins_demo_copy.deptno%type;
cursor c3 is select eno,ename,esal,deptno from ins_demo_copy;
begin
open c3;
loop
fetch c3 into v_eno,v_ename,v_esal,v_dept;
exit when c3%notfound;
dbms_output.put_line(v_eno||'  '||v_ename||'  '||v_esal||'  '||v_dept);
end loop;
close c3;sp
end;
/

/*11*/
declare
v_emprec empcins%rowtype;
cursor c5 is select * from empcins;
begin
open c5;
loop
fetch c5 into v_emprec;
exit when c5%notfound;
dbms_output.put_line(v_emprec.cartype||'    '||v_emprec.insurance_exp);
end loop;
close c5;
end;
/

/*12*/
declare
cursor c14(p_date date,p_edate date) is select ename,cartype,dop from empcpur where dop>=p_date and dop<=p_edate;
begin
for i in c14('12-oct-2019','13-oct2020') loop
dbms_output.put_line(i.ename||' purchased a '||i.cartype||' on '||i.dop);
end loop;
end;
/

