create  or replace	function MyPrime ( integer) returns text as
$$
declare
	Number_1 alias for $1 ;
	Num integer ;
	Txt text ;
begin
	for Num in 2.. Number_1-1 loop
	if Number_1 %N = 0 then
		Txt := Number_1 || '  Is Not a Prime Number' ;
		return Txt ;
		Exit ;
	end if;
	end loop;
	       Txt := Number_1 || '   Is a Prime Number' ;
	return Txt ;
end;
$$ language plpgsql;
