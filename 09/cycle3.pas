{################################################}
{#                Program Cycle3                #}
{#        |     |  _  |V| _|\| _ __  _  _       #}
{#        |__|_||<(/_ | |(_| |(/_|||(/_(/_	#}
{#                    2014                      #}
{################################################}
{# Ukázka použití For cyklu pro výpisy.         #}
{#                                              #}
{################################################}

Program cycle;

var 
  i,j : integer;
  cislo: integer;  

begin
  writeln('zadejte cislo');
  readln(cislo);

  for i := 1 to cislo do
  begin
    for j := 1 to cislo do
    begin
      if((j = 1) or (i = 1) or (j = cislo) or (i = cislo)) then
	write('#')
      else
	write(' ');	
    end;
    writeln;
  end;

  writeln;
  writeln;
  
  for i := 1 to cislo do
  begin
    for j := 1 to cislo do
    begin
      if((j = i) or (j = cislo -i +1)) then
	write('#')
      else
	write(' ');	
    end;
    writeln;
  end;


  
  writeln;
  writeln;
  
  for i := 1 to cislo do
  begin
    for j := 1 to cislo do
    begin
      if((j = i) or (j = cislo -i +1) or (j = 1) or (i = 1) or (j = cislo) or (i = cislo)) then
	write('#')
      else
	write(' ');	
    end;
    writeln;
  end;
  
  readln;
end.