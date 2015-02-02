{################################################}
{#                Program Fahr                  #}
{#        |     |  _  |V| _|\| _ __  _  _       #}
{#        |__|_||<(/_ | |(_| |(/_|||(/_(/_	#}
{#                    2015                      #}
{################################################}
{# převod jednotek z stupnu celsia na           #}
{# fahrenheity                                  #}
{################################################}

Program fahr;

var 
  i : integer;
  fahrenheit, celsius : real;
  dolni, kroky, krok : integer;
  
begin


   writeln('zadejte dolni hranici:'); 
   readln(dolni);
   writeln('zadejte pocet kroku:');
   readln(kroky);
   
   krok := 20;
   celsius := dolni;
   for i:= 1 to kroky do
   begin
     fahrenheit := (9.0 / 5.0) * celsius + 32.0;
     writeln(celsius:6:2, ' ~ ', fahrenheit:6:2);
     celsius := celsius + krok;
   end;  
  
  readln;
end.