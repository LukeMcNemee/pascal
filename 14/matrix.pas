program matrix;

uses crt;

const
screen = 100;

var
letter, i, rand : integer;
previous : array[1 .. screen] of boolean;

begin
  for i:= 1 to screen do
  begin
    previous[i] := false;
  end;

  textcolor(green);
  
  clrscr;
  randomize;
  repeat
    for i:= 1 to screen do
      begin      
	rand := random(50);
	if(((rand > 35) and previous[i] = true) or (rand > 45) and (previous[i] = false))  then
	begin
	  previous[i] := not previous[i];
	end;              
      letter := random(50);      
      if (previous[i] = false) then
	begin
	  write(' ');	  
	end else
	begin	  
          write(chr(letter + 64));
          
	end;
      end;
      writeln;
      delay(50);
  until keypressed;
end.
