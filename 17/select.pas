{################################################}
{#                Program select                #}
{#        |     |  _  |V| _|\| _ __  _  _       #}
{#        |__|_||<(/_ | |(_| |(/_|||(/_(/_      #}
{#                    2015                      #}
{################################################}
{# Program seřadí pole pomocí select sortu      #}
{################################################}

program select;

const
	LEN = 1000;

var
	hodnoty		: array [1..LEN] of integer;
	i,j, min	: integer;


begin
	randomize;

	{naplnit pole}
	for i := 1 to LEN do
	begin
		hodnoty[i] := random(100);    
		write(hodnoty[i], ' '); 
	end;
	writeln;
	
	for i := 1 to LEN do
	begin

		{najít minimum}
		min := i;
		for j:= i to LEN do
		begin
			if(hodnoty[min] > hodnoty[j]) then
			begin 
				min := j;
			end;
		end;

		{prohodit hodnoty[min] a hodnoty[i]}
		if(min <> i) then
		begin
			hodnoty[min] := hodnoty[min] + hodnoty[i];
			hodnoty[i]   := hodnoty[min] - hodnoty[i];
			hodnoty[min] := hodnoty[min] - hodnoty[i];
		end;

	end;

	{vypsat}
	for i := 1 to LEN do
	begin
		write(hodnoty[i], ' '); 
	end;
	writeln;
	readln;
end.

