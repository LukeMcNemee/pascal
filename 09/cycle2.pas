{################################################}
{#                Program Cycle2                #}
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
    write('#');
  end;
  writeln;
  writeln;
  writeln;


  for i := 1 to cislo do
  begin
    if(i mod 2 = 2)then
    begin  
      write('#');
    end else
    begin  
      write('*');
    end;  
  end;
  writeln;
  writeln;
  writeln;

  for i := 1 to cislo do
  begin
    for j := 1 to cislo do
    begin
      write('#');
    end;
    writeln;
  end;
  
  
  readln;
end.