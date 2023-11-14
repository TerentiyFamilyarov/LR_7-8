program z15;
var i:int64; s2,a:string;
begin
  write('Пиши строку: ');
  readln(a);
  i:=1;
  while i <= (length(a)) do begin
    if (a[i]='x') and
       (a[i+1]='a') and
       (a[i+2]='b') and
       (a[i+3]='c') then begin
      i+=1;
    end 
    else begin s2+=a[i];i+=1; end;
  end;
  write(s2);
end.