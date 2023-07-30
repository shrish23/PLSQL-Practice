declare
v_empno number(4):=&v_empno;
v_ename varchar2(10):='Ravi';
begin
update pdemo set ename=v_ename where eno=v_empno;
end;
/