{################################################}
{#                Program Zero                  #}
{#        |     |  _  |V| _|\| _ __  _  _       #}
{#        |__|_||<(/_ | |(_| |(/_|||(/_(/_	#}
{#                    2014                      #}
{################################################}
{# Program načte číslo a  odpoví, zda-li je     #}
{# číslo větší, menší nebo rovné nule           #}
{################################################}

Program zero;

var 
  cislo : integer;

Begin
  Writeln('zadejte cislo');
  readln(cislo);
  if(cislo = 0) then
      begin
	writeln('cislo je nula');
      end else
      begin
	if(cislo > 0) then
	    begin
	      writeln('vetsi jak nula');
	    end else
	    begin
	      writeln('mensi jak nula');
	    end;
      end; 
end.

