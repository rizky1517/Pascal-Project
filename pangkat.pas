program main;
uses crt;
function pangkat(x, y : integer):longint;
    var
        i, hasil : integer;
    begin
        hasil := 1;
        for i := 1 to y do
        begin
            hasil := hasil * x;
        end;
        pangkat := hasil;
    end;
var
    a, b : integer;
begin
    clrscr;
    write('masukan bilangan : '); readln(a);
    write('masukan pangkat  : '); readln(b);
    writeln;

    writeln('Jadi ', a,' pangkat ', b,' adalah = ',pangkat(a,b));
end.
