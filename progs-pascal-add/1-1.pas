{$mode TP}
{$R+,B+,X-}
{$codepage UTF-8}
program Task_1_1;
    var p,q,i,n:integer;
    x,e:real;
begin
    writeln('Лазарев Артур,111 группа,задача № 5.41');
    writeln('Введите входные данные');
    read(p,q,n);
    x := 0;
    e := 1;
    for i := 1 to 3 * n do begin
        if p div q = 0 then begin
            p := p * 10;
        end
        else begin
            x:=x+(p div q)*e;
            p:=p mod q;
            e := e * 0.1;
        end;
    end;
    writeln(x:8:n);
end.
    
