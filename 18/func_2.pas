{################################################}
{#                Program func_2                #}
{#        |     |  _  |V| _|\| _ __  _  _       #}
{#        |__|_||<(/_ | |(_| |(/_|||(/_(/_      #}
{#                    2015                      #}
{################################################}
{# Ukázka použití funkcí v programu II.         #}
{################################################}

program func_2;
uses crt;

function ctverec(x : Integer): Integer;
var 
    i,j : Integer;

begin
    for i := 1 to x do
    begin
        for j := 1 to x do
        begin
            write('#');
        end;
        writeln('');
    end;
end;

function ctverec2(x : Integer): Integer;
var 
    i,j : Integer;

begin
    for i := 1 to x do
    begin
        for j := 1 to x do
        begin
            if((j = 1) or (i = 1) or (i = x) or (j = x)) then
                write('#')
            else
                write(' ');
        end;
        writeln('');
    end;
end;
    
//globální var
var 
    i : Integer;

begin

    ctverec(4);
    ctverec2(4);
    ctverec(4);
    ctverec2(4);
    readln;
end.

