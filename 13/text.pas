{################################################}
{#                Program text                  #}
{#        |     |  _  |V| _|\| _ __  _  _       #}
{#        |__|_||<(/_ | |(_| |(/_|||(/_(/_	#}
{#                    2015                      #}
{################################################}
{# Program pro demonstraci použití funkcí chr a #}
{# ord pro práci s textovým řetězcem.           #}
{################################################}

program text;

uses crt;

var 
  vstup : String;
  znak : char;
  i : integer;

begin
  writeln('zadejte text');
  readln(vstup);
  for i:=1 to length(vstup) do
  begin
    write(ord(vstup[i]), ' ' );
  end;
  
  writeln;
  
  for i:=33 to 126 do
  begin
    write(chr(i), ' ' );
  end;
  
  writeln;
  for znak:='a' to 'z' do
  begin
    write(znak);
  end;
  readln; 
end.

  
