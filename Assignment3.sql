/*1*/
create or replace function oddeven(n number) return varchar2 is
begin
if MOD(n,2)=0 then
return 'EVEN';
else
return 'ODD';
end if;
end;
/

declare
vm varchar2(20);
begin
vm:=oddeven(93);
dbms_output.put_line(vm);
end;
/

/*2*/
create or replace function sos return number is
s_esal number(6);
begin
select SUM(esal) into s_esal from emptest;
return s_esal;
end;
/

/*3*/
create or replace function sechsal return number is
v_sesal number(6);
begin
select MAX(esal) into v_sesal from emptest where esal<(select MAX(esal) from emptest);
return v_sesal;
end;
/

/*4*/
create or replace function incsal(p_eno number) return varchar2 is
begin
update ins_demo_copy set esal=esal+100 where eno=p_eno;
return 'done';
end;
/

declare
cursor c1 is select eno,ename,esal,deptno from ins_demo_copy where deptno in(10,20);
v_res varchar2(10);
begin
for i in c1 loop
v_res:=incsal(i.eno);
end loop;
end;
/


/*5*/
create or replace function fr(fruit_1 varchar2 default 'apple',fruit_2 varchar2 default 'mango',fruit_3 varchar2 default 'grape',weight number)
return varchar2 is
begin
dbms_output.put_line('Fruit_1->'||fruit_1);
dbms_output.put_line('Fruit_2->'||fruit_2);
dbms_output.put_line('Fruit_3->'||fruit_3);
if weight<5 then
 return'GOOD';
elsif weight>=5 and weight<6 then
 return'AVG';
else
 return'BAD';
end if;
end;
/

declare
v_qual varchar2(10);
begin
v_qual:=fr(fruit_2=>'Kiwi',fruit_1=>'Banana',weight=>6.6);
dbms_output.put_line('Quality-> '||v_qual);
end;
/