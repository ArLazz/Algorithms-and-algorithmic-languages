{$mode TP}
{$R+,B+,X-}
{$codepage UTF-8}
program Task_1_1;
const
    n= 10;
var x: array[1..n] of 1..11;
    y: 1..11;
    ok:boolean;
    i,a,b,k:integer;
begin
    writeln('Лазарев Артур,111 группа,задача № 5.41');
    writeln('Введите входные данные');
    read(y);
    ok := false;
    for i := 1 to n + 1 do begin
        x[i - ord(ok)]:=i;
        if i = y then
            ok := true;
    end;
    for i := 1 to n do
        writeln(x[i]);
    a := 1;
    b := n;
    ok := false;
    repeat
        k:= (a + b) div 2;
        if x[k+1] - x[k] = 2 then 
            ok:= true 
        else
            if x[k]- k = 1 then 
                b:= k - 1
            else a := k + 1;
    until ok;
    writeln(k+1);
end.
    
