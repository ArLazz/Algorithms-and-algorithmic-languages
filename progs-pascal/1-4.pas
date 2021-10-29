{$mode TP}
{$R+,B+,X-}
{$codepage UTF-8}
program Task_12_14(input, output);
var
    n, i, j: integer;
    ok: boolean;
begin
    writeln('Лазарев Артур,111 группа,задача № 12.14');
    read(n);
    ok := true;
    i := 0;
    j := 0;
    while (i < n div 2) and ok do begin
        i := i + 1;
        while (j < n div 2) and ok do begin
            j := j + 1;
            if sqr(i) + sqr(j) = n then
                ok := false;
        end;
        if ok then
            j := 0;
    end;
    if not ok then
        writeln(i, ' ', j);
end.
    
