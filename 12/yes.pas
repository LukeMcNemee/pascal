{################################################}
{#                Program yes                   #}
{#        |     |  _  |V| _|\| _ __  _  _       #}
{#        |__|_||<(/_ | |(_| |(/_|||(/_(/_	#}
{#                    2015                      #}
{################################################}
{# Ukázka použití repeat pro nekonečný cyklus   #}
{################################################}

program yes;

uses crt;

begin
  repeat
    writeln('yes');
    delay(1000);
  until keypressed;
  

end.
