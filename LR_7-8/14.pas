program z14;
var i:int64; a,s2:string;
begin
  write('Пиши строку: ');
  readln(a);
  i:=1;
  while i <= (length(a)) do begin
    if (a[i]='w') and
       (a[i+1]='o') and
       (a[i+2]='r') and
       (a[i+3]='d') then begin
      s2+='letter';
      i+=4;
    end 
    else begin s2+=a[i];i+=1; end;
  end;
  write(s2);
end.