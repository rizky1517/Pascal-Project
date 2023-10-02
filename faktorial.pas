program test_faktorial;
uses crt;
function faktorial(x : integer):integer;
    var
        i : integer;
    begin
        faktorial := 1;
        for i := 1 to x do
        begin
            faktorial := faktorial * i;
        end;
    end;
var
    n : integer;
begin
    clrscr;
    write('masukan nilai yang ingin difaktorialkan : ');
    readln(n);

    writeln;
    writeln('Nilai ',n,'! adalah = ',faktorial(n));
end.
