{$mode TP}
{$R+,B+,X-}
{$codepage UTF-8}
program Task_12_18(input, output);
var
    n, k,r: integer; 
function f(n: integer):integer;
begin
    if n = 1
        then f := k - 1
    else begin
        if n mod k = 0 then begin
            r := n div k;
            k := k + 1;
            f := f(r);
        end
        else
            f := -1;
    end;
end;
begin
    writeln('Лазарев Артур,111 группа,задача № 12.18');
    writeln('Введите числа:');
    k := 1;
    read(n);
    writeln(f(n));
end.
    
