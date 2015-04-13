{################################################}
{#                Program func                  #}
{#        |     |  _  |V| _|\| _ __  _  _       #}
{#        |__|_||<(/_ | |(_| |(/_|||(/_(/_      #}
{#                    2015                      #}
{################################################}
{# Ukázka použití funkcí v programu             #}
{################################################}

program func;
uses crt;


Function sayHello() : Integer;
    begin
        writeln('hello');
        sayHello := 0;
    end;

Function average( x : Integer;  y : Integer) : Real;
    var
        sum : Integer;
    
    begin
        sum := x + y;
        average := sum / 2;
    end;

Function test (var value: Integer) : Integer;
    begin
        writeln('2 - ',value);
        value := value+1;
        writeln('3 - ',value);
    end;


Function test2 ( value : Integer) : Integer;
    begin
        writeln('2 - ',value);
        value := value+1;
        writeln('3 - ',value);
    end;


Function swap (var x: Integer; var y: Integer): Integer;
    begin
        x := x + y;
        y := x - y;
        x := x - y;
    end;


//globální var
var 
    myValue, a, b : Integer;

begin
{
    sayHello;

    myValue := 1;    
    writeln('1 - ',myValue);
    test(myValue);
    writeln('4 - ',myValue);
    
    
    myValue := 1;    
    writeln('1 - ',myValue);
    test2(myValue);
    writeln('4 - ',myValue);
    }
    a := 1;
    b := 3;
    writeln( a, ' ', b);
    swap( a, b);    
    swap( a, b);
    writeln( a, ' ', b);
    readln;
end.

