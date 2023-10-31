program z4;
var n,i,j,st,number:int64;stopW,text:string;
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
writeln('Длина строки: ',length(text));
write('Введите число для проверки: ');
readln(number);
 writeln('');
      writeln('///'); 
      if number<length(text) then begin writeln('Первые 3 эл-та: ','"',text[1],'", ','"',text[2],'", ','"',text[3],'"');
                                        writeln('Последние 3 эл-та: ','"',text[length(text)-2],'", ','"',text[length(text)-1],'", ','"',text[length(text)],'"')
                                  end
      else writeln('1-й символ len(text) раз: ',text[1]*length(text));
      write('///');
 writeln('');
  

end.