program z8;

var
  i, j, n, nums, xies, wies: int64; text, stopW: string; stop: boolean;

begin
  i := 4;
  stopW := 'stop';
  stop := False;
  writeln('Пиши некий текст(текст". stop" для остановки):  ');
  repeat
    readln(text);
    n := length(text);
    for j := n downto 1 do 
      if text[j] = stopW[i] then begin
        i -= 1;
        if i = 1 then begin stop := True; break; end;
      end;
  until stop = True;
  for i := 1 to n - 6 do
  begin
    if text[i] = 'x' then xies := i;
    if text[i] = 'w' then wies := i;
    if (xies > 0) and (wies > 0) then break;
  end;
  if (xies < wies) and (xies > 0) then writeln('x earlier')
  else if (wies > 0) then writeln('w earlier');
  if xies = 0 then writeln('x is null');
  if wies = 0 then writeln('w is null');
  
end.