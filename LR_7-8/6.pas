program z6;
var i,j,n,nums:int64; text,stopW:string; stop:boolean;
begin
  i:=4;
  stopW:='stop';
  stop:=False;
  writeln('Пиши некий текст(текст". stop" для остановки):  ');
  repeat
    readln(text);
    n:=length(text);
    for j:=n downto 1 do 
      if text[j]=stopW[i] then begin 
      i-=1;
      if i = 1 then begin stop:=True;break; end;
      end;
  until stop=True;
  for i:=1 to n-6 do
        if i mod 3 = 0 then begin if nums<>0 then write(', ');
                                  write(text[i]);
                                  nums+=1;
                            end;
end.//ввывод 3, 6, 9..n эл-тов