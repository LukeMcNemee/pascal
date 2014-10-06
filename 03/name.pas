{################################################}
{#                Program Name                  #}
{#        |     |  _  |V| _|\| _ __  _  _       #}
{#        |__|_||<(/_ | |(_| |(/_|||(/_(/_	#}
{#                    2014                      #}
{################################################}
{# Načte jméno a následně napíše pozdrav        #}
{# společně s vypsáním jména                    #}
{################################################}

Program name;

var 
  name : String;

begin
  writeln('zadej jmeno.');
  readln(name);
  
  writeln('ahoj ');
  writeln(name);  
  
  readln;
end.