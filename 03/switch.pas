{################################################}
{#                Program Switch                #}
{#        |     |  _  |V| _|\| _ __  _  _       #}
{#        |__|_||<(/_ | |(_| |(/_|||(/_(/_	#}
{#                    2014                      #}
{################################################}
{# Načte tři proměnné a vypíše je v opačném     #}
{# pořadí než byly načteny.                     #}
{################################################}

Program switch;

var 
  a, b, c: integer;

begin
  writeln('zadej tri cisla.');
  readln(a);
  readln(b);
  readln(c);

  writeln(c);
  writeln(b);
  writeln(a);
  
  readln;
end.