{################################################}
{#                Program Delitel               #}
{#        |     |  _  |V| _|\| _ __  _  _       #}
{#        |__|_||<(/_ | |(_| |(/_|||(/_(/_	#}
{#                    2014                      #}
{################################################}
{# Program načte číslo a vypíše jeho dělitele   #}
{# v rozsahu od 2 do 10.                        #}
{################################################}

Program delitel;

var 
  cislo: integer;  

begin
  writeln('zadejte cislo');
  readln(cislo);
  
  if(cislo mod 2 = 0) then 
  begin
    writeln('2 deli cislo ', cislo);
  end else
  begin
    writeln('2 nedeli cislo ', cislo);
  end;

  if(cislo mod 3 = 0) then 
  begin
    writeln('3 deli cislo ', cislo);
  end else
  begin
    writeln('3 nedeli cislo ', cislo);
  end;

  if(cislo mod 4 = 0) then 
  begin
    writeln('4 deli cislo ', cislo);
  end else
  begin
    writeln('4 nedeli cislo ', cislo);
  end;

  if(cislo mod 5 = 0) then 
  begin
    writeln('5 deli cislo ', cislo);
  end else
  begin
    writeln('5 nedeli cislo ', cislo);
  end;

  if(cislo mod 6 = 0) then 
  begin
    writeln('6 deli cislo ', cislo);
  end else
  begin
    writeln('6 nedeli cislo ', cislo);
  end;

  if(cislo mod 7 = 0) then 
  begin
    writeln('7 deli cislo ', cislo);
  end else
  begin
    writeln('7 nedeli cislo ', cislo);
  end;

  if(cislo mod 8 = 0) then 
  begin
    writeln('8 deli cislo ', cislo);
  end else
  begin
    writeln('8 nedeli cislo ', cislo);
  end;

  if(cislo mod 9 = 0) then 
  begin
    writeln('9 deli cislo ', cislo);
  end else
  begin
    writeln('9 nedeli cislo ', cislo);
  end;

  if(cislo mod 10 = 0) then 
  begin
    writeln('10 deli cislo ', cislo);
  end else
  begin
    writeln('10 nedeli cislo ', cislo);
  end;
  
  readln;
end.