{$mode TP}
{$R+,B+,X-}
{$codepage UTF-8}
program Task_12_14(input, output);
var
    x, y, i: integer;
begin
    writeln('Лазарев Артур,111 группа,задача № 12.14');
    read(x);
    y := 0;
    i := 1;
    while x <> 0 do 
        if x mod 10 = 3 then
            x := x div 10
        else begin
            y := y + x mod 10 * i;
            x := x div 10;
            i := i * 10;
        end;
    writeln(y);
end.
    
