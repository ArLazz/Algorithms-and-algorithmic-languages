{$mode TP}
{$R+,B+,X-}
{$codepage UTF-8}
program Task_16_42(input, output);
uses heaptrc;
type
    str = packed array[1..10] of char;
    list = ^link;
    link = record
        elem: str;
        next: list;
    end;
var
    f:text;
    h: integer;
    l: list;
procedure create(var l:list;var f:text);
var
    p: list;
    s: str;
    i: integer;
begin
    reset(f);
    while not eof(f) do begin
        i:= 1;
        s := '          ';
        while not eoln(f) do begin
            read(f,s[i]);
            i := i + 1;
        end;
        readln(f);
        if l = nil then begin
            h := h + 1;
            new(l);
            l^.elem := s;
            p := l;
        end else begin
            h := h + 1;
            new(p^.next);
            p := p^.next;
            p^.elem := s;
        end;
    end;
    if l <> nil then
        p^.next := l;
    l := p;
end;
procedure names(var l:list);
var
    k,i:integer;
    q: list;
begin
    writeln('Введите число');
    readln(k);
    writeln;
    while h <> 0 do begin
        for i := 1 to k - 1  do
            l := l^.next;
        q := l;
        l := l^.next;
        writeln(l^.elem);
        q^.next := l^.next;
        dispose(l);
        l:=q;
        h := h - 1;
    end;
end;
begin
    writeln('Лазарев Артур,111 группа,задача № 16.42');
    assign(f,'friends.txt');
    l:= nil;
    h := 0;
    create(l,f);
    writeln('Кол-во детей в группе ', h);
    names(l);
    close(f);
end.
