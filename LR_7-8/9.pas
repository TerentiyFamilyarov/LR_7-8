program z9;
var k,i:int64; a, b:string;
begin
  write('Пиши строку 1: ');
  readln(a);
  write('Пиши строку 2: ');
  readln(b);
  if length(a)>length(b) then
    for i:=1 to (length(a)-length(b)) do begin
      writeln(k,' строка: ',a);
      k+=1;
      end
  else 
    for i:=1 to (length(b)-length(b)) do begin
      writeln(k,' строка: ',a);
      k+=1;
      end;
end.