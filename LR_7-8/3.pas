program z3;
var n,i,j,st:int64;stopW,text:string;
begin
  stopW:= 'stop';
  i:=1;
repeat
  readln(text);
  n:=Length(text);
  for j:=i to n do begin
    if (text[j]=stopW[1]) 
       and (text[j+1]=stopW[2])
       and (text[j+2]=stopW[3])
       and (text[j+3]=stopW[4]) then begin st+=1;break;  end;
    end;
  i+=1;
until st>=1 ;
delete(text,n-5,6);
writeln(length(text));
 writeln('');
      writeln('///'); 
           writeln('Первый символ= ','"',text[1],'"');
           if (length(text) mod 2 <> 0) and (length(text)>1) then writeln('Средний символ= ','"',text[(length(text) div 2)+1],'"');
           if length(text) mod 2 = 0 then writeln('Среднего символа не существует(');
           if length(text)=1 then writeln('Средний символ= ','"',text[1],'"');
           writeln('Последний символ= ','"',text[length(text)],'"');
      write('///');
 writeln('');
  

end.