program letterCount;



var 
	i : integer;
	text : String;
	pismena : array [1..26] of integer;

begin
	for i := 1 to 26 do 
	begin
		pismena[i] := 0;
	end;
	
	
	writeln('zadejte vetu');
	readln(text);

	for i := 1 to length(text) do
	begin
		if((ord(text[i]) >= 65) and (ord(text[i]) <= 90)) then
		begin
			pismena[ord(text[i]) - 64] := pismena[ord(text[i]) - 64] + 1;
		end;
	end;

	
	for i := 1 to 26 do 
	begin
		writeln(chr(64+i), ' - ', pismena[i]);
		
	end;
	readln;
end.
