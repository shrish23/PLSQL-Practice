begin
merge into emp_tgt using emp_src on(emp_tgt.eno=emp_src.eno) when matched then update set esal=emp_src.esal when not matched then insert values(emp_src.eno,emp_src.ename,emp_src.esal);
end;
/