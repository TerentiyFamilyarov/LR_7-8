program z12;
var i,k:int64; a:string;
begin
  write('Пиши строку: ');
  readln(a);
  for i:=1 to length(a) do
    case a[i] of 
      '0' : k+=1;
      '1' : k+=1;
      '2' : k+=1;
      '3' : k+=1;
      '4' : k+=1;
      '5' : k+=1;
      '6' : k+=1;
      '7' : k+=1;
      '8' : k+=1;
      '9' : k+=1;
    end;
  writeln(k);
end.