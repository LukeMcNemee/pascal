{################################################}
{#                Program pole                  #}
{#        |     |  _  |V| _|\| _ __  _  _       #}
{#        |__|_||<(/_ | |(_| |(/_|||(/_(/_	#}
{#                    2015                      #}
{################################################}
{# Ukázka použití pole pro hledání maximální    #}
{# hodnoty.                                     #}
{################################################}

Program pole;

var
  pole : array[1..10]of integer;
  max, i: integer;  

begin
  writeln('cisla jsou');
  for i:=1 to 10 do
  begin
    pole[i]:= random(100);
    writeln(pole[i]);
  end;

  max:= pole[1];
  
  for i:=1 to 10 do
  begin
    if(pole[i]>max) then
      begin
	max:=pole[i];
      end;
  end;

  writeln('maximum je: ', max);
  readln;
end.

