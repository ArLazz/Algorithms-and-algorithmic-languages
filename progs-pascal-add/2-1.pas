{$mode TP}
{$R+,B+,X-}
{$codepage UTF-8}
program Task_12_14(input, output);
var i:integer;
    j:char;
    
begin
    writeln('Лазарев Артур,111 группа,задача № 12.14');
    for i := 0 to 9 do begin
        for j := chr(ord('0')+i) to '9' do
            write(j);
        for j := chr(ord('0')) to chr(ord('0')+i - 1) do
            write(j);
        writeln;
    end;
end.
    
