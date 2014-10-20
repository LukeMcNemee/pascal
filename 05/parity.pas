{################################################}
{#                Program Parity                #}
{#        |     |  _  |V| _|\| _ __  _  _       #}
{#        |__|_||<(/_ | |(_| |(/_|||(/_(/_	#}
{#                    2014                      #}
{################################################}
{# Program načte číslo a  odpoví, zda-li je     #}
{# číslo sudé nebo liché.                       #}
{################################################}

Program parity;

var 
  cislo : integer;

Begin
  Writeln('zadejte cislo');
  readln(cislo);
  if(cislo mod 2 = 0) then
      begin
	writeln('cislo je sude');
      end else
      begin
	writeln('cislo je liche');
      end; 
end.



