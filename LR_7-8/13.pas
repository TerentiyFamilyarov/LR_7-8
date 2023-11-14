program z13;
var i,y:int64; a:string;
begin
  write('Пиши строку: ');
  readln(a);
  for i:=1 to length(a) do 
    if (a[i]='a') or (a[i]='b') or (a[i]='c') then
      y:=0
    else begin y:=1; break; end;
   write('Только abc?= ');
   if y=1 then write('Вынужден отказать')
   else write('Да');
end.