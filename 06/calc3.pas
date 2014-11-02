{################################################}
{#                Program Calc3                 #}
{#        |     |  _  |V| _|\| _ __  _  _       #}
{#        |__|_||<(/_ | |(_| |(/_|||(/_(/_	#}
{#                    2014                      #}
{################################################}
{# Jednoduchá reprezentace kalkulačky           #}
{# načte dvě čísla od uživatele a provede       #}
{# operaci, kterou uživatel vybere zadáním čísla#}
{################################################}

Program calc;

var 
  a, b: integer;
  vysledek, volba : integer;

begin
  writeln('toto je kalkulacka.');
  writeln('zadejte 1 pro scitani');
  writeln('zadejte 2 pro odecitani');
  writeln('zadejte 3 pro nasobeni');
  writeln('zadejte 4 pro deleni');
  readln(volba);  
  writeln('zadej dve cisla:');
  readln(a);
  readln(b);

  if(volba = 1) then 
  begin
    vysledek := a+b;
  end;
  
  if(volba = 2) then 
  begin
    vysledek := a-b;
  end;
  
  if(volba = 3) then 
  begin
    vysledek := a*b;
  end;
  
  if(volba = 4) then 
  begin
    if(b <> 0) then 
    begin
      vysledek := a div b;
    end else 
    begin
      writeln('nulou nelze delit');
    end;
  end;

  if((volba > 4) or (volba < 1)) then 
  begin
    writeln('spatne zadani');
  end else 
  begin
    writeln('vysledek je:');  
    writeln(vysledek);
  end;
  readln;
end.