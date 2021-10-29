{$mode TP}
{$R+,B+,X-}
{$codepage UTF-8}
program Task_12_26(input, output);
function isform:boolean;
var c,: integer;
begin
    read(c);
    if (c <= '9') and (c >= '0') then
        isform := true
    else begin
        if c <> '(' then 
            isform := false
        isform;
        read(c);
        if (c <> '+') and (c <> '-') and (c <> '*') and then
            isform := false;
        
begin
    writeln('Лазарев Артур,111 группа,задача № 12.26');
    writeln('Введите последовательность:');
    ok := true;
    write(f);
end.
    
