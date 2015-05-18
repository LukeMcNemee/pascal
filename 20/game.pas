{################################################}
{#                Program game_of_life          #}
{#        |     |  _  |V| _|\| _ __  _  _       #}
{#        |__|_||<(/_ | |(_| |(/_|||(/_(/_      #}
{#                    2015                      #}
{################################################}
{#                                              #}
{################################################}

program game;

uses crt;

const n = 30;
const m = 50;


var
    aktualni: array [0..m+1, 0..n+1] of boolean;
    nove    : array [1..m, 1..n] of boolean;
    i,j     : integer;

function vykresli() : integer;
var
    k,l : integer;

begin
    for k := 1 to n do
    begin
        for l := 1 to m do
        begin
            if(aktualni[l,k]) then
                write('#')
            else 
                write(' ');
        end;
        writeln();
    end;
end;

    
function edit() : integer;
var 
    key : char = #0;
    x,y : integer;

begin
    x := 1;
    y := 1;
    repeat
        
        delay(50);
        clrscr;
        key := #0;
        if keypressed then
        begin

            key := readKey;
            
        end;

        case key of
            #75 : x := x - 1;
            #72 : y := y - 1;
            #77 : x := x + 1;
            #80 : y := y + 1;
            #13 : aktualni[x,y] := not aktualni[x,y];
        end;
        vykresli();
        gotoxy(x,y);
        write('X');
        
{
        case key of
            #75 : writeln('left');
            #72 : writeln('up');
            #77 : writeln('right');
            #80 : writeln('down');
            #13 : writeln('enter');
        end;
}

    until key = #27;
end;



function novaGenerace() : integer;
var
    k,l     : integer;
    sousedi : integer;
begin
    sousedi := 0;
    for k := 1 to n do
    begin
        for l := 1 to m do
        begin
            sousedi := 0;
            if(aktualni[l-1,k-1]) then
               sousedi := sousedi + 1;
            if(aktualni[l-1,k]) then
               sousedi := sousedi + 1;
            if(aktualni[l-1,k+1]) then
               sousedi := sousedi + 1;
            if(aktualni[l,k-1]) then
               sousedi := sousedi + 1;
            if(aktualni[l,k+1]) then
               sousedi := sousedi + 1;
            if(aktualni[l+1,k]) then
               sousedi := sousedi + 1;
            if(aktualni[l+1,k+1]) then
               sousedi := sousedi + 1;
            if(aktualni[l+1,k-1]) then
               sousedi := sousedi + 1;

            {write(sousedi, ' ');}
            case sousedi of
                0 .. 1  : nove[l,k] := false;
                2       : nove[l,k] := aktualni[l,k];
                3       : nove[l,k] := true;
                4 .. 9  : nove[l,k] := false;
            end;
            
        end;
        {writeln();}
    end;
end;



function copy() : integer;
var
    k,l : integer;

begin
    for k := 1 to n do
    begin
        for l := 1 to m do
        begin
            aktualni[l,k] := nove[l,k];
        end;
    end;
end;


begin
    edit();
    randomize;
    {
    for i := 0 to n+1 do
    begin
        for j := 0 to m+1 do
        begin
            if(random(10) > 7) then
                aktualni[j,i] := true 
            else
                aktualni[j,i] := false;
        end;
    end;
    }
    repeat
        vykresli();
    
        novaGenerace();
        copy();
        
        
        delay(100);

        
    until keypressed;
    
        

    
end.    