{$mode TP}
{$R+,B+,X-}
{$codepage UTF-8}
program Task_12_14(input, output);
var
    x, y, c, i, max: integer;
begin
    writeln('Лазарев Артур,111 группа,задача № 12.14');
    read(x);
    y := x;
    i:= 1;
    max := 0;
    while y <> 0 do begin
        c := (x div (i * 10)) * i + x mod i;
        if c > max then
                max := c;
        if i < 10000 then
            i := i * 10;
        y := y div 10;
    end;
    writeln(max);
end.
    
