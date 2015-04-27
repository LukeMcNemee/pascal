{################################################}
{#                Program case_prog             #}
{#        |     |  _  |V| _|\| _ __  _  _       #}
{#        |__|_||<(/_ | |(_| |(/_|||(/_(/_      #}
{#                    2015                      #}
{################################################}
{# Ukázka použití case pro více podmínek        #}
{################################################}

program case_prog;
uses crt;

var 
    a,b     :   integer;
    

begin

    readln(a);

    case a of 
        1: writeln('ahoj');
        2: writeln('nazdar');
        3: writeln('hello');
        4: writeln('hi');
        5: writeln('ciao');
        else
            writeln('nerozumim');
    end;


    readln(b);
    case b of 
        1  .. 10: writeln('x');
        11 .. 20: writeln('y');
        else     
            writeln('z');
    end;

        
    readln;
    
end.
