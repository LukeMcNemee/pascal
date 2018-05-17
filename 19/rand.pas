program rand;

var 
    odhad, hodnota, pokus : integer;
    
begin

    randomize;
    writeln('hadejte cislo od 1 do 100');
    hodnota := random(100);
    pokus := 0;
    
    repeat
        readln(odhad);
        pokus := pokus + 1;
        if(odhad > hodnota) then
        begin
            writeln('odhad je vetsi');
        end;
        if(odhad < hodnota) then 
        begin
            writeln('odhad je mensi');
        end;
        
    until (odhad = hodnota);
    writeln('vyhral jsi, celkem ', pokus, ' pokusu' );
    readln;
end.