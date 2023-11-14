program z11;
var i:int64; a:string;
begin
  write('Пиши строку: ');
  readln(a);
  if length(a)>10 then
    delete(a,7,(length(a)-6))
  else
    while length(a)<12 do
      a+='o';
   writeln(a);
end.