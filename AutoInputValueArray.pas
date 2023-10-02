program auto_input_array;
uses crt;
var
    b : array [1..200] of integer;
    a, i, c : integer;
begin
    clrscr;
    randomize;
    write('Masukan Jumlah Data : '); readln(a);
    writeln;

    for i:=1 to a do 
    begin
        // untuk value nilai random, bisa diubah sesuka hati
        c:=random(100);
        writeln('Input Data ke-',i,' : ',c);  b[i]:=c;
    end;
    writeln;

    for i:=1 to a do 
    begin
        write(b[i], ' ');
    end;

end.
