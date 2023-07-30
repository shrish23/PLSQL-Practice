begin
update emp_src1 set esal=5600 where eno=1001;
update emp_src1 set esal=7000 where eno=1003;
update emp_src1 set esal=5200 where eno=1004;
update emp_src1 set esal=7300 where eno=1005;
update emp_src1 set esal=5400 where eno=1006;
end;
/

begin
merge into emp_tgt using emp_src1 on(emp_src1.eno=emp_tgt.eno) when matched then update set emp_tgt.esal=emp_src1.esal when not matched then insert values(emp_src1.eno,emp_src1.ename,emp_src1.esal);
end;
/

insert into empcpur values(101,'Raman','Sedan','13-oct-2019');
insert into empcpur values(102,'Vansh','Hatchback','20-nov-2019');
insert into empcpur values(103,'Aman','Minivan','01-dec-2019');
insert into empcpur values(104,'Adamya','SUV','26-dec-2019');
insert into empcpur values(105,'Ujjwal','Sedan','12-jan-2020');
insert into empcpur values(106,'Prateek','Coupe','02-mar-2020');
insert into empcpur values(107,'Rahul','Crossover','13-jun-2020');
insert into empcpur values(108,'James','CompSUV','20-aug-2020');
insert into empcpur values(109,'Naman','SUV','29-sep-2020');
insert into empcpur values(110,'Aditya','Hatchback','13-oct-2020');
insert into empcpur values(111,'Ishan','Hatchback','24-nov-2020');
insert into empcpur values(112,'Ananya','Crossover','02-nov-2020');
insert into empcpur values(113,'Shriya','Coupe','10-dec-2020');
insert into empcpur values(114,'Ashwin','Sedan','06-aug-2019');
insert into empcpur values(115,'Rohil','CompSUV','26-jun-2019');

declare
var_result number;
begin
var_result:=add_num(var_3=>5,var_1=>3);
dbms_output.put_line('Result-> '||var_result);
end;
/