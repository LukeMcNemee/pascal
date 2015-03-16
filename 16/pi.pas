{################################################}
{#                Program pi                    #}
{#        |     |  _  |V| _|\| _ __  _  _       #}
{#        |__|_||<(/_ | |(_| |(/_|||(/_(/_      #}
{#                    2015                      #}
{################################################}
{# Program počítající hodnotu pi pomoci průměru #}
{# vepsaného a opsaného mnohoúhleníku.          #}
{################################################}


program pi_calc;

uses crt, math;

var 
n : int64;
uhel, pi, vnejsi, vnitrni : real;

begin
  writeln('zadejte pocet stran:');
  readln(n); 
  uhel := 360 / n;
  vnitrni := 2 * sin(degtorad(uhel/2));
  vnejsi := 2 * (sin(degtorad(uhel/2))/cos(degtorad(uhel/2)));
  vnitrni := vnitrni * n;
  vnejsi := vnejsi * n;
  pi := (vnitrni + vnejsi)/4;
      
  writeln('pi is equal to ',pi:20:19);

end.