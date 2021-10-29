{$mode TP}
{$R+,B+,X-}
{$codepage UTF-8}
program Task_10_16v(input, output);
procedure degree;
const
    n =152;
    m = 500;
type
    matr = array[1..n] of integer;
var
    a: matr;
    i, j, k:integer;
begin
    for i := 1 to n do
        a[i] := 0;
    a[1] := 1;
    i := 0;
    k := 1;
    while i <> m do begin
        for  j := k downto 1 do begin
            a[j] := a[j] * 2;
            if a[j] > 9 then begin
                a[j + 1] := a[j + 1] + 1;
                a[j] := a[j] mod 10;
            end;
        end; 
    if a[k + 1] = 1 then
        k := k + 1;
    i := i + 1;
    end;
    for i := n-1 downto 1 do
         write(a[i]);
end;
procedure factorial;
const
    n = 93;
    m = 100;
type
    matr = array[1..n] of integer;
var
    a, b: matr;
    i, l, k, j, g: integer;
begin
    for i := 1 to n do begin
        a[i] := 0;
        b[i] := 0;
    end;
    b[1] := 1;
    k := 1;
    for i := 1 to m do begin
        for j := 1 to i do begin
            for g:= k downto 1 do begin
                b[g] := b[g] * j;
                if b[g] > 9 then begin
                    l := g;
                    while b[l] > 9 do begin
                        b[l + 1] := b[l + 1] + b[l] div 10;
                        b[l] := b[l] mod 10;
                        l := l + 1;
                    end;
                end;
            end;
            if b[k + 1] > 0 then
                k := k + 1;
        end;
        for k := n downto 1 do begin
            a[k] := a[k] + b[k];
            if a[k] > 9 then begin
                a[k + 1] := a[k + 1] + 1;
                a[k] := a[k] mod 10;
            end;
            b[k] := 0;
        end;
        b[1] := 1;
        k := 1;
    end;
    for i := n-1 downto 1 do
         write(a[i]);
end;    
begin
    writeln('Лазарев Артур,111 группа,задача № 10.16в');
    degree;
    writeln;
    factorial;
    writeln;
end.
    


