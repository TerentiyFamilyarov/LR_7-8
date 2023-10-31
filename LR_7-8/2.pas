program z2;
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
delete(text,n-5,5);
text*=3;
 writeln('');
      write('///');
      for j:=1 to 3 do begin
        for i:=1 to n-6 do 
           write(text[i]);
      if j<> 3 then write(', ');
                       end;
      write('///');
 writeln('');
 write('Количетсво символов = ', length(text+1));

end.
