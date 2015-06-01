program keys;
uses crt;
var
  c : char;
begin
  c:=#0;
  while c<>#27 do
  begin
      c:=readkey;
      if c=#0 then   { pokud nepatří do ASCII }
        begin
            c:=readkey;
            case c of
                #75 : writeln('left');
                #72 : writeln('up');
                #77 : writeln('right');
                #80 : writeln('down');
                #71 : writeln('home');
            end;
        end else
            writeln(c, ' ',ord(c));
  end;
end.