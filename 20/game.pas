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
    randomize;
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

    repeat
        vykresli();
    
        novaGenerace();
        copy();
        
        
        delay(100);

        
    until keypressed;
    
        

    
end.    