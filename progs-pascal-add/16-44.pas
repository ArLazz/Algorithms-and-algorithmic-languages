{$mode TP}
{$R+,B+,X-}
{$codepage UTF-8}
program Task_12_14(input, output);
type
    list = ^link;
    link = record
        elem: char;
        next,pred: list;
    end;
var
    f,t: text;
    l: list;
    i: integer;
procedure destroy(var l: list);
var
    p: list;
begin
    while l <> nil do begin
        p := l^.next;
        dispose(l);
        l := p;
    end;
    l:= nil;
end;
procedure read1(var f: text;var l: list);
var
    x:char;
    p:list;
begin
    while not eoln(f) do begin
        read(f,x);
        if l = nil then begin
            new(l);
            l^.elem := x;
            p := l;
        end else begin
            new (p^.next);
            p^.next^.pred := p;
            p := p^.next;
            p^.elem := x;
        end;
    end;
    l^.pred := p;
    if l <> nil then
        p^.next := nil;
    readln(f);
end;
procedure change(var l:list);
var
    p,q,q1:list;
begin
    p := l;
    while p <> nil do begin
        if p^.elem = '#' then begin
            q := p^.next;
            q1:= p;
            while p^.elem = '#' do
                p :=p^.pred;
            p := p^.pred;
            dispose(q1);
            dispose(p^.next);
            p^.next := q;
        end;
        if p^.elem <> '#' then
            p := p^.next;
    end;
end;
procedure write1(var t:text;l: list);
begin
    while l <> nil do begin
        write(t,l^.elem);
        l := l^.next;
    end;
    writeln(f);
end;
begin
    writeln('Лазарев Артур,111 группа,задача № 12.14');
    assign(f,'t1.txt');
    assign(t,'t2.txt');
    l:= nil;
    reset(f);
    rewrite(t);
    while not eof(f) do begin
        read1(f,l);
        change(l);
        for i := 1 to 10 do begin
            write(l^.elem);
            l:= l^.next;
        end;
        writeln;
        write1(t,l);
        destroy(l);
    end;
    close(f);
    close(t);
end.
