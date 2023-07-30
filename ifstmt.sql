declare
n number(4):=&n;
begin
if n>0 then
dbms_output.put_line('this is positive number');
end if;
end;
/

/*IF ELSE statement*/
declare
n number(4):=&n;
begin
if n>0 then
dbms_output.put_line('this is a positive number');
else
dbms_output.put_line('this is a negative number');
end if;
end;
/

declare
v_choice char(2):='&yourchoice';
begin
if v_choice='A' then
dbms_output.put_line('Accenture');
elsif v_choice='B' then
dbms_output.put_line('BHEL');
elsif v_choice='C' then
dbms_output.put_line('Capgemini');
else
dbms_output.put_line('Enter only A/B/C');
end if;
end;
/