program letterCount;

uses crt;

var 
	i : integer;
	text : String;
	letters : array [1..26] of integer;

begin
	for i := 1 to 26 do 
	begin
		letters[i] := 0;
	end;
	
	
	writeln('zadejte vetu');
	readln(text);

	for i := 1 to length(text) do
	begin
		if((ord(text[i]) >= 65) and (ord(text[i]) <= 90)) then
		begin
			letters[ord(text[i]) - 64] := letters[ord(text[i]) - 64] + 1;
		end;
	end;

	
	for i := 1 to 26 do 
	begin
		writeln(chr(64+i), ' - ', letters[i]);
		
	end;
	readln;
end.
