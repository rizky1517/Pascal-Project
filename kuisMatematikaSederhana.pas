program main;
uses crt;
var
    i, n, betul, salah, jwb, a, b : integer;
    nilai : real;
    next : string;
begin
    repeat
        clrscr;
        randomize;
        betul:=0;
        salah:=0;
        
        write('Input Jumlah Soal : '); readln(n);
        writeln;

        for i := 1 to n do
        begin
            a:=random(100);
            b:=random(100);

            write('Soal ',i, '. ',a,' + ',b, ' = ' ); readln(jwb);

            if(jwb=(a+b)) then
                betul:=betul+1
            else
                salah:=salah+1;
        end; 
        writeln;
        nilai := betul / n * 100;

        writeln('Jumlah Jawaban Benar : ', betul);
        writeln('Jumlah Jawaban Salah : ', salah);
        writeln('Nilai                : ', nilai:0:0); writeln;

        write('Ingin diulang ? [Y/N]'); readln(next);
    until (next='N') or (next='n');
    writeln('Terimakasih');
end.
