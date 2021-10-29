{$mode TP}
{$R+,B+,X-}
{$codepage UTF-8}
program Task_6_34 (input, output);
    var c1, c2: char;
        ok: boolean;
begin
    writeln('Лазарев Артур,111 группа,задача № 6.34');
    writeln('Введите последовательность:');
    ok := true;
    read(c1,c2);
    while (c2 <> '.') and ok do 
        if (c1 >= '0') and (c1 <= '9') and
           (c1 >= '0') and (c1 <= '9') and
           (ord(c1) = ord(c2) - 1) then begin
                c1 := c2;
                read(c2);
            end
        else
            ok := false;
    writeln(ok);
end.

