{$mode TP}
{$R+,B+,X-}
{$codepage UTF-8}
program Task_10_16v(input, output);
    const
        n = 50;
        k = 8;
    var 
        b: packed array[1..26] of char;
        a: array[1..n] of packed array [1..k] of char;
        i, j, z: integer;
        c: char;
        ok: boolean;
begin
    writeln('Лазарев Артур,111 группа,задача № 10.16в');
    writeln('Введите массив:');
    b :='abcdefghijklmnopqrstuvwxyz';
    for i := 1 to n do
        for j := 1 to k do
            a[i, j] := ' ';
    c := ' ';
    i := 0;
    read(c);
    while c <> '.' do begin
        j := 1;
        i := i + 1;
        while (c <> ' ') and (c <> '.') do begin
            a[i,j] := c;
            read(c);
            j := j + 1;
            z := i;
        end;
        if c = ' ' then 
            while c = ' ' do
                read(c);
    end;
    for i := 1 to z do 
        if a[i] <> a[z] then begin
            ok := true;
            for j := 1 to k do
                if a[i,j] <> ' ' then 
                    if a[i,j] <> b[j] then ok := false;
            if  ok then begin
                for j := 1 to k do 
                    write(a[i,j]);
                writeln;
            end;
        end;
end.
    


