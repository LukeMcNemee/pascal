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
       
    end;

Function vypocet( x : real;  y : real; operace: char) : Real;
    var
        
    
    begin
        
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

