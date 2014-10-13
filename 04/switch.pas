{################################################}
{#                Program Switch                #}
{#        |     |  _  |V| _|\| _ __  _  _       #}
{#        |__|_||<(/_ | |(_| |(/_|||(/_(/_	#}
{#                    2014                      #}
{################################################}
{# načte proměnné a vymění jejich obsahy        #}
{# pomocí různých způsobů                       #}
{################################################}

Program switch;

var 
  a,b : Integer;
  pom : Integer;

begin
  writeln('zadejte dve cisla');
  readln(a,b);
  writeln('Prvni: ', a);
  writeln('Druhe: ', b);

  {pomocna promena}
  pom := a;
  a := b;
  b := pom;
  
  writeln('Prvni: ', a);
  writeln('Druhe: ', b);
  
  {bez pomocne promene}

  a := a + b;
  b := a - b;
  a := a - b;
  
  writeln('Prvni: ', a);
  writeln('Druhe: ', b);

  readln;
end.

    
    