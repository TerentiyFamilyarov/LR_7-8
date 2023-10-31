program z1;
var i,j,st,n,z:int64;stopW,text,nix,Nikolay,Oleg:string; 
begin
  Nikolay:='Nikolay';
  Oleg:='Oleg';
  st:=0;
  stopW:='stop';
  i:=1; 
  n:=1;
  text:=' ';
  nix:=' ';
  z:=0;
  writeln('Введите сочинение 9.3..(для прекращения пришите ". stop")');
repeat
  readln(text);
  text:=text+(nix);
  n:=Length(text);
  for j:=i to n do begin
    if (text[j]=stopW[1]) 
       and (text[j+1]=stopW[2])
       and (text[j+2]=stopW[3])
       and (text[j+3]=stopW[4]) then begin st+=1;break;  end;
    end;
  i+=1;
until st>=1 ;
i:=1;
  for i := length(text) downto 1 do begin
     if (text[i]=Nikolay[1]) 
       and (text[i+1]=Nikolay[2])
       and (text[i+2]=Nikolay[3])
       and (text[i+3]=Nikolay[4])
       and (text[i+4]=Nikolay[5])
       and (text[i+5]=Nikolay[6])
       and (text[i+6]=Nikolay[7])
       then begin
         text[i]:=Oleg[1];
         text[i+1]:=Oleg[2];
         text[i+2]:=Oleg[3];
         text[i+3]:=Oleg[4];
         delete(text, i+4, 3);
         z+=3;
            end;
  end;
 writeln('');
      write('///');
      for i:=1 to n-6-z do
        write(text[i]);
      write('///');
end.