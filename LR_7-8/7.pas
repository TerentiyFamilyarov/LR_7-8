﻿program z7;
var i,j,n,nums,plus,minus,plus0,minus0:int64; text,stopW:string; stop:boolean;
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
  for i:=1 to n-6 do begin
    if text[i] = '+' then plus+=1;
    if text[i] = '-' then minus+=1;
    if (text[i] = '+') and (text[i+1]='0') then plus0+=1;
    if (text[i] = '-') and (text[i+1]='0') then minus0+=1;
  end; 
  writeln('Плюсов: ',plus);
  writeln('Минусов: ',minus);
  writeln('Плюсов ноль: ',plus0);
  writeln('Минусов ноль: ',minus0);
end.