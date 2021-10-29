{$mode TP}
{$R+,B+,X-}
{$codepage UTF-8}
program Task_6_34 (input, output);
    var c: char;
        sign, s,k: integer;
begin
    writeln('Лазарев Артур,111 группа,задача № 6.34');
    writeln('Введите последовательность:');
    sign := 1;
    s := 0;
    c := ' ';
    while c <> '.' do begin
        read(c);
        k := 0;
        while (c >= '0') and (c <= '9') do begin
            k := k * 10 + (ord(c) - ord('0'));
            read(c);
            end;
         s := s + k * sign;
        if c = '-' then 
            sign := -1;
        if c = '+' then 
            sign := 1;
    end;

    writeln('Значение этой суммы = ', s);
end.

