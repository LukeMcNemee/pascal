{################################################}
{#                Program caesar                #}
{#        |     |  _  |V| _|\| _ __  _  _       #}
{#        |__|_||<(/_ | |(_| |(/_|||(/_(/_	    #}
{#                    2015                      #}
{################################################}
{# Program implementující caesarovu šifru.      #}
{################################################}

{ord -- ascii code of char, a = 97}
{chr -- char from ascii code, A = 65}

program caesar;

uses crt;

var
	text  : string;
	c : char;
	i : integer;
	z : integer;
	key : integer;

begin
  writeln('zadejte klic');
  readln(key);
  writeln('zadejte text');
  {nacte text}
  readln(text);
  
  {zasifruje text podle klice}
  
	  for i:=1 to length(text) do
	  begin
	    z := ord(text[i]);
	    {velka pismena}
	    if((z >= ord('A')) and (z <= ord('Z'))) then
	    begin
	      c := chr((((z - 65)+key) mod 26) + 65 );
	      text[i] := c;
	    end else 
	    {mala pismena}
	    if((z >= ord('a')) and (z <= ord('z'))) then
	    begin
	      c := chr((((z - 97)+key) mod 26) + 97 );
	      text[i] := c;
	    end;
	    
	  end;
	  writeln;
	  
	  writeln(text);
	  
      readln;
      
end.