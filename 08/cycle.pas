{################################################}
{#                Program Cycle                 #}
{#        |     |  _  |V| _|\| _ __  _  _       #}
{#        |__|_||<(/_ | |(_| |(/_|||(/_(/_	#}
{#                    2014                      #}
{################################################}
{# Ukázka použití For cyklu pro opakovanou      #}
{# činnost, vypíše násobky čísla od 1 do 10     #}
{################################################}

Program cycle;

var 
  i : integer;
  cislo: integer;  

begin
  writeln('zadejte cislo');
  readln(cislo);

  writeln('nasobky cisla jsou:');
  for i := 1 to 10 do
  begin
    write(i*cislo, ' ');
  end;
  writeln;
  
  readln;
end.