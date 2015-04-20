{################################################}
{#                Program calc_func             #}
{#        |     |  _  |V| _|\| _ __  _  _       #}
{#        |__|_||<(/_ | |(_| |(/_|||(/_(/_      #}
{#                    2015                      #}
{################################################}
{# Ukázka použití funkcí v programu kalkulačka  #}
{################################################}

program calc_func;
uses crt;


Function pozdrav() : Integer;
    begin
        writeln('Ahoj, ja jsem Tvoje nova kalkulacka');
        writeln('zadej cislo, operaci a cislo, oddelene pomoci enter');
        writeln('muzete pouzivat +, -, * a /');
        writeln('pro ukonceni zadejte = jako operaci');
    end;

Function vypocet( x : real;  y : real; operace: char) : Real;
    var
        vysledek : real;
    
    begin
        case operace of
            '+' : begin
                    vysledek := x + y;
                  end;  
            '-' : begin
                    vysledek := x - y;
                end;
            '*' : begin
                    vysledek := x * y;
                end;
            '/' : begin
                    if(y <> 0) then
                        vysledek := x / y
                    else
                        writeln('nulou nelze delit');
                end
            else
                begin
                    writeln('neznama operace');
                    vysledek := 0;
                end;            
        end; 
        vypocet := vysledek;
    end;


//globální var
var 
    a,b     :   integer;
    operace :   String;

begin

    pozdrav();

    readln(a);
    readln(operace);
    readln(b);
    while (operace[1] <> '=') do
    begin        
        writeln(vypocet(a,b,operace[1]):10:2);
        pozdrav();    
        readln(a);
        readln(operace);
        readln(b);
    end;
end.

