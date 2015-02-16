program matrix;

uses crt;

const
max = 100;

var
pismeno, i, rand : integer;
predchozi : array[1 .. max] of boolean;

begin
  for i:= 1 to max do
  begin
    predchozi[i] := false;
  end;

  textcolor(green);
  
  clrscr;
  randomize;
  repeat
    for i:= 1 to max do
      begin      
	rand := random(50);
	if(((rand > 35) and predchozi[i] = true) or (rand > 45) and (predchozi[i] = false))  then
	begin
	  predchozi[i] := not predchozi[i];
	end;              
      pismeno := random(50);      
      if (predchozi[i] = false) then
	begin
	  write(' ');	  
	end else
	begin	  
          write(chr(pismeno + 64));
          
	end;
      end;
      writeln;
      delay(50);
  until keypressed;
end.
