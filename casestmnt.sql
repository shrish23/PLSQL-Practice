declare
v_choice varchar2(20):='&v_choice';
v_award varchar2(20);
begin
v_award:=case v_choice when 'A' then 'ACCENTURE'
when 'B' then 'BHEL'
else 'TRY AGAIN' end;
dbms_output.put_line('the choice is '||v_choice);
dbms_output.put_line('the award is '||v_award);
end;
/