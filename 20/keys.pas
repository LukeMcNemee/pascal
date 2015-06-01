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
        gotoxy(10,10);
      writeln('Not Ascii : ',ord(c));
    end
    else writeln('Ascii : ',ord(c));
  end;
end.