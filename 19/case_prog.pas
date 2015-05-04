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
    den, mesic, rok : Integer;
begin
    readln(a);
    case a of 
        1:  begin
                writeln('ahoj');
            end;x
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

    readln(den, mesic, rok);
    case mesic of
        1 : writeln(den, '. leden ', rok);
        2 : writeln(den, '. unor ', rok);
        3 : writeln(den, '. brezen ', rok);
        4 : writeln(den, '. duben ', rok);
        5 : writeln(den, '. kveten ', rok);
        6 : writeln(den, '. cerven ', rok);
        7 : writeln(den, '. cervenec ', rok);
        8 : writeln(den, '. srpen ', rok);
        9 : writeln(den, '. zari ', rok);
        10: writeln(den, '. rijen ', rok);
        11: writeln(den, '. listopad ', rok);
        12: writeln(den, '. prosinec ', rok);
        else writeln('spatne datum');
    end;
    readln;
end.
