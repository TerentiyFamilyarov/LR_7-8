program z10;
var i:int64; a:string;
begin
  write('Пиши строку: ');
  readln(a);
  if (a[1]='a') and (a[2]='b') and (a[3]='c') then begin
    a[1]:='w';
    a[2]:='w';
    a[3]:='w';
    end
  else a+='zzz';
  writeln(a);
end.