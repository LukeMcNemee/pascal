{################################################}
{#                Program bubble                #}
{#        |     |  _  |V| _|\| _ __  _  _       #}
{#        |__|_||<(/_ | |(_| |(/_|||(/_(/_      #}
{#                    2015                      #}
{################################################}
{# Program seřadí pole pomocí bubble sortu      #}
{################################################}

program bubble;
uses crt, sysutils, DateUtils;
	
const
	LEN = 10000;

var
	hodnoty		: array [1..LEN] of integer;
	i,j			: integer;
	D1, D2		: TDateTime;

begin
	D1 := now;
	D2 := now;
	writeln(MilliSecondSpan(D1,D2):10:2);
	
	randomize;

	{naplnit pole}
	for i := 1 to LEN do
	begin
		hodnoty[i] := random(100);    
		write(hodnoty[i], ' '); 
	end;
	writeln;

	D1:= now;
	for i := 1 to LEN do
	begin		
		for j:= 1 to LEN -1 do
		begin
			if(hodnoty[j] > hodnoty[j+1]) then
			begin 
				hodnoty[j] := hodnoty[j] + hodnoty[j+1];
				hodnoty[j+1]   := hodnoty[j] - hodnoty[j+1];
				hodnoty[j] := hodnoty[j] - hodnoty[j+1];
			end;
		end;
	end;

	D2:= now;
	{vypsat}
	for i := 1 to LEN do
	begin
		write(hodnoty[i], ' '); 
	end;
	writeln(MilliSecondSpan(D1,D2):10:2);
	readln;
end.

