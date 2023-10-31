program z5;
var i,j,n,nums:int64; text,stopW,endsSim:string; stop:boolean;
begin
  i:=4;
  stopW:='stop';
  stop:=False;
  writeln('Пиши некий текст(текст". stop" для остановки):  ');
  repeat
    readln(text);
    n:=length(text);
    endsSim:=text[n-6];//последний символ
    for j:=n downto 1 do 
      if text[j]=stopW[i] then begin 
      i-=1;
      if i = 1 then begin stop:=True;break; end;
      end;
  until stop=True;
  for i:=1 to n do 
    if text[i] = endsSim[1] then begin if nums<>0 then write(', ');write(i);nums+=1; end;
  write('.');
end.