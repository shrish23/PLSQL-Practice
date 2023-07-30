declare
v_eno number(4):=1001;
v_ename varchar2(10):='Rahul';
v_esal number(4):=5600;
begin
insert into emp_src1 values(v_eno,v_ename,v_esal);
insert into emp_src1 values(1003,'Bhupesh',7000);
insert into emp_src1 values(1004,'Ujjwal',5200);
insert into emp_src1 values(1005,'Priya',7300);
insert into emp_src1 values(1006,'Ramesh',5400);
end;
/

begin
insert into jemp values(1001,'Raman',10,3500);
insert into jemp values(1002,'Harish',20,6520);
insert into jemp values(1003,'Sunil',40,5500);
insert into jemp values(1004,'Mahesh',30,5900);
insert into jemp values(1005,'Naman',50,6300);
insert into jemp values(1006,'Ravi',20,6200);
insert into jemp values(1007,'Gagan',50,5900);
insert into jemp values(1008,'Ramesh',10,4800);
end;
/