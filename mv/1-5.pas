{$mode TP}
{$R+,B+,X-}
{$codepage UTF-8}
program Task_12_14(input, output);
var
    x, y, i, i1, j: integer;
    ok : boolean;
begin
    writeln('Лазарев Артур,111 группа,задача № 12.14');
    read(x);
    y := x;
    i := 0;
    j:= 1;
    while y <> 0 do begin
        y := y div 10;
        i := i + 1;
    end;
    for i1 := 1 to i-1 do
        j:= j * 10; 
    i := i div 2;
    ok := true;
    i1 := 0;
    while (i1 < i) and ok do begin
        i1 := i1 + 1;
        if (x div j) <> (x mod 10)
            then ok := false;
        x := x mod j div 10;
        j := j div 100;
    end;
    writeln(ok);
end.
    
