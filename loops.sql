/*WHILE LOOP*/
declare
n number(4):=1;
begin
while n<=10 loop
dbms_output.put_line(n);
n:=n+1;
end loop;
end;
/

/*BASIC LOOP*/
declare
n number(5):=1;
begin
dbms_output.put_line('I am using basic loop');
loop
dbms_output.put_line(n);
n:=n+1;
exit when n>10;
end loop;
end;
/

declare
v_eno number(6):=3001;
v_ename varchar2(20):='Scott';
n number(4):=1;
begin
loop
insert into demotype values(v_eno,v_ename||n,8000,10);
v_eno:=v_eno+1;
n:=n+1;
exit when n>10;
end loop;
end;
/

/*FOR LOOP*/
begin
for i in 1..10 loop
dbms_output.put_line(i);
end loop;
end;
/

declare
n number(4):=&n;
res number(5);
begin
for i in 1..10 loop
res:=n*i;
dbms_output.put_line(n||'*'||i||'='||res);
end loop;
end;
/
