{$mode TP}
{$R+,B+,X-}
{$codepage UTF-8}
program Task_1_1;
    var a: array['a'..'z'] of integer;
        b: array['a'..'z'] of boolean;
        c, i: char;
        max: integer;
        
begin
    writeln('Лазарев Артур,111 группа,задача № 5.41');
    writeln('Введите входные данные');
    c := ' ';
    for i := 'a' to 'z' do
        a[i] := 0;
    while c <> '.' do begin
        read(c);
        for i := 'a' to 'z' do
            b[i] := true;
        while (c <> ',') and (c <> '.') do begin
            if b[c] then  begin
                a[c] := a[c] + 1;
                b[c] := false;
            end;
        read(c);
        end;
    end;
    max := 0;
    for c := 'a' to 'z' do 
        if a[c] > max then
            max := a[c];
    for c := 'a' to 'z' do 
        if a[c] = max then
            write(c, ' ');
end.
    
