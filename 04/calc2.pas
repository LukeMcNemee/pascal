{################################################}
{#                Program Calc2                 #}
{#        |     |  _  |V| _|\| _ __  _  _       #}
{#        |__|_||<(/_ | |(_| |(/_|||(/_(/_	#}
{#                    2014                      #}
{################################################}
{# Jednoduchá reprezentace kalkulačky           #}
{# načte dvě čísla od uživatele a provede       #}
{# všechny operace (součet, rozdíl, součin ...) #}
{# využívá uložení mezivýsledku do proměnné     #}
{################################################}

Program calc;

var 
  a, b: integer;
  vysledek : integer;

begin
  writeln('toto je kalkulacka.');
  writeln('zadej dve cisla:');
  readln(a);
  readln(b);
  {taky jde pouzit readln(a,b); }
  {funkcne jde o to stejne }

  writeln('vysledky jsou:');
  vysledek := a+b;
  writeln('soucet: ', vysledek);
  vysledek := a-b;
  writeln('rozdil: ', vysledek);
  vysledek := a*b;
  writeln('soucin: ', vysledek);
  
  readln;
end.