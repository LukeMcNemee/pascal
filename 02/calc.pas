{################################################}
{#                Program Calc                  #}
{#        |     |  _  |V| _|\| _ __  _  _       #}
{#        |__|_||<(/_ | |(_| |(/_|||(/_(/_	#}
{#                    2014                      #}
{################################################}
{# Jednoduchá reprezentace kalkulačky           #}
{# načte dvě čísla od uživatele a provede       #}
{# všechny operace (součet, rozdíl, součin ...) #}
{################################################}

Program calc;

var 
  a, b: integer;

begin
  writeln('toto je kalkulacka.');
  writeln('zadej dve cisla:');
  readln(a);
  readln(b);
  {taky jde pouzit readln(a,b); }
  {funkcne jde o to stejne }

  writeln('vysledky jsou:');
  writeln('soucet: ', a+b);
  writeln('rozdil: ', a-b);
  writeln('soucin: ', a*b);
  
  readln;
end.